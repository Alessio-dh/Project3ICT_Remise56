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

        $(document).ready(function() {
            $('#frmNieuweCategorieExtra').hide();

            $("#datepicker").datepicker({
                inline: true,
                dateFormat: 'yy-mm-dd',
                monthNames: [ "Januari", "Februari", "Maart", "April", "Mei", "Juni", "Juli", "Augustus", "September", "Oktober", "November", "December" ],
                dayNames: [ "Zondag", "Maandag", "Dinsdag", "Woensdag", "Donderdag", "Vrijdag", "Zaterdag" ],
                dayNamesMin: [ "Zo", "Ma", "Di", "Wo", "Do", "Vr", "Za" ],
                firstDay: 1, //maandag
                altField: "#datepickerhelper",
            });

            $('#frmNieuweCategorieKeuze').change(function(){
                if($('#frmNieuweCategorieKeuze option:selected').val() == "subcategorie"){
                    $('#frmNieuweCategorieExtra').show();
                }
                else{
                    $('#frmNieuweCategorieExtra').hide();
                }
            });

        });

        function VerwijderSluitingsdag(datum, titel, id) {
            $(document).ready(function () {

                $('#deleteSluitingsdagModal').modal('show');
                $('#frmdeleteSluitingsdagModalHeader').text("Verwijderen van sluitingsdag: " + titel + " (" + datum+ ")");
                $('#frmDeleteSluitingsdagId').val(id);
            });
        }

        function WijzigSluitingsdag(datum, titel, id, actief, beschrijving) {
            $(document).ready(function () {

                $('#wijzigSluitingsdagModal').modal('show');
                $('#frmWijzigSluitingsdagHeader').text("Wijzigen van sluitingsdag: " + " (" + datum+ ")");
                $('#frmWijzigSluitingsdagTitel').val(titel);
                $('#frmWijzigSluitingsdagId').val(id);
                $('#frmWijzigSluitingsdagBeschrijving').val(beschrijving);

                if (actief == true){
                    $('#frmWijzigSluitingsdagActief').attr('checked', true);
                }else{
                    $('#frmWijzigSluitingsdagActief').attr('checked', false);
                }
                $("#datepicker2").datepicker({
                    inline: true,
                    dateFormat: 'yy-mm-dd',
                    monthNames: [ "Januari", "Februari", "Maart", "April", "Mei", "Juni", "Juli", "Augustus", "September", "Oktober", "November", "December" ],
                    dayNames: [ "Zondag", "Maandag", "Dinsdag", "Woensdag", "Donderdag", "Vrijdag", "Zaterdag" ],
                    dayNamesMin: [ "Zo", "Ma", "Di", "Wo", "Do", "Vr", "Za" ],
                    firstDay: 1, //maandag
                    altField: "#datepickerhelperWijzig",
                });
                $( "#datepicker2" ).datepicker( "setDate", datum );
            });
        }

        function VerwijderCategorie(id, titel, soort) {
            $(document).ready(function () {

                $('#deleteCategorieModal').modal('show');
                $('#frmdeleteCategorieModalHeader').text("Verwijderen van " + soort +": " + titel );

                if (soort == "categorie"){
                    $('#frmDeleteCategorieModalSoort').val(soort);
                }else if (soort == "subcategorie"){
                    $('#frmDeleteCategorieModalSoort').val(soort);
                }

                $('#frmDeleteCategorieModalId').val(id);
            });
        }
         </script>

    <!--Instellingen Meldingen-->
    <div class="row">
        <!--Meldingen Sluitingsdagen Nieuwe-->
        @if(isset($bnieuweSluitingsdag) && $bnieuweSluitingsdag == true)
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Succes,</strong> er is een nieuwe sluitingsdag toegevoegd.
            </div>

        @elseif(isset($bnieuweSluitingsdag) && $bnieuweSluitingsdag == false)
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Fout! </strong> Geen nieuwe sluitingsdag toegevoegd.
            </div>
        @endif

        <!--Meldingen Sluitingsdagen  Verwijderen-->
        @if(isset($bdeleteSluitingsdag) && $bdeleteSluitingsdag == true)
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Succes,</strong> sluitingsdag is verwijderd.
            </div>

        @elseif(isset($bdeleteSluitingsdag) && $bdeleteSluitingsdag == false)
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Fout! </strong> sluitingsdag is niet verwijderd!
            </div>
        @endif

        <!--Meldingen Sluitingsdagen  Wijzigen  -->
        @if(isset($bwijzigSluitingsdag) && $bwijzigSluitingsdag == true)
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Succes,</strong> sluitingsdag is aangepast.
            </div>

        @elseif(isset($bwijzigSluitingsdag) && $bwijzigSluitingsdag == false)
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Fout! </strong> sluitingsdag is niet aangepast!
            </div>
        @endif

        <!--Meldingen Categorieën-->
        @if(isset($bnieuweCategorie) && $bnieuweCategorie == true)
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Succes,</strong> nieuwe categorie toegevoegd.
            </div>

        @elseif(isset($bnieuweCategorie) && $bnieuweCategorie == false)
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Fout! </strong> geen nieuwe categorie toegevoegd!
            </div>
        @endif

        @if(isset($bdeleteCategorie) && $bdeleteCategorie == true)
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Succes,</strong> categorie is verwijderd.
            </div>

        @elseif(isset($bdeleteCategorie) && $bdeleteCategorie == false)
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Fout! </strong> categorie is niet verwijderd!
            </div>
        @endif
    </div>
    <br>

    <!--Instellingen Sluitingsdagen-->
    <div class="row">

        {{--<div class="col-md-1"></div>--}}

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">Sluitingsdagen</h3>
                        </div>
                        <div class="col col-xs-6 text-right">
                            <button type="button" class="btn btn-sm btn-primary btn-create btn-showform"  data-toggle="modal" data-target="#addSluitingsdagModal">Voeg een nieuwe sluitingsdag toe</button>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table class="table table-striped custab">
                        <thead>
                        <tr>
                            <th>Datum</th>
                            <th>Titel</th>
                            <th>Beschrijving</th>
                            <th>Actief</th>
                            <th>Wijzig</th>
                            <th>Verwijder</th>

                        </tr>
                        </thead>
                        @if(!empty($aDagen))

                            @foreach($aDagen as $Sluitingsdag)
                                <tr>
                                    <td><?php echo $Sluitingsdag->datum; ?></td>
                                    <td><?php echo $Sluitingsdag->titel ;?></td>
                                    <td><?php echo $Sluitingsdag->beschrijving ;?></td>
                                    <td><?php
                                        if( $Sluitingsdag->actief){
                                            echo 'Actief';
                                        } else{
                                            echo "Niet actief";
                                        };?></td>
                                    <td><a href="#" class="btn btn-warning btn-xs"onclick="WijzigSluitingsdag('{{$Sluitingsdag->datum}}', '{{$Sluitingsdag->titel}}','{{$Sluitingsdag->id}}','{{$Sluitingsdag->actief}}','{{$Sluitingsdag->beschrijving}}' )"><span class="glyphicon glyphicon-remove"></span> Wijzigen</a></td>
                                    <td><a href="#" class="btn btn-danger btn-xs" onclick="VerwijderSluitingsdag('{{$Sluitingsdag->datum}}', '{{$Sluitingsdag->titel}}','{{$Sluitingsdag->id}}')"><span class="glyphicon glyphicon-remove"></span> Verwijderen</a></td>

                                </tr>
                            @endforeach
                        @else
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <strong>Fout! </strong> Geen sluitingsdagen in het systeem.
                            </div>

                        @endif
                    </table>
                </div>
            </div>
        </div>
        {{--<div class="col-md-1"></div>--}}
    </div>
    <br>

    <!--Instellingen Categorieën & subcategorieën-->
    <div class="row">

        {{--<div class="col-md-1"></div>--}}

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">Categorieën & subcategorieën</h3>
                        </div>
                        <div class="col col-xs-6 text-right">
                            <button type="button" class="btn btn-sm btn-primary btn-create btn-showform"  data-toggle="modal" data-target="#addCategorieModal">Voeg een nieuwe categorie of subcategorie toe</button>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <h4>Categorieën:</h4>
                    <table class="table table-striped custab">
                        <thead>
                            <tr>

                                <th>Categorie</th>
                                <th>Verwijder</th>

                            </tr>
                        </thead>
                        @if(!empty($aCategorieen))
                            @foreach($aCategorieen as $Categorie)
                               <tr>
                                    <td><?php echo $Categorie->categorie ;?></td>
                                    <td><a href="#" class="btn btn-danger btn-xs" onclick="VerwijderCategorie('{{$Categorie->id}}', '{{$Categorie->categorie}}', 'categorie')"><span class="glyphicon glyphicon-remove"></span> Verwijderen</a></td>
                               </tr>
                            @endforeach
                        @else
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <strong>Fout! </strong> Geen menu items in het systeem.
                            </div>

                        @endif



                    </table>

                    <h4>Subcategorieën:</h4>
                    <table class="table table-striped custab">
                        <thead>
                        <tr>
                            <th>Subcategorie</th>

                            <th>Verwijder</th>

                        </tr>
                        </thead>
                        @if(!empty($aSubCategorieen))

                            @foreach($aSubCategorieen as $SubCategorie)

                                <tr>
                                    <td><?php echo $SubCategorie->subcategorie ;?></td>
                                    <td><a href="#" class="btn btn-danger btn-xs" onclick="VerwijderCategorie('{{$SubCategorie->id}}', '{{$SubCategorie->subcategorie}}', 'subcategorie')"><span class="glyphicon glyphicon-remove"></span> Verwijderen</a></td>
                                </tr>
                            @endforeach
                        @else
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <strong>Fout! </strong> Geen menu items in het systeem.
                            </div>

                        @endif



                    </table>
                </div>
            </div>
        </div>
    </div>
    <br>

    <!--Instellingen Aantal personen per shift-->
    <div class="row">


        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">Aantal bezoekers per shift</h3>
                        </div>
                        <div class="col col-xs-6 text-right">
                            <label for="submit-form" class="btn btn-sm btn-primary">Wijzig de limieten</label>
                        </div>
                    </div>
                </div>
                <div class="panel-body">


                    @if(isset($bResult) && $bResult == true)
                        <div class="alert alert-success alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <strong>Succes,</strong> De limieten zijn succesvol gewijzigd
                        </div>

                    @elseif(isset($bResult) && $bResult == false)
                        <div class="alert alert-danger alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <strong>Fout! </strong> er is iets misgelopen bij het wijzigen van de limieten gelieve opnieuw te proberen
                        </div>
                    @endif
                    <br>
                            <form action="{{route('wijzigLimietenAantalPersonen')}}" method="post">
                                <table class="table table-striped custab">
                                    <thead>
                                    <tr>

                                        <th>Dag</th>
                                        <th>Middag Shift</th>
                                        <th>Avond Shift</th>

                                    </tr>
                                    </thead>
                                @foreach($alleMaxAantallen as $dagMax)
                                    @if($dagMax->id % 2 != 0)
                                        <tr>
                                        <td><p>{{$dagMax->dag}}</p></td>
                                    @endif
                                    @if($dagMax->shift == 1)
                                            <td><input class="form-control" type="text" name="shift1{{$dagMax->dag}}" id="middag" value="{{$dagMax->max_personen}}"></td>
                                    @endif
                                    @if($dagMax->shift == 2)
                                         <td><input class="form-control" type="text" name="shift2{{$dagMax->dag}}" id="avond" value="{{$dagMax->max_personen}}"></td>
                                        </tr>
                        @endif
                        @endforeach
                        <input type="hidden" name="_token" value="{{Session::token()}}">
                        <input type="submit" name="submit" id="submit-form" value="Wijzig de limieten" class="hidden"/>
                        </form>
                    </div>
                </div>
        </div>
    </div>
    <br>


    <!-- Modal Sluitingsdagen Toevoegen-->
    <div class="modal fade" id="addSluitingsdagModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="frmHeader">Nieuwe sluitingsdag</h4>
                </div>

                <div class="modal-body">
                    <form class="form-horizontal"  action="{{route('nieuweSluitingsdag')}}" method="post">

                        <div class="form-group">
                            <label class="col-sm-4 control-label">Datum</label>
                            <div class="col-sm-8">

                                <div id="datepicker-container">
                                    <div id="datepicker-center">
                                        <div id="datepicker"></div>
                                    </div>
                                </div>
                                <!-- Met javascript haal ik de datum uit de DataPicker en steek ik ze in de verborgen input veld-->
                                <input type="hidden" id="datepickerhelper" name="frmNieuweSluitingsdagDatum" required/>
                            </div>

                        </div>

                        <div class="form-group" style="padding: 10px;">
                            <label for="frmMenuItemTitel">Geef een titel:</label>
                            <input type="text" class="form-control" id="frmMenuItemTitel" name="frmNieuweSluitingsdagTitel" required>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group" style="padding: 10px;">
                                    <label for="frmMenuItemBeschrijving">Geef een beschrijving:</label>
                                    <textarea class="form-control" rows="5" id="frmMenuItemBeschrijving" name="frmNieuweSluitingsdagBeschrijving"> </textarea>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group" style="padding: 10px;">
                                    <label for="frmMenuItemZichtbaar" >Actief:</label>

                                    <input class="form-control" type="checkbox" value="true" id="frmNieuwSluitingsdagActief" name="frmNieuweSluitingsdagActief" >

                                </div>
                            </div>
                        </div>
                        <!-- Beveiliging als iemand uw session key heeft-->
                        <input type="hidden" name="_token" value="{{Session::token()}}">

                        <button type="submit" name="frmNieuwMenuItemSubmit" class="btn btn-primary" style="text-align: center;">Toevoegen</button>


                    </form>
                </div>

            </div>

        </div>
    </div>

    <!-- Modal Sluitingsdagen Wijzigen-->
    <div class="modal fade" id="wijzigSluitingsdagModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="frmWijzigSluitingsdagHeader"></h4>
                </div>

                <div class="modal-body">
                    <form class="form-horizontal"  action="{{route('wijzigSluitingsdag')}}" method="post">

                        <div class="form-group">
                            <label class="col-sm-4 control-label">Datum</label>
                            <div class="col-sm-8">

                                <div id="datepicker-container">
                                    <div id="datepicker-center">
                                        <div id="datepicker2"></div>
                                    </div>
                                </div>
                                <!-- Met javascript haal ik de datum uit de DataPicker en steek ik ze in de verborgen input veld-->
                                <input type="hidden" id="datepickerhelperWijzig" name="frmWijzigSluitingsdagDatum" required/>
                            </div>

                        </div>

                        <div class="form-group" style="padding: 10px;">
                            <label for="frmMenuItemTitel">Geef een titel:</label>
                            <input type="text" class="form-control" id="frmWijzigSluitingsdagTitel" name="frmWijzigSluitingsdagTitel" required>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group" style="padding: 10px;">
                                    <label for="frmMenuItemBeschrijving">Geef een beschrijving:</label>
                                    <textarea class="form-control" rows="5" id="frmWijzigSluitingsdagBeschrijving" name="frmWijzigSluitingsdagBeschrijving"> </textarea>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group" style="padding: 10px;">
                                    <label for="frmMenuItemZichtbaar" >Actief:</label>

                                    <input class="form-control" type="checkbox" value="true" id="frmWijzigSluitingsdagActief" name="frmWijzigSluitingsdagActief" >

                                </div>
                            </div>
                        </div>

                        <!-- Hierin komt het id van de sluitingsdag-->
                        <input type="hidden" name="frmWijzigSluitingsdagId" id="frmWijzigSluitingsdagId">

                        <!-- Beveiliging als iemand uw session key heeft-->
                        <input type="hidden" name="_token" value="{{Session::token()}}">

                        <button type="submit" name="frmWijzigMenuItemSubmit" class="btn btn-primary" style="text-align: center;">Aanpassen</button>


                    </form>
                </div>

            </div>

        </div>
    </div>

    <!-- Modal Sluitingsdagen Verwijderen-->
    <div class="modal fade" id="deleteSluitingsdagModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="frmdeleteSluitingsdagModalHeader"></h4>
                </div>

                <div class="modal-body">
                    <form class="form-horizontal"  action="{{route('deleteSluitingsdag')}}" method="post">
                        <p>Bent u zeker dat u deze sluitingsdag wilt verwijderen?</p>
                        <!-- Hierin komt het id van de sluitingsdag-->
                        <input type="hidden" name="frmDeleteSluitingsdagId" id="frmDeleteSluitingsdagId">

                        <!-- Beveiliging als iemand uw session key heeft-->
                        <input type="hidden" name="_token" value="{{Session::token()}}">

                        <button type="submit" name="frmdeleteSluitingsdagSubmit" class="btn btn-danger" style="text-align: center;">Verwijderen</button>


                    </form>
                </div>

            </div>

        </div>
    </div>

    <!-- Modal Categorieen Sub.. Toevoegen-->
    <div class="modal fade" id="addCategorieModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="frmHeader">Nieuwe Categorie / Subcategorie</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal"  action="{{route('nieuweCategorie')}}" method="post">

                    <div class="form-group" style="padding: 10px;">
                        <label for="frmMenuItemTitel">Keuze:</label>
                        <select class="form-control" id="frmNieuweCategorieKeuze" name="frmNieuweCategorieKeuze">
                            <option value="kies">Kies een soort</option>
                            <option value="categorie">Categorie</option>
                            <option value="subcategorie">Subcategorie</option>
                        </select>
                    </div>

                    <div class="form-group" style="padding: 10px;">
                        <label for="frmNieuweCategorieTitel">Geef een titel:</label>
                        <input type="text" class="form-control" id="frmNieuweCategorieTitel" name="frmNieuweCategorieTitel" required>
                    </div>

                        <div class="form-group" style="padding: 10px;" id="frmNieuweCategorieExtra">
                            <label for="frmNieuweCategorieTitel">Kies het bijhorende categorie:</label>
                            <select class="form-control" id="frmNieuweCategorieBijhorend" name="frmNieuweCategorieBijhorend" >
                                @foreach($aCategorieen as $Categorie)

                                <option value="{{$Categorie->id}}">{{$Categorie->categorie}}</option>
                                @endforeach
                            </select>
                        </div>

                    <!-- Beveiliging als iemand uw session key heeft-->
                    <input type="hidden" name="_token" value="{{Session::token()}}">

                    <button type="submit" name="frmNieuweCategorieSubmit" class="btn btn-primary" style="text-align: center;">Toevoegen</button>


                    </form>
                </div>

            </div>

        </div>
    </div>

    <!-- Modal Categorieen Verwijderen-->
    <div class="modal fade" id="deleteCategorieModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="frmdeleteCategorieModalHeader"></h4>
                </div>

                <div class="modal-body">
                    <form class="form-horizontal"  action="{{route('deleteCategorie')}}" method="post">
                        <p>Bent u zeker dat u deze categorie wilt verwijderen?</p>

                        <!-- Hierin komt het id van de categorie-->
                        <input type="hidden" name="frmDeleteCategorieModalId" id="frmDeleteCategorieModalId">
                        <!-- Hierin komt de soort-->
                        <input type="hidden" name="frmDeleteCategorieModalSoort" id="frmDeleteCategorieModalSoort">

                        <!-- Beveiliging als iemand uw session key heeft-->
                        <input type="hidden" name="_token" value="{{Session::token()}}">

                        <button type="submit" name="frmDeleteCategorieModalSubmit" class="btn btn-danger" style="text-align: center;">Verwijderen</button>


                    </form>
                </div>

            </div>

        </div>
    </div>

@endsection