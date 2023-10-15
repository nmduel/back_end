@extends('layouts.admin')

@section('title')
    <title>Category Edit</title>
@endsection

@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name' => 'Category', 'key' => 'Edit'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <form action="{{ route('categories.update', ['id' => $category->id]) }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label>Tên danh mục</label>
                      <input type="text" class="form-control @error('name') is-invalid @enderror" placeholder="Nhập tên danh mục" name="name" value="{{ $category->name }}">
                      @error('name')
                        <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                    
                    <div class="form-group">
                        <label>Chọn danh mục cha</label>
                        <select class="form-control" name="parent_id">
                          <option value="0">Chọn danh mục</option>
                          {!! $htmlOption !!}
                        </select>
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

