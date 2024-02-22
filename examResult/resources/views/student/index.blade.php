@extends("layout")

@php
    $pageName = "student";
    $i = 0;
@endphp

@section("content")

<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>Students</h2>
            <br>
        </div>
        <div class="pull-right">
            <a class="btn btn-success" href="{{ route('student.create') }}"> Create New Student </a>
        </div>
    </div>
</div>
<br><br>
@if ($message = Session::get('success'))
    <div class="alert alert-success">
        <p>{{ $message }}</p>
    </div>
@endif



@if (count($students) > 0)

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
            @foreach ($students as $oneStudent)
            <tr>
                <td>{{ ++$i }}</td>
                <td>{{ $oneStudent->fullName }}</td>
                <td>{{ $oneStudent->email }}</td>
                <td>{{ $oneStudent->telephone }}</td>
                <td>
                    <form action="{{ route('student.destroy',$oneStudent->id) }}" method="POST">

                        <a class="btn btn-info" href="{{ route('student.show',$oneStudent->id) }}">Show</a>

                        <a class="btn btn-primary" href="{{ route('student.edit',$oneStudent->id) }}">Edit</a>

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
        <h3>No Student created yet .</h3>
    </div>
@endif


<script>
    function confirmDelete() {
        return confirm('Are you sure you want to delete this item?');
    }
</script>

@endsection