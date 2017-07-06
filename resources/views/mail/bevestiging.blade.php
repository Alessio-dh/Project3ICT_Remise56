<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Bevestigingsmail</title>
    <meta name="description" content="DESCRIPTION">
    <link rel="stylesheet" href="PATH">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src = "http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>

<body>
<div class="container-fluid">

    <div class="row">

        <div class="col-md-10 col-xs-12">
            <div class="page-header"><h1>Reservatie <small> Remise56</small></h1></div></div>
    </div>

    <div class="row">
        <div class="col-xs-12"><p>Bedankt   <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
            </p>
            <br>
            <p>U heeft succesvol een reservatie aangemaakt op Remise56 </p>
            <p>Met onderstaande gegevens</p>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Gegevens</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Naam</td>
                    <td>{{ $volledigeNaam }}</td>
                </tr>
                <tr>
                    <td>Aantal personen</td>
                    <td>{{ $aantalPersonen }}</td>
                </tr>
                <tr>
                    <td>Tijdstip</td>
                    <td>{{ $tijdstip }}</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <p>Klik hier om uw reservatie te bevestigen </p>
            <a href="{{ $bevestigingsLink }}" style="background-color:#EB7035;border:1px solid #EB7035;border-radius:3px;color:#ffffff;display:inline-block;font-family:sans-serif;font-size:16px;line-height:44px;text-align:center;text-decoration:none;width:150px;-webkit-text-size-adjust:none;mso-hide:all;">Bevestig &rarr;</a>
            <p>Werkt de knop niet? Plak dan deze link in je browser: {{ $bevestigingsLink }}</p>
        </div>
    </div>

</div>
<br>
<br>
<div class="container">

</div>



<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>
