<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function loginAdmin()
    {
        if(auth()->check())
        {
            
            return redirect()->to('homepage');
        }
        return view('login');    
    }

    public function postLoginAdmin(Request $request)
    {
        $remember = $request->has('remember_me') ? true : false;
        if(auth()->attempt([
            'email' => $request->email,
            'password' => $request->password
        ], $remember))
        {
            return redirect()->to('homepage');
        }
    }

    public function logout(Request $request): RedirectResponse
{
    Auth::logout();
 
    return redirect('/');
}
}
