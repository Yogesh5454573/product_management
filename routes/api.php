<?php
use Illuminate\Http\Request;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\CartController;


Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);

    Route::post('/cart/items', [CartController::class, 'store']);
    Route::get('/cart', [CartController::class, 'show']);
    Route::patch('/cart/items/{product_id}', [CartController::class, 'update']);
    Route::delete('/cart/items/{product_id}', [CartController::class, 'destroy']);
    Route::post('/cart/checkout', [CartController::class, 'checkout']);
});
// Route::middleware('auth:sanctum')->get('/auth-check', function (Request $request) {
//     return response()->json($request->user());
// });
Route::get('/test', function() {
    return response()->json(['message' => 'Laravel is reached!']);
});