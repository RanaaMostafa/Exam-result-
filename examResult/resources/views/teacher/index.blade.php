@extends("layout")

@php
    $pageName = "teacher";
    $i = 0;
@endphp

@section("content")

<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>teacher</h2>
            <br>
        </div>
        <div class="pull-right">
            <a class="btn btn-success" href="{{ route('teacher.create') }}"> Create New Teacher </a>
        </div>
    </div>
</div>
<br><br>
@if ($message = Session::get('success'))
    <div class="alert alert-success">
        <p>{{ $message }}</p>
    </div>
@endif



@if (count($teachers) > 0)

    <table class="table table-striped" style="width: 85%; margin: 0 auto;">
        <thead>
            <tr>
                <th>No</th>
                <th>Full name</th>
                <th>Email</th>
                <th>Telephone</th>
                <th width="280px">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($teachers as $oneTeacher)
            <tr>
                <td>{{ ++$i }}</td>
                <td>{{ $oneTeacher->fullName }}</td>
                <td>{{ $oneTeacher->email }}</td>
                <td>{{ $oneTeacher->telephone }}</td>
                <td>
                    <form action="{{ route('teacher.destroy',$oneTeacher->id) }}" method="POST">

                        <a class="btn btn-info" href="{{ route('teacher.show',$oneTeacher->id) }}">Show</a>

                        <a class="btn btn-primary" href="{{ route('teacher.edit',$oneTeacher->id) }}">Edit</a>

                        @csrf
                        @method('DELETE')
        
                        <button type="submit" class="btn btn-danger" onclick="return confirmDelete()">Delete</button>
                        
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
@else
    <div class="pull-left alert alert-success">
        <h3>No Teacher created yet .</h3>
    </div>
@endif


<script>
    function confirmDelete() {
        return confirm('Are you sure you want to delete this item?');
    }
</script>
@endsection