@extends('layouts.master_layout')

@section('banner')
    <div class="row">
        <div width="100%" height="400px;" style="width:100%;height:400px;background-position:center;background-image:url({{url('images/grandCafe1.jpg')}});margin-top:5px;background-repeat:no-repeat;background-size:cover;">
        </div>
    </div>
@stop


<!-- CONTENT van grandcafé zet je hierin opgehaald uit het model -->


@section('content')
    <div style="background-color: #fafafa;">
        <div class="container" style="padding-top: 40px;">
            <div class="row fh5co-heading row-padded text-center">
                <div class="col-md-12">
                    {!! $aContent['HoofdTitel'] !!}
                    {!! $aContent['HoofdOmschrijving'] !!}

                </div>
            </div>
        </div>
    </div>

    <div>
        <div class="container" style="padding-top: 40px;">
            <div class="row fh5co-heading row-padded text-center">
                <div class="col-md-6">
                    {!! $aContent['Foto'] !!}
                </div>
                <div class="col-md-6">
                    {!! $aContent['Omschrijving'] !!}
                </div>
            </div>
        </div>
    </div>



    </div>

    <div class="container" style="padding-top: 40px;">
        <div class="row fh5co-heading row-padded text-center">
            <div class="col-md-12" style="display: block;margin:auto;">
                <blockquote data-width="1300" data-height="600" class="ricoh-theta-spherical-image" >#remise56 @breweryremise56 #koersel - <a href="https://theta360.com/s/o5iHln9obU8VbDXFSK7uaoZdY" target="_blank">Spherical Image - RICOH THETA</a></blockquote>
                <script async src="https://theta360.com/widgets.js" charset="utf-8"></script>
            </div>
        </div>
    </div>


    <div style="background-color: #fafafa;">
        <div class="container" style="padding-top: 40px;">
            <div class="row fh5co-heading row-padded text-center">
                <div class="col-md-12">
                    {!! $aContent['GeschiedenisTitel'] !!}
                    {!! $aContent['GeschiedenisOmschrijving'] !!}
                </div>
            </div>
        </div>
@stop