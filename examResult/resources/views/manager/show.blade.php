@extends("layout")

@php
    $pageName = "manager";
@endphp

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Show Manager</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('manager.index') }}">Back</a>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong> Full Name:</strong>
                {{ $manager->fullName }}
            </div>
        </div>
        {{-- <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong> Login Name:</strong>
                {{ $logins->loginName}}
            </div>
        </div> --}}
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong> Telephone :</strong>
                {{ $manager->telephone}}
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong> Email:</strong>
                {{ $manager->email }}
            </div>
        </div>
        {{-- <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong> Password:</strong>
                {{ $logins->password }}
            </div>
        </div> --}}
    </div>
@endsection