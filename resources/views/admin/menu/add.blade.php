@extends('layouts.admin')

@section('title')
    <title>Menus Add</title>
@endsection

@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name' => 'Menus', 'key' => 'Add'])
    <!-- /.content-header -->


    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <form action="{{ route('menus.store') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label>Tên menu</label>
                      <input type="text" class="form-control @error('name') is-invalid @enderror" placeholder="Nhập menus cha" name="name">
                      @error('name')
                        <div class="alert alert-danger">{{ $message }}</div>
                      @enderror
                    </div>
                    
                    <div class="form-group">
                        <label>Chọn menu cha</label>
                        <select class="form-control" name="parent_id">
                          <option value="0">Chọn menu</option>
                          {!! $optionSelect !!}
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

