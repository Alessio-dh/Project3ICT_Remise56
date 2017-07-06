@extends('layouts.personeel_layout')

@section('title')
    Remise 56 Dashboard
@endsection

@section('scripts')
    <style>
    .custab{
        border: 1px solid #ccc;
        padding: 5px;
        margin: 5% 0;
        box-shadow: 3px 3px 2px #ccc;
        transition: 0.5s;
    }
    .custab:hover{
        box-shadow: 3px 3px 0px transparent;
        transition: 0.5s;
    }
    </style>
@endsection

@section('content')
<script>
    function Wijzig(naam, gebruikersnaam, actief) {
        $(document).ready(function(){

            $('#myModal').modal('show');
            $('#frmHeader').text("Wijzigen van personeel( " + gebruikersnaam+")");
            $('#frmPersoneelNaam').val(naam);
            $('#frmPersoneelGebruikersnaam').val(gebruikersnaam);



            if (actief == true){
                $('#frmPersoneelActief').attr('checked', true);
            }else{
                $('#frmPersoneelActief').attr('checked', false);
            }
        });
    }

</script>
    <div class="row">

        <div class="col-md-2"></div>

        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">
                <div class="row">
                    <div class="col col-xs-6">
                        <h3 class="panel-title">Personeelsleden</h3>
                    </div>
                    <div class="col col-xs-6 text-right">
                        <a type="button" class="btn btn-sm btn-primary" href="{{route("nieuwPersoneelsLid")}}">Voeg Personeelslid toe</a>
                    </div>
                </div>
                </div>
            <div class="panel-body">
                @if(isset($bResult) && $bResult == true)
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <strong>Succes,</strong> De wijziging is succesvol doorgevoerd
                    </div>

                @elseif(isset($bResult) && $bResult == false)
                    <div class="alert alert-danger alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <strong>Fout! </strong> er is iets misgelopen bij het wijzigen van de persoon gelieve opnieuw te proberen
                    </div>
                @endif
            <table class="table table-striped custab">
                <thead>
                <tr>
                    <th>ID</th><!--class="text-center"-->
                    <th>Naam</th>
                    <th>Gebruikersnaam</th>
                    <th>Acces Level</th>
                    <th>Wijzigen</th>
                    <th>Verwijderen</th>
                </tr>
                </thead>

                @if(!empty($aPersoneel))
                    @foreach($aPersoneel as $persoon)
                        <?php //var_dump($persoon);?>
                        <tr>
                            <td><?php echo $persoon->id ;?></td>
                            <td><?php echo $persoon->naam;?></td>
                            <td><?php echo $persoon->gebruikersnaam; ?></td>
                            @if($persoon->accesslevel ==1)
                                <td>{{"1 (Personeelslid)"}}</td>
                            @else
                                <td>{{"2 (Administrator)"}}</td>
                            @endif

                            <td><button type="button" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#wijzigModal{{$persoon->id}}"><span class="glyphicon glyphicon-remove"></span> Wijzigen</button></td>
                            <td><button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteModal{{$persoon->id}}"><span class="glyphicon glyphicon-remove"></span> Verwijderen</button></td>
                        </tr>

                            <!--Modal -->
                            <div id="deleteModal{{$persoon->id}}" class="modal fade" role="dialog">
                                <div class="modal-dialog">
                                    <!-- Modal content -->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4>Personeelslid: <?php echo $persoon->naam ;?></h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>Bent u echt zeker dat u deze werknemer wilt verwijderen?</p>
                                            <p>Deze actie kan niet ongedaan worden!</p>
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            <a class="btn btn-default" href="{{url('/personeel/verwijderPersoneelsLid/'.$persoon->id)}}">Verwijderen</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                    @endforeach
                @else
                    <div class="alert alert-danger alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <strong>Fout! </strong> Geen personeelsleden in het systeem.
                    </div>

                @endif



            </table>
            </div>


        </div>
        <div class="col-md-3"></div>
        </div>

    </div>

@if(!empty($aPersoneel))
    @foreach($aPersoneel as $persoon)
        <div class="modal fade" id="wijzigModal{{$persoon->id}}" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="frmHeader"> Wijzigen van {{$persoon->naam}}</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal"  action="{{route('wijzigPersoneel')}}" method="post">
                            <div class="form-group" style="padding: 10px;">
                                <label for="frmPersoneelNaam">Naam:</label>
                                <input type="text" class="form-control" id="frmWijzigPersoneelNaam" name="frmWijzigPersoneelNaam" value="{{$persoon->naam}}" required>
                            </div>


                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group" style="padding: 10px;">
                                        <label for="frmPersoneelGebruikersNaam">Gebruikersnaam:</label>
                                        <input type="text" class="form-control" id="frmWijzigPersoneelGebruikersNaam"  name="frmWijzigPersoneelGebruikersNaam" value="{{$persoon->gebruikersnaam}}" required>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group" style="padding: 10px;">
                            <label for="Level" >Access level</label>
                                    <select name="frmWijzigPersoneelAccesLevel" id="Level" required>
                                        @if($persoon->accesslevel == 1)
                                            <option value="1" selected>1 (Personeelslid)</option>
                                            <option value="2">2 (Admin)</option>
                                        @else
                                            <option value="1">1 (Personeelslid)</option>
                                            <option value="2" selected>2 (Admin)</option>
                                        @endif

                                    </select>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group" style="display:none;">
                                    <input type="password" name="frmWijzigPersoneelid" id="frmWijzigPersoneelid" value="{{$persoon->id}}" required>
                                </div>
                            </div>

                            <!-- Beveiliging als iemand uw session key heeft-->
                            <input type="hidden" name="_token" value="{{Session::token()}}">

                            <button type="submit" name="submit" class="btn btn-primary">Wijzigen</button>
                        </form>
                    </div>

                </div>

            </div>
        </div>
@endforeach
@endif
@endsection