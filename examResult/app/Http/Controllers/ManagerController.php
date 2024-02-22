<?php

namespace App\Http\Controllers;

use App\Models\Manager;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ManagerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $managers = Manager::all();
        return view("manager.index", compact("managers"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view("manager.create");
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

        DB::insert("INSERT INTO managers (`fullname`, `email`, `telephone`) VALUES (?,?,?)", [$fullName, $email, $telephone]);

        $userId = DB::getPdo()->lastInsertId();

        $password = bcrypt($request->password);
        $role = "managers";
        $loginName = $request->loginName;

        DB::insert("INSERT INTO logins (`userId`, `loginName`, `password`, `role`) VALUES (?,?,?,?)", [$userId, $loginName, $password, $role]);
        
        return redirect()->route('manager.index')
                        ->with('success',' Manager created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Manager $manager)
    {
        return view('manager.show', compact('manager'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Manager $manager)
    {
        return view('manager.edit',compact('manager'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Manager $manager)
    {
        $request->validate([
            'fullName' => 'required',
            'email' => 'required',
            'telephone' => 'required',
        ]);

        $manager->update($request->all());

        return redirect()->route('manager.index')
                        ->with('success','Manager updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Manager $manager)
    {
        $manager->delete();

        return redirect()->route('manager.index')
                        ->with('success','Manager deleted successfully');
    }
}
