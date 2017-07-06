@extends('layouts.master_layout')
    @section('banner')
        @if(isset($sBanner))
            @include($sBanner,['sBanner'])
            @endsection
        @endif



    @section('content')
        @foreach($aTemplates as $sTemplate => $aGegevens)
            @include('templates.'.$sTemplate, ['aGegevens'])
        @endforeach
    @endsection
@stop