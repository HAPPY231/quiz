@extends('layouts.app')

@section('content')
    <div class="container">
        <br class="w-80 text-black">
            {{ Auth::user()->name }}    </br>
            {{ Auth::user()->surname }}</br>
            {{ Auth::user()->email }}</br>
            {{ Auth::user()->phone_number }}</br>
        </div>
    </div>
@endsection
