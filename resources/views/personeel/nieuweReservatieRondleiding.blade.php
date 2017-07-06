@extends('layouts.personeel_layout')

@section('title')
    Remise 56 Dashboard
@endsection

@section('scripts')
    <script src="../js/reservatie.js"></script>

@endsection

@section('content')

    <div class="row">


        <div class="col-md-12" >
            @if(isset($bResult) && $bResult == true)
                <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <strong>Succes,</strong> nieuwe reservatie toegevoegd!
                </div>

            @elseif(isset($bResult) && $bResult == false)
                <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <strong>Fout! </strong> Geen nieuwe reservatie toegevoegd.
                </div>
            @endif

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Nieuwe reservatie (Rondleiding)</h3>
                    </div>
                    <div class="panel-body">
            <form class="form-horizontal" action="{{route("nieuweReservatieRond")}}" method="post">

                <div class="form-group">
                    <label class="col-sm-4 control-label">Datum</label>
                    <div class="col-sm-8">

                        <div id="datepicker-container">
                            <div id="datepicker-center">
                                <div id="datepicker"></div>
                            </div>
                        </div>
                        <!-- Met javascript haal ik de datum uit de DataPicker en steek ik ze in de verborgen input veld-->
                        <input type="hidden" id="datepickerhelper" name="frmReservatieRondDatum" required/>
                    </div>

                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label">Aantal personen</label>
                    <div class="col-sm-8">

                        <input class="form-control" type="number" min="1" value="2" max="20" name="frmReservatieRondPersonen" required/>

                    </div>
                </div>




                <div class="form-group">
                    <label class="col-sm-4 control-label">Aankomsttijd</label>
                    <div class="col-sm-8">

                        <select  class="form-control" style=" text-align-last:center;" name="frmReservatieRondTijd" required>
                            <option style=" text-align-last:center;">11.00</option>
                            <option>11.30</option>
                            <option>12.00</option>
                            <option>12.30</option>
                            <option>13.00</option>
                            <option>13.30</option>
                            <option>14.00</option>
                            <option>14.30</option>
                            <option>15.00</option>
                            <option>15.30</option>
                            <option>16.00</option>
                            <option>16.30</option>
                            <option>17.00</option>
                            <option>17.30</option>
                            <option>18.00</option>
                            <option>18.30</option>
                            <option>19.00</option>
                            <option>19.30</option>
                            <option>20.00</option>
                            <option>20.30</option>
                            <option>21.00</option>

                        </select>
                    </div>
                </div>


                {{-- <div class="form-group">
                     <label class="col-sm-4 control-label">Type</label>
                     <div class="col-sm-8">
                         <input class="radio-inline"  type="radio" name="frmReservatieRestType" value="person" checked /> Persoonlijk<br>
                         <input class="radio-inline" type="radio" name="frmReservatieRestType" value="company"/> Bedrijf
                     </div>


                 </div>--}}


                <div class="form-group">
                    <label class="col-sm-4 control-label">Voornaam</label>
                    <div class="col-sm-8">
                        <input class="form-control" name="frmReservatieRondVoornaam" placeholder="uw voornaam..." type="text" required/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label">Familienaam</label>
                    <div class="col-sm-8">
                        <input class="form-control" name="frmReservatieRondAchternaam" placeholder="uw familienaam..." type="text" required/>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-4 control-label">Telefoonnummer</label>
                    <div class="col-sm-8">
                        <input class="form-control" name="frmReservatieRondTel" placeholder="0488111111" type="tel" required/>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-4 control-label">Email</label>
                    <div class="col-sm-8">
                        <input class="form-control"  name="frmReservatieRondEmail" placeholder="uwemail@hotmail.com" type="email" required/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 control-label">Opmerkingen</label>
                    <div class="col-sm-8">
                        <textarea class="form-control" name="frmReservatieRondNota" rows="2" cols="20" required>Speciale wensen, ...</textarea>
                    </div>
                </div>

                <div class="form-group" style="text-align: center">

                    <button class="btn btn-default" name="frmReservatieRondSubmit" id="submit">Toevoegen</button>
                </div>

                <!-- Beveiliging als iemand uw session key heeft-->
                <input type="hidden" name="_token" value="{{Session::token()}}">
            </form>
                    </div>
                </div>
        </div>



    </div>
@endsection



