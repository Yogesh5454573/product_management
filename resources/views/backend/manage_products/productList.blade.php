@extends('backend.layouts.app')

@section('content')
    <div class="container-xxl flex-grow-1 container-p-y">
        @if (Session::has('success'))
            <div class="alert alert-success alert-dismissible" role="alert">
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                <strong>Success!</strong> {{ Session::get('success') }}
            </div>
        @endif
        @if (Session::has('error'))
            <div class="alert alert-danger alert-dismissible" role="alert">
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                <strong>Error!</strong> {{ Session::get('error') }}
            </div>
        @endif
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="row">
                        <div class="card-header  col-md-6 col-sm-6">
                            <h5 class="card-title mb-0">Manage Products</h5>
                        </div>
                        <div class="card-header  col-md-6 col-sm-6 d-grid d-md-flex justify-content-md-end">
                            <a href="{{ route('admin.addProduct') }}">
                                <button class="btn btn-sm btn-primary" type="button">
                                    <i class="menu-icon tf-icons ti ti-plus"></i>
                                    <span>Add Product
                                </button>
                            </a>
                        </div>
                    </div>
                    <div class="card-datatable table-responsive">
                        <table class="datatables-users table" id="data-table">
                            <thead class="border-top">
                                <tr>
                                    <th>No</th>
                                    <th>Name</th>
                                    <th>Sku</th>
                                    <th>Price</th>
                                    <th>Stock</th>
                                    <th>Is Active</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('custom_css')
    <link rel="stylesheet" href="{{ asset('backend/assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css') }}" />
    <link rel="stylesheet"
        href="{{ asset('backend/assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css') }}" />
    <link rel="stylesheet" href="{{ asset('backend/assets/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css') }}" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <style>
        #data-table th:nth-child(6) {
            text-align: center;
        }

        .form-check.form-switch {
            padding-left: 0 !important;
            display: flex;
            justify-content: center;
        }

        .status-toggle {
            margin-left: 0 !important;
        }
    </style>
@endsection

@section('custom_js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="{{ asset('backend/assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js') }}"></script>
    <script type="text/javascript">
        $(function () {

            var table = $('#data-table').DataTable({
                processing: true,
                serverSide: true,
                ajax: "{{ route('admin.productList') }}",
                columns: [{
                    data: 'id',
                    render: function (data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                {
                    data: 'name',
                    name: 'name'
                },
                {
                    data: 'sku',
                    name: 'sku'
                },
                {
                    data: 'price',
                    name: 'price'
                },
                {
                    data: 'stock',
                    name: 'stock'
                },
                {
                    data: 'is_active',
                    name: 'is_active'
                },
                {
                    data: 'action',
                    name: 'action',
                    orderable: false,
                    searchable: false
                },
                ]
            });
            $(document).on('click', '.status-toggle', function (e) {
                e.preventDefault();

                let checkbox = $(this);
                let token = checkbox.data('token');
                let newState = checkbox.is(':checked') ? 1 : 0;
                let currentState = !newState;

                Swal.fire({
                    title: "Change Status?",
                    text: "Are you sure you want to " + (newState ? "Activate" : "Deactivate") + " this product?",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#3085d6",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "Yes, change it!"
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url: "{{ route('admin.updateProductStatus') }}",
                            method: "POST",
                            data: {
                                _token: "{{ csrf_token() }}",
                                token: token,
                                is_active: newState
                            },
                            success: function (response) {
                                checkbox.prop('checked', newState);
                                Swal.fire("Updated!", "Status has been changed.", "success");
                            },
                            error: function () {
                                Swal.fire("Error", "Something went wrong.", "error");
                                checkbox.prop('checked', currentState);
                            }
                        });
                    } else {
                        checkbox.prop('checked', currentState);
                    }
                });
            });

        });

        $(document).on("click", ".product_delete_alert", function (e) {
            e.preventDefault();
            let form = $(this).closest('form');

            Swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this product!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#ea5455",
                cancelButtonColor: "#82868b",
                confirmButtonText: "Yes, delete it!",
                customClass: {
                    confirmButton: 'btn btn-primary me-1',
                    cancelButton: 'btn btn-label-secondary'
                },
                buttonsStyling: false
            }).then((result) => {
                if (result.isConfirmed) {
                    form.submit();
                }
            });
        });
    </script>
@endsection