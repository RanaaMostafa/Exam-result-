@extends("layout")

@php
    $pageName = "parent";
    $i = 0;
@endphp

@section("content")

<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>Parents</h2>
            <br>
        </div>
        <div class="pull-right">
            <a class="btn btn-success" href="{{ route('studentparent.create') }}"> Create New Parent </a>
        </div>
    </div>
</div>
<br><br>
@if ($message = Session::get('success'))
    <div class="alert alert-success">
        <p>{{ $message }}</p>
    </div>
@endif



@if (count($parents) > 0)

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
            @foreach ($parents as $oneParent)
            <tr>
                <td>{{ ++$i }}</td>
                <td>{{ $oneParent->fullName }}</td>
                <td>{{ $oneParent->email }}</td>
                <td>{{ $oneParent->telephone }}</td>
                <td>
                    <form action="{{ route('studentparent.destroy',$oneParent->id) }}" method="POST">

                        <a class="btn btn-info" href="{{ route('studentparent.show',$oneParent->id) }}">Show</a>

                        <a class="btn btn-primary" href="{{ route('studentparent.edit',$oneParent->id) }}">Edit</a>

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
        <h3>No Parent created yet .</h3>
    </div>
@endif


<script>
    function confirmDelete() {
        return confirm('Are you sure you want to delete this item?');
    }
</script>

@endsection