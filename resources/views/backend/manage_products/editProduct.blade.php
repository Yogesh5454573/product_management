@extends('backend.layouts.app')

@section('content')
    <div class="container-xxl flex-grow-1 container-p-y">
        <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="mb-0">Edit Product</h5>
                        <a href="{{ route('admin.productList') }}">
                            <button class="btn btn-sm btn-primary" type="button">
                                <i class="menu-icon tf-icons ti ti-user"></i>
                                <span>Manage Products</span>
                            </button>
                        </a>
                    </div>
                    <div class="card-body">
                        <form class="custom-validation" method="POST" action="{{ route('admin.addUpdateProduct', $productData->token) }}">
                            @method('PUT')
                            @csrf
                            <div class="mb-6">
                                <label class="form-label" for="name">Product Name<font color="red"> *</font></label>
                                <input type="text" name="name" value="{{ old('name', $productData->name) }}" class="form-control" id="name"
                                    placeholder="Name" />
                                @error('name')
                                    <span class="messages">
                                        <p class="text-danger error">{{ $message }}</p>
                                    </span>
                                @enderror
                            </div>
                            <div class="mb-6">
                                <label class="form-label" for="Sku">Sku <font color="red"> *</font></label>
                                <input type="text" name="sku" value="{{ old('sku', $productData->sku) }}" class="form-control" id="description"
                                    placeholder="sku" />
                                @error('sku')
                                    <span class="messages">
                                        <p class="text-danger error">{{ $message }}</p>
                                    </span>
                                @enderror
                            </div>
                            <div class="mb-6">
                                <label class="form-label" for="price">Price <font color="red"> *</font></label>
                                <input type="text" name="price" value="{{ old('price', $productData->price) }}" class="form-control" id="price"
                                    placeholder="Price" />
                                @error('price')
                                    <span class="messages">
                                        <p class="text-danger error">{{ $message }}</p>
                                    </span>
                                @enderror
                            </div>
                            <div class="mb-6">
                                <label class="form-label" for="stock">Stock <font color="red"> *</font></label>
                                <input type="text" name="stock" value="{{ old('stock', $productData->stock) }}" class="form-control" id="stock"
                                    placeholder="stock" />
                                @error('stock')
                                    <span class="messages">
                                        <p class="text-danger error">{{ $message }}</p>
                                    </span>
                                @enderror
                            </div>
                            <div class="mb-0">
                                <div>
                                    <button type="submit" class="btn btn-primary waves-effect waves-light me-1">
                                        Submit
                                    </button>
                                    <a href="{{ route('admin.productList') }}" class="btn btn-danger waves-effect"> Cancel
                                    </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection