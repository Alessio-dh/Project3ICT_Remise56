@extends('layouts.personeel_layout')

@section('extra_css')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
@endsection

@section('content')

    @if(isset($countError))
        <div id="errorReport" class="alert alert-danger">
            <ax class="close" data-dismiss="alert" aria-label="close">&times;</ax>
            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
            <span class="sr-only">Error:</span>
            {{$countError}}
        </div>
    @endif

    @if(isset($gelukt))
        <div id="errorReport" class="alert alert-success">
            <ax class="close" data-dismiss="alert" aria-label="close">&times;</ax>
            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
            <span class="sr-only">Succes:</span>
            {{$gelukt}}
        </div>
    @endif

<div class="panel panel-default panel-table">
    <div class="panel-heading">
        <div class="row">
            <div class="col col-xs-6">
                <h3 class="panel-title">Actieve nieuws items</h3>
            </div>
            <div class="col col-xs-6 text-right">
                <button type="button" class="btn btn-sm btn-primary btn-create btn-showform" onclick="toggleView()">Maak een nieuws item aan</button>
                <button type="button"  style="display:none;" class="btn btn-sm btn-primary btn-create btn-showformAanpassen" onclick="toggleViewUpdate()">Pas een nieuws item aan</button>
            </div>
        </div>
    </div>
    <div class="panel-body">
        <div class="center-block">
        <form method="post" id="popup-form" class="center" action="{{route("nieuweNieuwsItem")}}" style="display:none;padding-bottom: 20px;" enctype="multipart/form-data">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            <label>Titel</label><br/>
            <input type="text" name="titel" class="span3" required/><br/>
            <label>Uitleg</label><br/>
            ​<textarea id="uitleg" name="uitleg" form="popup-form" rows="4" cols="40" ></textarea><br/>
            <label>Afbeelding voor bij de uitleg</label><br/>
            <input type="file" name="foto" accept="image/*"><br/>
            <input type="submit" value="Maak aan" class="btn btn-primary"/>
        </form></div>

        <div class="center-block">
            <form method="post" id="popup-form-update" class="center" action="{{route("aanpassenNieuwsItem")}}" style="display:none;padding-bottom: 20px;" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <label>Titel</label><br/>
                <input type="text" id="titelAanpassing" name="titelAanpassing" class="span3" required/><br/>
                <label>Uitleg</label><br/>
                ​<textarea id="uitlegAanpassing" name="uitlegAanpassing" form="popup-form-update" rows="4" cols="40" required></textarea><br/>
                <!--<input type="text" id="uitlegAanpassing" name="uitlegAanpassing" class="span3" required/><br/>-->
                <label>Afbeelding voor bij de uitleg</label><br/>
                <input type="file" id="fotoAanpassing" name="fotoAanpassing" accept="image/*"><br/>
                <input type="submit" value="Pas aan" class="btn btn-primary"/>
                <input type="hidden" name="itemId" id="itemId" />
            </form></div>
        <table class="table table-striped table-bordered table-list">
            <thead>
            <tr>
                <th>Titel</th>
                <th>Uitleg</th>
                <th>Foto naam</th>
                <th>Wijzigen</th>
                <th>Verwijderen</th>
            </tr>
            </thead>
@foreach($newsItems->all() as $newsItem)



    <tbody>
    <tr>


        <td>{{$newsItem->titel}}</td>
        <td>{{$newsItem->uitleg}}</td>
        @if($newsItem->padNaarFoto != null)
            <td>{{$newsItem->padNaarFoto}}</td>
        @else
            <td>Er is geen foto toegevoegd</td>
        @endif
        <td>
            <a class="btn btn-warning btn-xs" onclick="toggleViewUpdate('{{$newsItem->id}}', '{{$newsItem->titel}}', '{{$newsItem->uitleg}}', '{{$newsItem->padNaarFoto}}')"><span class="glyphicon glyphicon-remove">Wijzigen</span></a>
        </td>
        <td align="center">
            <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteModal{{$newsItem->id}}">Verwijderen</button>
        </td>

    </tr>
    </tbody>

                <!--Modal -->
                <div id="deleteModal{{$newsItem->id}}" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content -->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4>menuItem <?php echo $newsItem->titel ;?></h4>
                            </div>
                            <div class="modal-body">
                                <p>Bent u echt zeker dat u dit nieuwsitem wilt verwijderen?</p>
                                <p>Deze actie kan niet ongedaan worden!</p>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <a class="btn btn-default" href="{{url('/personeel/news/deleteNewsItem/'.$newsItem->id)}}">Verwijderen</a>
                            </div>
                        </div>
                    </div>
                </div>



            @endforeach
        </table>
    </div>
</div>
@endsection

@section('extra_scripts')
<script>
    function toggleView(){
        if ($('#popup-form').css('display') == 'block'){
            $('#popup-form').css('display','none');
            $(".btn-showform").html('Maak een nieuws item aan');
            $(".btn-showform").css('background-color','rgb(47,121,185)');
            $(".btn-showform").css('border','1px solid rgb(47,121,185)');
        }else{
            $('#popup-form').css('display','block');
            $(".btn-showform").html('Sluit het formulier');
            $(".btn-showform").css('background-color','red');
            $(".btn-showform").css('border','1px solid red');
        }

    }
    function toggleViewUpdate(id, titel, uitleg, padNaarFoto){
        if ($('#popup-form-update').css('display') == 'block'){
            $(".btn-showform").hide();
            $(".btn-showformAanpassen").show();
            $('#popup-form-update').css('display','none');

        }else{
            $(".btn-showform").hide();
            $(".btn-showformAanpassen").show();
            $("#itemId").val(id);

            document.getElementById("titelAanpassing").value = titel;
            document.getElementById("uitlegAanpassing").value = uitleg;
            document.getElementById("fotoAanpassing").title = '';
            $('#popup-form-update').css('display','block');
            $(".btn-showformAanpassen").html('Sluit het formulier');
            $(".btn-showformAanpassen").css('background-color','red');
            $(".btn-showformAanpassen").css('border','1px solid red');
        }

    }
</script>
@endsection