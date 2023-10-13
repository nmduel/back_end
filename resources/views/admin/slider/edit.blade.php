@extends('layouts.admin')

@section('title')
    <title>Sliders Edit</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('admins/slider/add/add.css') }}">
@endsection

@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name' => 'Sliders', 'key' => 'Edit'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <form action="{{ route('sliders.update', ['id' => $slider->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label>Tên slider</label>
                      <input type="text"
                            @error('name') is-invalid @enderror
                            class="form-control" 
                            placeholder="Nhập tên slider" 
                            name="name"
                            value="{{ $slider->name }}"
                        >
                        @error('name')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    
                    <div class="form-group">
                        <label>Mô tả slider</label>
                        <textarea 
                                class="form-control" 
                                @error('description') is-invalid @enderror
                                name="description" rows="4">{{ $slider->description }}</textarea>
                        @error('description')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label>Hình ảnh</label>
                      <input type="file" @error('image_path') is-invalid @enderror class="form-control-file" name="image_path">
                        <div class="col-md-4">
                            <div class="row">
                                <img class="image_slider" src="{{ $slider->image_path }}" alt="">
                            </div>
                        </div>
                        @error('image_path')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror        
                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection
