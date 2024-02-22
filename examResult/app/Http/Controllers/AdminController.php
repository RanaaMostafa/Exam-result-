<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Models\Login;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $admins = Admin::all();
        return view("admin.index", compact("admins"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view("admin.create");
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'fullName' => 'required',
            'loginName' => 'required',
            'email' => 'required',
            'telephone' => 'required',
            'password' => 'required',
        ]);
        $fullName = $request->fullName;
        $email = $request->email;
        $telephone = $request->telephone;
        // $userTable = $request->role;

        DB::insert("INSERT INTO admins (`fullname`, `email`, `telephone`) VALUES (?,?,?)", [$fullName, $email, $telephone]);

        $userId = DB::getPdo()->lastInsertId();

        $password = bcrypt($request->password);
        $role = "admins";
        $loginName = $request->loginName;

        DB::insert("INSERT INTO logins (`userId`, `loginName`, `password`, `role`) VALUES (?,?,?,?)", [$userId, $loginName, $password, $role]);
        return redirect()->route('admin.index')
                        ->with('success',' Admin created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Admin $admin)
    {
        // $logins = Login::all();
        return view('admin.show', compact('admin'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Admin $admin)
    {
        // $login = Login::all();
        return view('admin.edit',compact('admin'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Admin $admin)
    {
        $request->validate([
            'fullName' => 'required',
            'email' => 'required',
            'telephone' => 'required',
        ]);

        $admin->update($request->all());

        return redirect()->route('admin.index')
                        ->with('success','Admin updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Admin $admin)
    {
        $admin->delete();

        return redirect()->route('admin.index')
                        ->with('success','Admin deleted successfully');
    }
}
