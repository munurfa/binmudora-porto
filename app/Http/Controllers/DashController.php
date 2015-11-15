<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\User;
use Auth;
use Illuminate\Http\Request;
use Validator;


class DashController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        return view('dash.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
   
    public function edit()
    {
        
        return view('dash.edit');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $r)
    {
         if ($r->password != "") {
              $this->validate($r,[
           'username' => 'required|max:255',
            'password' => 'required|confirmed|min:6', ]);
              $id = Auth::user()->id;
             $user = User::find($id);
            $data['name'] = Auth::user()->name;
            $data['username'] = $r->username;
            $data['password'] = $r->password;
           
              $user->update([
                    'name' => $data['name'],
                    'username' => $r->username,
                    'password' => bcrypt($data['password'])
                ]);
              return redirect('dashboard');
         }else{
            return redirect('dashboard');
         }

        
    }


}
