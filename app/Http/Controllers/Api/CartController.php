<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\AddItemRequest;
use App\Http\Requests\Api\UpdateItemRequest;
use App\Models\Cart;
use App\Models\Product;
use App\Traits\ApiResponse;
use Illuminate\Support\Facades\DB;

class CartController extends Controller
{
    use ApiResponse;

    public function __construct()
    {
        $this->middleware('auth:sanctum');
    }

    private function cart()
    {
        return Cart::firstOrCreate([
            'user_id' => auth()->id()
        ]);
    }

    // POST /api/cart/items
    public function store(AddItemRequest $request)
    {
        \Log::info($request->all()); // log all incoming data

        $cart = $this->cart();
        $product = Product::where('is_active', 1)->findOrFail($request->product_id);

        $item = $cart->items()->updateOrCreate(
            ['product_id' => $product->id],
            [
                'qty' => DB::raw('qty + ' . $request->qty),
                'price_at_time' => $product->price
            ]
        );

        return $this->success($item, 'Item added', 201);
    }


    // GET /api/cart
    public function show()
    {
        $cart = Cart::with('items.product')
            ->where('user_id', auth()->id())
            ->first();

        if (!$cart) {
            return $this->success(['items' => [], 'total' => 0]);
        }

        $total = $cart->items->sum(
            fn($i) => $i->qty * $i->price_at_time
        );

        return $this->success([
            'items' => $cart->items,
            'total' => $total
        ]);
    }

    // PATCH /api/cart/items/{product_id}
    public function update(UpdateItemRequest $request, $product_id)
    {
        $item = $this->cart()->items()
            ->where('product_id', $product_id)
            ->firstOrFail();

        $item->update(['qty' => $request->qty]);

        return $this->success($item, 'Quantity updated');
    }

    // DELETE /api/cart/items/{product_id}
    public function destroy($product_id)
    {
        $this->cart()->items()
            ->where('product_id', $product_id)
            ->delete();

        return $this->success(null, 'Item removed');
    }

    // POST /api/cart/checkout
    public function checkout()
    {
        $cart = Cart::with('items')->where('user_id', auth()->id())->first();

        if (!$cart || $cart->items->isEmpty()) {
            return $this->error('Cart is empty', 422);
        }

        DB::transaction(function () use ($cart) {
            $cart->items()->delete();
        });

        return $this->success(null, 'Checkout successful');
    }
}
