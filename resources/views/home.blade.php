@extends('layouts.app')

@section('content')
<div class="container">
   <div class="w-80 text-center">
       @if (Route::has('login'))
           <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
               @auth
                   <a href="/ranking/pytania" class="text-black text-decoration-none"><h1>Rozpocznij quiz</h1></a>
               @else
                   <a href="{{ route('login') }}" class="text-black text-decoration-none"><h1>Aby rozpocząć quiz zaloguj się</h1></a>
                   @endif
               @endauth
           </div>
   </div>
</div>
@endsection
