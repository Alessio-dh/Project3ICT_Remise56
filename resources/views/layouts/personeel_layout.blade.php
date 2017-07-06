<!DOCTYPE html>
<html lang="en">
<head>

    <title>
        @yield('title')
    </title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    @yield('extra_css')

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>



    {{--<script src="https://code.jquery.com/jquery-1.12.4.js"></script>--}}

    <script src="../js/jquery-ui.js"></script>

    <link rel="stylesheet" type="text/css" href="../css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="../css/reservatiestyle.css">





    @yield('scripts')


    <script>
        setInterval(function(){

            $.get( "/melding" , function( data ) {
                //console.log(data);
                if(data.length == 0){
                    console.log('Nope');
                }else{
                    for(var i = 0; i < data.length; i++){
                        //console.log('Om ' + data[i].datumtijd + ' hebben ' + data[i].aantal_personen +' personen gereserveerd');
                        alert('Om ' + data[i].datumtijd + ' hebben ' + data[i].aantal_personen +' personen gereserveerd');
                    }
                }
            });

        }, 60000);
    </script>




</head>
<body>


<header>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <img alt="LogoRemise56" src="../images/favicon.ico" width="px" height="40px">
                </a>
                <a class="navbar-brand" href="#">Remise 56 Dashboard</a>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Nieuw... <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/personeel/nieuwPersoneelsLid">Nieuw personeelslid</a></li>

                            <li><a href="/personeel/nieuweReservatieRest">Nieuwe reservatie(restaurant)</a></li>
                            <li><a href="/personeel/nieuweReservatieRond">Nieuwe reservatie(rondleiding)</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="/personeel/nieuwMenuItem">Nieuw menu item</a></li>
                            {{--<li role="separator" class="divider"></li>--}}
                            {{--<li><a href="#">Nieuw nieuws item</a></li>--}}

                        </ul>
                    </li>

                    <li><a href="/personeel/reservaties">Reservaties</a></li>
                    <li><a href="/personeel/news">Nieuws items</a></li>
                    <li><a href="/personeel/menuItems">Menu items</a></li>
                    <li><a href="/personeel/foto">Media</a> </li>
                    <li><a href="/personeel/personeel">Personeelsleden</a></li>
                    <li><a href="/personeel/instellingen">Instellingen</a></li>
                    <li><a href="/extadm?site=default">Webshop admin</a></li>
                    <li><a href="/personeel/logout">Uitloggen</a></li>


                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</header>



<div class="container">
    @yield('content')
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
{{--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>--}}
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../js/bootstrap.min.js"></script>
@yield('extra_scripts')
</body>
</html>
