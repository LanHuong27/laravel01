<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;


class AdminController extends Controller
{
    public function loginAdmin()
    {
      
        if (Auth()->check()) {
            return redirect()->to('home');
        }
        return view('login');
    }
    public function registerAdmin()
    {
        return view('register');
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('admin.login');
    }
   

    public function postLoginAdmin(Request $request)
    {
        try {
            DB::beginTransaction();
           
            $remember = $request->has('remember_me') ? true : false;
            if (Auth::attempt([
                'email' => $request->email,
                'password' => $request->password
            ], $remember)) {
                DB::commit();
                return redirect()->to('home');
            }
            
            
           
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error('Message: ' . $exception->getMessage() . ' --- Line : ' . $exception->getLine());
        }
      
       

    }
}
