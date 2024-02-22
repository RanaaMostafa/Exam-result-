<?php

namespace App\Http\Controllers;

use App\Models\StudentParent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentParentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $parents = StudentParent::all();
        return view("parent.index", compact("parents"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view("parent.create");
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

        DB::insert("INSERT INTO student_parents (`fullname`, `email`, `telephone`) VALUES (?,?,?)", [$fullName, $email, $telephone]);

        $userId = DB::getPdo()->lastInsertId();

        $password = bcrypt($request->password);
        $role = "student_parents";
        $loginName = $request->loginName;

        DB::insert("INSERT INTO logins (`userId`, `loginName`, `password`, `role`) VALUES (?,?,?,?)", [$userId, $loginName, $password, $role]);
        return redirect()->route('studentparent.index')
                        ->with('success',' Parent created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(StudentParent $studentparent)
    {
        return view('parent.show',compact('studentparent'));
        // return view('parent.show', compact('studentParent'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(StudentParent $studentparent)
    {
        return view('parent.edit',compact('studentparent'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, StudentParent $studentparent)
    {
        $request->validate([
            'fullName' => 'required',
            'email' => 'required',
            'telephone' => 'required',
        ]);

        $studentparent->update($request->all());

        return redirect()->route('studentparent.index')
                        ->with('success','Parent updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(StudentParent $studentparent)
    {
        // $studentParent = StudentParent::get_id();

        $studentparent->delete();

        return redirect()->route('studentparent.index')
                        ->with('success','Parent deleted successfully');
    }
}
