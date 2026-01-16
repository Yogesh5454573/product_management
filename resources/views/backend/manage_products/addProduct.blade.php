@extends('backend.layouts.app')

@section('content')
    <div class="container-xxl flex-grow-1 container-p-y">
        <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h5 class="mb-0">Add Product</h5>
                        <a href="{{ route('admin.adminList') }}">
                            <button class="btn btn-sm btn-primary" type="button">
                                <i class="menu-icon tf-icons ti ti-user"></i>
                                <span>Manage Products</span>
                            </button>
                        </a>
                    </div>
                    <div class="card-body">
                        <form class="custom-validation" method="POST" action="{{ route('admin.addUpdateAdmin') }}">
                            @csrf
                            <div class="mb-6">
                                <label class="form-label" for="name">Product Name<font color="red"> *</font></label>
                                <input type="text" name="name" value="{{ old('name') }}" class="form-control"
                                    id="name" placeholder="Name" />
                                @error('name')
                                    <span class="messages">
                                        <p class="text-danger error">{{ $message }}</p>
                                    </span>
                                @enderror
                            </div>
                            <div class="mb-6">
                                <label class="form-label" for="Sku">Sku <font color="red"> *</font></label>
                                <input type="text" name="sku" value="{{ old('sku') }}" class="form-control"
                                    id="description" placeholder="sku" />
                                @error('sku')
                                    <span class="messages">
                                        <p class="text-danger error">{{ $message }}</p>
                                    </span>
                                @enderror
                            </div>
                            <div class="mb-6">
                                <label class="form-label" for="price">Price <font color="red"> *</font></label>
                                <input type="text" name="price" value="{{ old('price') }}" class="form-control"
                                    id="price" placeholder="Price" />
                                @error('price')
                                    <span class="messages">
                                        <p class="text-danger error">{{ $message }}</p>
                                    </span>
                                @enderror
                            </div>
                            <div class="mb-6">
                                <label class="form-label mb-3 d-flex">Status&nbsp;<font color="red">*</font></label>
                                <div class="form-check form-check-inline">
                                    <input type="radio" name="status" value="active" id="active"
                                        {{ old('status') == 'active' ? 'checked' : '' }} class="form-check-input" checked>
                                    <label class="form-check-label" for="active">Active</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input type="radio" name="status" {{ old('status') == 'inactive' ? 'checked' : '' }}
                                        value="inactive" class="form-check-input" id="inactive">
                                    <label class="form-check-label" for="inactive">Inactive</label>
                                </div>
                                @error('status')
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
                                    <a href="{{ route('admin.adminList') }}" class="btn btn-danger waves-effect"> Cancel </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
