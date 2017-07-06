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

        $(document).ready(function(){

            $("#frmGroepSubCatDranken").hide();
            $("#frmGroepSubCatGerechten").hide();
            $("#frmGroepInfo").hide();

            $("#frmNieuwMenuItemCat ").change(function(){

                $("#frmGroepSubCatDranken").hide();
                $("#frmGroepSubCatGerechten").hide();

                if ($("#frmNieuwMenuItemCat option:selected").val() == "DRANKEN"){
                    $("#frmGroepSubCatDranken").show();
                }
                else if ($("#frmNieuwMenuItemCat option:selected").val() == "GERECHTEN"){
                    $("#frmGroepSubCatGerechten").show();
                }

            });

            $("#frmNieuwMenuItemSubCatDranken ").change(function(){
                $("#frmNieuwMenuItemSubCat").val( $("#frmNieuwMenuItemSubCatDranken option:selected").val());

                $("#frmGroepInfo").show();
            });

            $("#frmGroepSubCatGerechten ").change(function(){
                $("#frmNieuwMenuItemSubCat").val($("#frmNieuwMenuItemSubCatGerechten option:selected").val());
                $("#frmGroepInfo").show();
            });
        });

        function Wijzig(id, titel, beschrijving, prijs, zichbaar) {
            $(document).ready(function(){

                $('#myModal').modal('show');
                $('#frmHeader').text("Wijzigen van menu item " + id);
                $('#frmMenuItemTitel').val(titel);
                $('#frmMenuItemBeschrijving').val(beschrijving);
                $('#frmMenuItemPrijs').val(prijs);
                $('#frmMenuItemId').val(id);


                if (zichbaar == true){
                    $('#frmMenuItemZichtbaar').attr('checked', true);
                }else{
                    $('#frmMenuItemZichtbaar').attr('checked', false);
                }
          });
        }

    </script>
    <div class="row">
        @if(isset($bResult) && $bResult == true)
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Succes,</strong> het menu item is aangepast.
            </div>

        @elseif(isset($bResult) && $bResult == false)
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Fout! </strong> het menu item is niet aangepast.
            </div>
        @endif

        {{--<div class="col-md-2"></div>--}}

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Menu items</h3>
                </div>
                <div class="panel-body">
                <table class="table table-striped custab">
                    <thead>
                    <tr>
                        <th>Sub-Categorie ID</th>
                        <th>Titel</th>
                        <th>Beschrijving</th>
                        <th>Prijs</th>
                        <th>Zichtbaarheid</th>
                        <th>Wijzigen</th>
                        <th>Verwijderen</th>
                    </tr>
                    </thead>
                    @if(!empty($aMenuItems))
                        @foreach($aMenuItems as $MenuItem)
                            <tr>
                                <td><?php echo $MenuItem->subcategorie_id; ?></td>
                                <td><?php echo $MenuItem->titel ;?></td>
                                <td><?php echo $MenuItem->beschrijving ;?></td>
                                <td><?php echo $MenuItem->prijs ;?></td>
                                <td><?php
                                    if( $MenuItem->zichtbaar){
                                    echo 'Zichtbaar';
                                    } else{
                                        echo "Niet zichtbaar";
                                    };?></td>

                                <td><a href="#" class="btn btn-warning btn-xs" onclick="Wijzig('{{$MenuItem->id}}', '{{$MenuItem->titel}}','{{$MenuItem->beschrijving}}', '{{$MenuItem->prijs}}', '{{$MenuItem->zichtbaar}}')"><span class="glyphicon glyphicon-remove"></span> Wijzigen</a></td>
                                <td><button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteModal{{$MenuItem->id}}">Verwijderen</button> </td>
                            </tr>

                            <!--Modal -->
                            <div id="deleteModal{{$MenuItem->id}}" class="modal fade" role="dialog">
                                <div class="modal-dialog">
                                    <!-- Modal content -->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4>menuItem <?php echo $MenuItem->titel ;?></h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>Bent u echt zeker dat u dit item wilt verwijderen?</p>
                                            <p>Deze actie kan niet ongedaan worden</p>
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            <a class="btn btn-default" href="{{url('/personeel/deleteMenuItem/'.$MenuItem->id)}}">Verwijderen</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

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
        {{--<div class="col-md-2"> </div>--}}

    </div>
    </div>

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="frmHeader"></h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal"  action="{{route('wijzigMenuItem')}}" method="post">
                        <div class="form-group" style="padding: 10px;">
                            <label for="frmMenuItemTitel">Geef een titel:</label>
                            <input type="text" class="form-control" id="frmMenuItemTitel" name="frmWijzigMenuItemTitel" required>
                        </div>


                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group" style="padding: 10px;">
                                    <label for="frmMenuItemPrijs">Geef een prijs:</label>
                                    <input type="number" class="form-control" id="frmMenuItemPrijs" min="1" step="0.01"  name="frmWijzigMenuItemPrijs" required>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group" style="padding: 10px;">
                                    <label for="frmMenuItemZichtbaar" >Zichtbaar in het menu:</label>

                                    <input class="form-control" type="checkbox" value="true" id="frmMenuItemZichtbaar" name="frmWijzigMenuItemZichtbaar" >

                                </div>
                            </div>
                        </div>

                        <div class="form-group" style="padding: 10px;">
                            <label for="frmMenuItemBeschrijving">Geef een beschrijving:</label>
                            <textarea class="form-control" rows="5" id="frmMenuItemBeschrijving" name="frmWijzigMenuItemBeschrijving"> </textarea>
                        </div>

                        <input type="hidden" id="frmMenuItemId" name="frmWijzigMenuItemId" />

                        <!-- Beveiliging als iemand uw session key heeft-->
                        <input type="hidden" name="_token" value="{{Session::token()}}">

                        <button type="submit" name="frmNieuwMenuItemSubmit" class="btn btn-primary">Aanpassen</button>
                        </form>
                    </div>

                </div>

            </div>
        </div>
@endsection