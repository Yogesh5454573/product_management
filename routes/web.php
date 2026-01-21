<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\backend\Auth\LoginController;
use App\Http\Controllers\backend\{ AdminController, HomeController, ProductController };

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Route::get('/', [LoginController::class, 'showLoginForm']);
    Route::get('login', [LoginController::class, 'showLoginForm'])->name('login');
    Route::post('adminlogin', [LoginController::class, 'login'])->name('adminlogin');
    Route::post('logout', [LoginController::class, 'logout'])->name('logout');

    Route::group(['middleware' => ['auth:admin', 'redirect_to_dashboard']], function () {

        // ========== Start Dashboard =========
        Route::get('/dashboard', [HomeController::class, 'index'])->name('admin.dashboard');
        // ========== End Dashboard ===========

        // ========= Start Manage Admins  =========
        Route::controller(AdminController::class)
            ->name('admin.')
            ->group(function () {
                Route::get('/adminList',  'adminList')->name('adminList');
                Route::get('/addAdmin',  'addAdmin')->name('addAdmin');
                Route::get('/editAdmin/{token}',  'editAdmin')->name('editAdmin');
                Route::post('/addUpdateAdmin/{token?}',  'addUpdateAdmin')->name('addUpdateAdmin');
                Route::put('/addUpdateAdmin/{token?}',  'addUpdateAdmin')->name('addUpdateAdmin');
                Route::delete('/deleteAdmin/{token}',  'deleteAdmin')->name('deleteAdmin');
            });
        // ========= End Manage Admins  =========

        // ========= Start Manage Products =========
        Route::controller(ProductController::class)
            ->name('admin.')
            ->group(function () {
                Route::get('/productList',  'productList')->name('productList');
                Route::get('/addProduct',  'addProduct')->name('addProduct');
                Route::get('/editProduct/{token}',  'editProduct')->name('editProduct');
                Route::post('/addUpdateProduct/{token?}',  'addUpdateProduct')->name('addUpdateProduct');
                Route::put('/addUpdateProduct/{token?}',  'addUpdateProduct')->name('addUpdateProduct');
                Route::delete('/deleteProduct/{token}',  'deleteProduct')->name('deleteProduct');
                Route::post('/updateProductStatus',  'updateProductStatus')->name('updateProductStatus');
            });
        // ========= End Manage Products =========

    });
});
