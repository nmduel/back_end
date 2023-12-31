@extends('layouts.admin')

@section('title')
    <title>Product List</title>
@endsection

@section('css')
  <link rel="stylesheet" href="{{ asset('admins/product/index/list.css') }}">
@endsection

@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name' => 'Products', 'key' => 'List'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
            {{-- @can('product-add') --}}
            <div class="col-md-12">
              <a href="{{ route('products.create') }}" class="btn btn-success float-right m-2">Add</a>
            </div>
            {{-- @endcan --}}
          
            <div class="col-md-12">
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Tên sản phẩm</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Hình ảnh</th>
                    <th scope="col">Danh mục</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($product as $productItem)
                    <tr>
                      <th scope="row">{{ $productItem->id }}</th>
                      <td>{{ $productItem->name }}</td>
                      <td>{{ number_format($productItem->price) }}</td>
                      <td><img class="product_image_150_100" src="{{ $productItem->feature_image_path }}" alt=""></td>
                      <td>{{ optional($productItem->category)->name }}</td>
                      <td>
                        {{-- @can('product-edit') --}}
                        <a href="{{ route('products.edit', ['id' => $productItem->id]) }}" class="btn btn-default">Edit</a>
                        {{-- @endcan
                        @can('product-delete') --}}
                        <a href="" 
                              data-url="{{ route('products.delete', ['id' => $productItem->id]) }}"
                              class="btn btn-danger action_delete">Delete</a>
                        {{-- @endcan --}}
                      </td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
            <div class="col-md-12 ">
              {{ $product->links('pagination::bootstrap-4') }}
            </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection

@section('js')
  <script src="{{ asset('vendors/sweetAlert2/sweetalert2@11.js') }}"></script>
  <script src="{{ asset('vendors/alert/delete.js') }}"></script>
@endsection