@extends('layouts.app')
<?php
    $ile = 1;

?>
@section('content')
    <div class="container">
        <form action="/ranking" method="get" >
            @csrf
       @foreach($dad as $pytanie)
                <h5>{{$ile}}.{{$pytanie->tresc}}:</h5>

                <input type="radio" id="{{$pytanie->odpa}}" name="m{{$ile}}" value="a" required>
                <label for="{{$pytanie->odpa}}}">{{$pytanie->odpa}}</label><br>

                <input type="radio" id="{{$pytanie->odpb}}" name="m{{$ile}}" value="b">
                <label for="{{$pytanie->odpb}}">{{$pytanie->odpb}}</label><br>

                <input type="radio" id="{{$pytanie->odpc}}" name="m{{$ile}}" value="c">
                <label for="{{$pytanie->odpc}}">{{$pytanie->odpc}}</label><br>

                <input type="radio" id="{{$pytanie->odpd}}" name="m{{$ile}}" value="d">
                <label for="{{$pytanie->odpd}}">{{$pytanie->odpd}}</label><br>

                <input type="hidden" name="Poprodp{{$ile}}" value="{{$pytanie->poprawna}}">
                <br>
           <?php
           $ile += 1;
                ?>
        @endforeach
            <input type="submit">
        </form>
    </div>
@endsection
