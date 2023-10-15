@extends('layouts.admin')

@section('title')
    <title>Setting List</title>
@endsection

@section('content')
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @include('partials.content-header', ['name' => 'Settings', 'key' => 'List'])
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
              <!-- Example split danger button -->
              <div class="btn-group float-right pr-5">
                <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Add Settings
                </button>
                <div class="dropdown-menu">
                  @can('setting-add')
                  <a class="dropdown-item" href="{{ route('settings.create') . "?type=Text" }}">Text</a>
                  <a class="dropdown-item" href="{{ route('settings.create') . "?type=Textarea" }}">Textarea</a>
                  @endcan
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Config key</th>
                    <th scope="col">Config value</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($settings as $setting)
                    <tr>
                      <th scope="row">{{ $setting->id }}</th>
                      <td>{{ $setting->config_key }}</td>
                      <td>{{ $setting->config_value }}</td>
                      <td>
                        @can('setting-edit')
                        <a href="{{ route('settings.edit', ['id' => $setting->id]) . '?type=' . $setting->type }}" class="btn btn-default">Edit</a>
                        @endcan
                        @can('setting-delete')
                        <a href="" data-url="{{ route('settings.delete', ['id' => $setting->id]) }}" class="btn btn-danger action_delete">Delete</a>
                        @endcan
                      </td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
            <div class="col-md-12 ">
              {{ $settings->links('pagination::bootstrap-4') }}
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