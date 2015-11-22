<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Session;

class LogController extends Controller
{
    public function getLogin()
    {
        return view('auth.login');
    }
    public function postLogin(Request $r)
    {
        $this->validate($r,[
            'username'=>'required', 
            'password' => 'required']);
        $username= $r->username;
        $password = $r->password;
       

        if (Auth::attempt(['username' => $username, 'password' => $password])) {
            
              return redirect()->intended('dashboard');
       
        } 
        $gagal = Session::flash('gagal', 'Invalid Username and Password');
        return redirect()->intended('auth/login')->with($gagal);
    }
    public function postLogout(Request $r)
    {
        Auth::logout();
        return redirect()->intended('auth/login');
    }
}
