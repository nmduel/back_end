@extends('layouts.admin')

@section('title')
    <title>Sliders List</title>
@endsection

@section('css')
  <link rel="stylesheet" href="{{ asset('admins/slider/index/index.css') }}">
@endsection

@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name' => 'Sliders', 'key' => 'Add'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <a href="{{ route('sliders.create') }}" class="btn btn-success float-right m-2">Add</a>
            </div>
            <div class="col-md-12">
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Tên Slider</th>
                    <th scope="col">Description</th>
                    <th scope="col">Hình ảnh</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($sliders as $slider)
                    <tr>
                      <th scope="row">{{ $slider->id }}</th>
                      <td>{{ $slider->name }}</td>
                      <td>{{ $slider->description }}</td>
                      <td>
                        <img class="image_slider_150_100" src="{{ $slider->image_path }}" alt="">
                      </td>
                      <td>
                        <a href="{{ route('sliders.edit', ['id' => $slider->id]) }}" class="btn btn-default">Edit</a>
                        <a href="" data-url="{{ route('sliders.delete', ['id' => $slider->id]) }}" class="btn btn-danger action_delete">Delete</a>
                      </td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
            <div class="col-md-12 ">
              {{ $sliders->links('pagination::bootstrap-4') }}
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
  <script src="{{ asset('admins/slider/index/index.js') }}"></script>
@endsection
