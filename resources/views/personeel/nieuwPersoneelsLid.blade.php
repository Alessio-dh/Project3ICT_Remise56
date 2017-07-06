@extends('layouts.personeel_layout')

@section('title')
    Remise 56 Dashboard
@endsection

@section('content')


    <div class="row">
        @if(isset($bResult) && $bResult == true)
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Succes,</strong> er is een nieuw personeelslid toegevoegd.
            </div>

        @elseif(isset($bResult) && $bResult == false)
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <strong>Fout! </strong> Geen nieuw personeelslid toegevoegd.
            </div>
        @endif
        <div class="col-md-3"></div>

        <div class="col-md-6">
            <h2 style="text-align: center">Nieuw personeelslid</h2>
            <br><br>

            <form class="form-horizontal"  action="{{route('nieuwPersoneelsLid')}}" method="post">

                <div class="form-group">
                    <label for="naam" >Naam</label>
                    <input class="form-control" type="text" name="frmNieuwPersoneelNaam" id="naam" required>
                </div>

                <div class="form-group">
                    <label for="gebruikersnaam" >E-mail</label>
                    <input class="form-control" type="email" name="frmNieuwPersoneelEmail" id="gebruikersnaam" required>
                </div>

                <div class="form-group">
                    <label for="Level" >Acces level</label>
                    <select class="form-control" name="frmNieuwPersoneelAccesLevel" id="Level" required>
                        <option value="personeel">1 (Personeelslid)</option>
                        <option value="">2 (Admin)</option>

                    </select>
                </div>

                <div class="form-group">
                    <label for="wachtwoord" >Wachtwoord</label>
                    <input class="form-control" type="password" name="frmNieuwPersoneelWachtwoord" id="wachtwoord" required>
                </div>

                <div class="form-group">
                    <label for="Hwachtwoord" >Herhaal wachtwoord</label>
                    <input class="form-control" type="password" name="frmNieuwPersoneelHerhaalWachtwoord" id="Hwachtwoord" required>
                </div>

                <button type="submit" name="frmNieuwPersoneelSubmit" class="btn btn-primary">Registreren</button>

                <!-- Beveiliging als iemand uw session key heeft-->
                <input type="hidden" name="_token" value="{{Session::token()}}">
            </form>



        </div>
        <div class="col-md-3"></div>

    </div>
@endsection