<?php

namespace App\Http\Controllers\backend;

use App\Models\Product;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Session;
use App\Http\Requests\Admin\ProductRequest;

class ProductController extends Controller
{
    public function productList(Request $request)
    {
        try {
            if ($request->ajax()) {

                $productList = Product::query();

                return Datatables::of($productList)
                    ->addIndexColumn()
                    ->editColumn('is_active', function ($product) {
                        $checked = $product->is_active ? 'checked' : '';
                        return '<div class="d-flex justify-content-center align-items-center">
                                    <div class="form-check form-switch mb-0">
                                        <input class="form-check-input status-toggle big-switch" 
                                            type="checkbox" 
                                            data-token="' . $product->token . '" 
                                            ' . $checked . ' 
                                            style="width: 45px; height: 22px; cursor: pointer;">
                                    </div>
                                </div>';
                    })
                    ->addColumn('action', function ($productList) {

                        $edit = '<a href="/admin/editProduct/' . $productList->token . '"><button type="button" class="btn btn-sm btn-success">Edit</button></a>';
                        $delete = '<form method="POST" action="/admin/deleteProduct/' . $productList->token . '" accept-charset="UTF-8" class="delete" style="display:inline">
                    ' . csrf_field() . '
                    <input name="_method" value="DELETE" type="hidden">
                    <button type="button" class="btn btn-danger btn-sm product_delete_alert">Delete</button></form>';

                        return $edit . ' ' . $delete;
                    })
                    ->rawColumns(['is_active', 'action'])
                    ->make(true);
            }
        } catch (\Exception $e) {
            info("Error in productList(): " . $e->getMessage());
            Session::flash("error", "There was some error, please try again later.");
        }
        return view('backend.manage_products.productList');
    }

    public function addProduct()
    {
        return view('backend.manage_products.addProduct');
    }

    public function addUpdateProduct(ProductRequest $request, $token = false)
    {
        try {
            if ($request->method() == "PUT") {
                $updateProduct = Product::where(['token' => $token])->first();
                $post = $request->all();
                $post['id'] = $updateProduct->id;
                $updateProduct->update($post);
                Session::flash("success", "Product details have been successfully updated.");
            } else {
                $post = $request->all();
                $post['token'] = strtoupper((string) Str::uuid());
                Product::create($post);
                Session::flash("success", "Product details have been successfully created.");
            }
        } catch (\Exception $e) {
            info("Error in addUpdateProduct(): " . $e->getMessage());
            Session::flash("error", "There was some error, please try again later.");
        }
        return redirect()->route('admin.productList');
    }

    public function editProduct($token)
    {
        if ($token) {
            $productData = Product::where(['token' => $token])->first();
            if ($productData) {
                return view('backend.manage_products.editProduct', ['productData' => $productData]);
            } else {
                return redirect()->route('admin.productList')->with(['error' => 'Product Details not found, please try again later.']);
            }
        } else {
            Session::flash("error", "There was some error, please try again later.");
        }
    }

    public function deleteProduct($token)
    {
        Product::where(['token' => $token])->first()->delete();
        Session::flash("success", "Product have been successfully deleted.");
        return redirect()->route('admin.productList');
    }

    public function updateProductStatus(Request $request)
    {
        try {
            $request->validate([
                'token' => 'required|exists:products,token',
                'is_active' => 'required|boolean'
            ]);
            $product = Product::where('token', $request->token)->firstOrFail();
            $product->is_active = $request->is_active;
            $product->save();
            return response()->json([
                'status' => 'success',
                'message' => 'Product status updated successfully!'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage()
            ], 500);
        }
    }
}
