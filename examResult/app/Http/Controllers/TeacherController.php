<?php

namespace App\Http\Controllers;

use App\Models\Teacher;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TeacherController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $teachers = Teacher::all();
        return view("teacher.index", compact("teachers"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view("teacher.create");
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

        DB::insert("INSERT INTO teachers (`fullname`, `email`, `telephone`) VALUES (?,?,?)", [$fullName, $email, $telephone]);

        $userId = DB::getPdo()->lastInsertId();

        $password = bcrypt($request->password);
        $role = "teachers";
        $loginName = $request->loginName;

        DB::insert("INSERT INTO logins (`userId`, `loginName`, `password`, `role`) VALUES (?,?,?,?)", [$userId, $loginName, $password, $role]);
        return redirect()->route('teacher.index')
                        ->with('success',' Teacher created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Teacher $teacher)
    {
        return view('teacher.show', compact('teacher'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Teacher $teacher)
    {
        return view('teacher.edit',compact('teacher'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Teacher $teacher)
    {
        $request->validate([
            'fullName' => 'required',
            'email' => 'required',
            'telephone' => 'required',
        ]);

        $teacher->update($request->all());

        return redirect()->route('teacher.index')
                        ->with('success','Teacher updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Teacher $teacher)
    {
        $teacher->delete();

        return redirect()->route('teacher.index')
                        ->with('success','Teacher deleted successfully');
    }

    
}
