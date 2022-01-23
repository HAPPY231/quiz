@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="w-80 text-black">
        Zdobyte punkty: {{$punkty}}<br>
        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">Miejsce</th>
                <th scope="col">Nazwa</th>
                <th scope="col">Punkty</th>
            </tr>
            </thead>
            <tbody>
            <?php
                $miejsce=1;
            ?>
            @foreach($ranking as $r)
                <tr>
                    <th scope="row">{{$miejsce }}</th>
                    <td>{{$r->Name }}</td>
                    <td>{{ $r->points }}</td>
                </tr>
                <?php
                    $miejsce += 1;
                ?>
            @endforeach
            </tbody>
        </table>



        <a href="/">Spróbuj jeszcze raz</a>
        </div>
    </div>
@endsection
