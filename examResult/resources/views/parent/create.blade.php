@extends("layout")

@php
    $pageName = "parent";
@endphp

@section("content")

<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>Parents</h2>
            <br>
        </div>
        <div class="pull-right">
            <a class="btn btn-success" href="{{ route('studentparent.index') }}"> Back </a>
        </div>
    </div>
</div>
@if ($errors->any())
    <div class="alert alert-danger">
        <strong>Whoops!</strong> There were some problems with your input.<br><br>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<br><br>
<form action="{{ route('studentparent.store') }}" method="POST">
    @csrf
    <div class="row mb-3" style="margin-top: 50px;">
        <label for="fullName" class="col-sm-2 col-form-label">Full Name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="fullName" name="fullName">
        </div>
    </div>
    <div class="row mb-3" style="margin-top: 50px;">
        <label for="loginName" class="col-sm-2 col-form-label">Login Name</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="loginName" name="loginName">
        </div>
    </div>
    <div class="row mb-3">
        <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
        <div class="col-sm-10">
            <input type="email" name="email" class="form-control" id="inputEmail3">
        </div>
    </div>
    <div class="row mb-3" style="margin-top: 50px;">
        <label for="telephone" class="col-sm-2 col-form-label">Telephone</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="telephone" name="telephone">
        </div>
    </div>
    <div class="row mb-3">
        <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
        <div class="col-sm-10">
            <input type="password" name="password" class="form-control" id="inputPassword3">
        </div>
    </div>
    
    <button type="submit" class="btn btn-primary">Create Parent</button>
</form>


@endsection