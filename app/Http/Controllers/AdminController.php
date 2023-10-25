<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

use function Laravel\Prompts\alert;
$baseUrl = config('app.base_url');

class AdminController extends Controller
{
    

    public function loginAdmin()
    {
        if(auth()->check())
        {
            return redirect()->to('/');
        }
        return view('login');    
    }

    public function postLoginAdmin(Request $request)
    {
        $baseUrl = config('app.base_url');
        $credentials = $request->only('email', 'password');

        $remember = $request->has('remember_me') ? true : false;
        if (auth()->attempt([
            'email' => $request->email,
            'password' => $request->password
        ], $remember, $credentials)) {
            return redirect()->to('/');
        } else {
            // Hiển thị thông báo lỗi khi xác thực không thành công
            echo "<script type='text/javascript'>
                alert('Thông tin đăng nhập không chính xác.');
            </script>";
            return view('login');
        }
    }

    public function logout(Request $request): RedirectResponse
    {
        $baseUrl = config('app.base_url');
        Auth::logout();
        return redirect()->to($baseUrl);
    }
}
