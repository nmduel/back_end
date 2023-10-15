@extends('layouts.admin')

@section('title')
    <title>Roles Add</title>
@endsection

@section('css')
    <link rel="stylesheet" href="{{ asset('admins/role/add/add.css') }}">
@endsection

@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name' => 'Roles', 'key' => 'Add'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
            <form action="{{ route('roles.store') }}" method="POST" enctype="multipart/form-data" style="width: 100%;">
                <div class="col-md-12">
                    @csrf
                    <div class="form-group">
                        <label>Tên vai trò</label>
                        <input 
                            type="text"
                            class="form-control @error('name') is-invalid @enderror" 
                            placeholder="Nhập tên vai trò" 
                            name="name"
                            value="{{ old('name') }}"
                        >
                        @error('name')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    
                    <div class="form-group">
                        <label>Mô tả vai trò</label>
                        <textarea 
                                class="form-control" 
                                name="display_name @error('display_name') is-invalid @enderror" rows="4"
                                placeholder="Nhập mô tả vai trò"
                        >{{ old('display_name') }}</textarea>
                        @error('display_name')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-12">
                            <label>
                                <input type="checkbox" class="checkall">
                                Check All
                            </label>
                        </div>
                        @foreach ($permissionsParent as $permissionsParentItem)
                            <div class="card border-primary mb-3 col-md-12">
                                <div class="card-header">
                                    <label>
                                        <input type="checkbox" value="" class="checkbox_wrapper">
                                    </label>
                                    Module {{ $permissionsParentItem->name }}
                                </div>
                                <div class="row">
                                    @foreach ($permissionsParentItem->permissionsChildren as $permissionsChildrenItem)
                                        <div class="card-body text-primary col-md-3">
                                            <h5 class="card-title">
                                                <label>
                                                    <input type="checkbox" class="checkbox_children" name="permission_id[]" value="{{ $permissionsChildrenItem->id }}">
                                                </label>
                                                {{ $permissionsChildrenItem->name }}
                                            </h5>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection

@section('js')
    <script src="{{ asset('admins/role/add/add.js') }}"></script>
@endsection