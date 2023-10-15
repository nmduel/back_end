  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/homepage" class="brand-link">
      <img src="{{ asset('adminlte/dist/img/icon.jpg') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Admin Setting</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('adminlte/dist/img/icon2.jpg') }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Admin</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          @can('category-list')
          <li class="nav-item">
            <a href="{{ route('categories.index') }}" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Categories(Danh sách danh mục)
              </p>
            </a>
          </li>
          @endcan
          @can('menu-list')
          <li class="nav-item">
            <a href="{{ route('menus.index') }}" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Menus(Danh sách menu)
              </p>
            </a>
          </li>
          @endcan
          @can('product-list')
          <li class="nav-item">
            <a href="{{ route('products.index') }}" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Products(Danh sách sản phẩm)
              </p>
            </a>
          </li>
          @endcan
          
          @can('slider-list')
          <li class="nav-item">
            <a href="{{ route('sliders.index') }}" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Slider(Danh sách slider)
              </p>
            </a>
          </li>
          @endcan
          
          @can('setting-list')
          <li class="nav-item">
            <a href="{{ route('settings.index') }}" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Settings(Danh sách setting)
              </p>
            </a>
          </li>
          @endcan
          <li class="nav-item">
            <a href="{{ route('users.index') }}" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Users(Danh sách người dùng)
              </p>
            </a>
          </li> 
          <li class="nav-item">
            <a href="{{ route('roles.index') }}" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Roles(Danh sách vai trò)
              </p>
            </a>
          </li>
          
            <li class="nav-item">
              <a href="{{ route('permissions.create') }}" class="nav-link">
                <i class="nav-icon fas fa-th"></i>
                <p>
                  Permission(Tạo hành động cho module)
                </p>
              </a>
            </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>