<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Remise 56 | {{$menuTop}}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="brouwerij cafe restaurant koersel" />
    <meta name="keywords" content="brouwerij cafe restaurant koersel" />
    <meta name="author" content="3ICT_Projects2016-2017" />

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="{{url('images/logo_Geen_Tekst.png')}}" type="image/png">

    <link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic,700italic|Merriweather:300,400italic,300italic,400,700italic' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="{{url('images/favicon.ico')}}" type="image/x-icon"/>
    <!-- Animate.css -->
    <link rel="stylesheet" href="{{url('css/animate.css')}}">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="{{url('css/icomoon.css')}}">
    <!-- Simple Line Icons -->
    <link rel="stylesheet" href="{{url('css/simple-line-icons.css')}}">
    <!-- Datetimepicker -->
    <link rel="stylesheet" href="{{url('css/bootstrap-datetimepicker.min.css')}}">
    <!-- Flexslider -->
    <link rel="stylesheet" href="{{url('css/flexslider.css')}}">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="{{url('css/bootstrap.css')}}">

    <link rel="stylesheet" href="{{url('css/style.css')}}">

    <link rel="stylesheet" href="{{url('css/lightbox.min.css')}}">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="../js/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="../css/reservatiestyle.css">
    <script src="../js/reservatie.js" ></script>

    <style>
        body{background-color: #fff;}

        .social-icon {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .social-icon li{
            display: inline-block;
            text-align: center;
        }

        .social-icon a {
            display: block;
            width: 44px;
            height: 44px;
            line-height: 44px;
            border-radius: 50%;
            margin-right: 5px;
        }

        .social-icon a {
            background: rgba(255, 255, 255, 0.85); /* social icon background color */
            color: #000; /* social icon color */
        }

        .social-icon a:hover {
            background: rgba(255, 255, 255, 0.25); /* social icon hover background color */
            color: #fff; /* social icon hover color */
        }

        .footer {
            position: absolute;
            bottom: 0;
            padding-top: 5px;
            width: 100%;
            height: 60px;
            background-color: #111;
        }



    </style>

    @yield('extra_css')

<!-- Modernizr JS -->
    <script src="{{url('js/modernizr-2.6.2.min.js')}}"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="{{url('js/respond.min.js')}}"></script>
    <![endif]-->
    <!--GOOGLE CAPTCHA-->
    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>


<div id="fh5co-container">

    <div id="fh5co-home">
        <div class="js-sticky">
            <div class="fh5co-main-nav">
                <div class="container-fluid">
                    {!! $navigatie !!}
                </div>

            </div>
        </div>
        <div class="fh5co-text">
            <div class="container" style="width: 95%;">
@yield('banner')


@yield('content')
            </div>
            </div>

    </div>
</div>

<footer class="footer" style="position: relative;
    left: 0;
    bottom: 0;
    height: 100px;
    width: 100%;
    overflow:hidden;
z-index: 9999;">
    <div class="container">
        <div style="float:left"><p style="color:#fb6e14;font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;'">Remise 56</p></div>
        <ul class="social-icon animate pull-right">
            <li><a href="https://www.facebook.com/Remise56/?fref=ts" title="facebook" target="_blank"><i class="fa fa-facebook" style="color:#fb6e14;"></i></a></li> <!-- change the link to social page and edit title-->
            <li><a href="mailto:info@remise56.be" title="twitter" target="_blank"><i class="fa fa-envelope" style="color:#fb6e14;"></i></a></li>
        </ul>
    </div>
</footer>

<div id="fh5co-offcanvas">
    <ul style="list-style-type:none;">
        {{--<li><a href="{{url('brouwerij')}}">Brouwerij</a></li>--}}
        {{--<hr style="border: 1px solid orange;opacity: 0.5;">--}}
        {{--<li><a href="#">Grand Cafe</a></li>--}}
        {{--<hr style="border: 1px solid orange;opacity: 0.5;">--}}
        {!! $navigatieResponsive !!}

    </ul>
</div>
</body>

@yield('extra_scripts')
{{--<script src="{{url('js/jquery.min.js')}}"></script>--}}
<!-- Bootstrap -->
<script src="{{url('js/bootstrap.min.js')}}"></script>
<!-- Bootstrap DateTimePicker -->
<script src="{{url('js/moment.js')}}"></script>
<script src="{{url('js/bootstrap-datetimepicker.min.js')}}"></script>
<!-- Waypoints -->
<script src="{{url('js/jquery.waypoints.min.js')}}"></script>
<!-- Stellar Parallax -->
<script src="{{url('js/jquery.stellar.min.js')}}"></script>

<!-- Flexslider -->
<script src="{{url('js/jquery.flexslider-min.js')}}"></script>
<!-- Main JS -->
<script src="{{url('js/main.js')}}"></script>
</html>