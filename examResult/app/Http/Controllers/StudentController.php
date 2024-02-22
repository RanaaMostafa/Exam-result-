<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $students = Student::all();
        return view("student.index", compact("students"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view("student.create");
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

        DB::insert("INSERT INTO students (`fullname`, `email`, `telephone`) VALUES (?,?,?)", [$fullName, $email, $telephone]);

        $userId = DB::getPdo()->lastInsertId();

        $password = bcrypt($request->password);
        $role = "students";
        $loginName = $request->loginName;

        DB::insert("INSERT INTO logins (`userId`, `loginName`, `password`, `role`) VALUES (?,?,?,?)", [$userId, $loginName, $password, $role]);
        return redirect()->route('student.index')
                        ->with('success',' Student created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Student $student)
    {
        return view('student.show', compact('student'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Student $student)
    {
        return view('student.edit',compact('student'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Student $student)
    {
        $request->validate([
            'fullName' => 'required',
            'email' => 'required',
            'telephone' => 'required',
        ]);

        $student->update($request->all());

        return redirect()->route('student.index')
                        ->with('success','Student updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Student $student)
    {
        $student->delete();

        return redirect()->route('student.index')
                        ->with('success','Student deleted successfully');
    }
}
