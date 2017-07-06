@extends('layouts.master_layout')

@section('banner')

@stop

<!-- CONTENT VAN MENU zet je hier -->

@section('content')
    <div id="fh5co-menus" data-section="menu">
        <div class="container">
            <div class="row text-center fh5co-heading row-padded">
                <div class="col-md-8 col-md-offset-2">
                    <h2 class="heading to-animate">Menukaart</h2>
                    @foreach($aGegevens['categorien'] as $categorie)
                        <h2 class="to-animate">{{$categorie->categorie}}</h2>
                        <button type="button" class="btn btn-menukaart to-animate" data-toggle="collapse" data-target="#{{$categorie->categorie}}">Open/Sluit {{$categorie->categorie}}</button>
                    @endforeach
                </div>
            </div>
            <div class="row row-padded">
                @foreach($aGegevens['categorien'] as $categorie)
                    <div id="{{strtoupper($categorie->categorie)}}" class="collapse">
                        <div class="col-md-12">
                            <div class="fh5co-food-menu to-animate-2">
                        @foreach($aGegevens['subcategorien'] as $subcategorie)
                            @if($subcategorie->categorie_id == $categorie->id)
                                    <h2>{{$subcategorie->subcategorie}}</h2>
                                    <ul>
                                        @foreach($aGegevens[$subcategorie->id] as $menuItem)
                                            @if(isset($menuItem))
                                            @if($menuItem->zichtbaar)
                                                <li>
                                                    <div class="fh5co-food-desc">

                                                        <div>
                                                            <h3>{{$menuItem->titel}}</h3>
                                                            @if(isset($menuItem->beschrijving))
                                                                <p>{{$menuItem->beschrijving}}</p>
                                                            @endif
                                                        </div>
                                                    </div>
                                                    <div class="fh5co-food-pricing">
                                                        € {{$menuItem->prijs}}
                                                    </div>
                                                </li>
                                            @endif
                                            @endif
                                        @endforeach
                                    </ul>
                                    @endif
                                    @endforeach
                                </div>
                                </div>
                                </div>
                @endforeach
                {{--<div id="dranken" class="collapse">--}}
                    {{--<div class="col-md-12">--}}
                        {{--<div class="fh5co-food-menu to-animate-2">--}}
                            {{--<h2 class="fh5co-drinks">Bieren</h2>--}}
                            {{--<ul>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>Remise Trippel 33cl</h3>--}}
                                            {{--<p>8,5% Alcohol</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 3,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>Remise Dubbel 33cl</h3>--}}
                                            {{--<p>7% Alcohol</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 3,20--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>"56" Superpils 33cl</h3>--}}
                                            {{--<p>5,6% Alcohol</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,90--}}
                                    {{--</div>--}}
                                {{--</li>--}}

                            {{--</ul>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="col-md-12">--}}
                        {{--<div class="fh5co-food-menu to-animate-2">--}}
                            {{--<h2 class="fh5co-dishes">Bubbels</h2>--}}
                            {{--<ul>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>CAVA Don Jaime Brut</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 5,90--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>PROSECCO La Tordera </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 5,90--}}
                                    {{--</div>--}}
                            {{--</ul>--}}
                        {{--</div>--}}
                    {{--</div>--}}

                    {{--<div class="col-md-12">--}}
                        {{--<div class="fh5co-food-menu to-animate-2">--}}
                            {{--<h2 class="fh5co-dishes">Sterke dranken</h2>--}}
                            {{--<ul>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>RUM HAVANA 3 ANOS</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 6,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>VODKA ABSOLUT </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 6,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>JAMESON</h3>--}}
                                            {{--<p>Whiskey</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 6,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>THE GLENLIVET SINGLE MALT </h3>--}}
                                            {{--<p>Whiskey</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 8,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>COGNAC MARTELL VS</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 7,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                            {{--</ul>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="col-md-12">--}}
                        {{--<div class="fh5co-food-menu to-animate-2">--}}
                            {{--<h2 class="fh5co-drinks">Huiswijnen</h2>--}}
                            {{--<ul>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>ROOD / ROSE / WIT </h3>--}}
                                            {{--<p>per glas</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 3,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>PASION BLUE CHARDONNAY (blauw!))</h3>--}}
                                            {{--<p>per glas</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 6,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                            {{--</ul>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="col-md-12">--}}
                        {{--<div class="fh5co-food-menu to-animate-2">--}}
                            {{--<h2 class="fh5co-drinks">Warme Dranken</h2>--}}
                            {{--<ul>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>KOFFIE</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>KOFFIE DECA</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>ESPRESSO </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>RISTRETTO</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>CAPPUCCINO</h3>--}}
                                            {{--<p>Met gestoomde melk</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,70--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>LATTE MACCHIATO</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,90--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>CAFE SHAKERATO</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 5,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>WARME MELK</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>WARME CHOCOMELK </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>THEE</h3>--}}
                                            {{--<p>Rozenbottel, Linde, Zwarte, Groene, Fruit, Verse munt</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>Supplement Slagroom</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 0,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                            {{--</ul>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="col-md-12">--}}
                        {{--<div class="fh5co-food-menu to-animate-2">--}}
                            {{--<h2 class="fh5co-drinks">Frisdranken</h2>--}}
                            {{--<ul>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>COCA-COLA</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>COCA-COLA LIGHT</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>COCA-COLA ZERO</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>FANTA</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>SPRITE</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>SPA REINE</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>SPA BRUIS</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>SPA REINE 1L</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 9,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>SPA BRUIS 1L</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 9,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>GINI</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>SCHWEPPES AGRUM</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>SCHWEPPES TONIC</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>LIPTON ICE TEA</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>KOUDE CECEMEL</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>FRISTI </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,40--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>TONISSTEINER SINAAS</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>TONISSTEINER CITROEN</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>TONISSTEINER VRUCHTENKORF</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>TONISSTEINER NARANJA</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>LOOZA ORANGE</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>LOOZA APPEL-KERS</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>OXFAM FAIRTRADE WORLDSHAKE</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>OXFAM FAIRTRADE ORANGE</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>OXFAM FAIRTRADE TROPICAL</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 2,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>AQUARIUS LEMON </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 3,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>CHARITEA MATE</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 3,60--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>CAWSTON RABARBER/APPEL</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 3,60--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>BELVOIR BIO VLIERBLOESEM</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 3,60--}}
                                    {{--</div>--}}
                                {{--</li>--}}

                            {{--</ul>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="col-md-12">--}}
                        {{--<div class="fh5co-food-menu to-animate-2">--}}
                            {{--<h2 class="fh5co-drinks">Degistieven</h2>--}}
                            {{--<ul>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>LIMONCELLO</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 5,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>SMEETS</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 4,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>BAILEYS</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 6,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>JAGERMEISTER</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 5,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>AMARO MONTENEGRO</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 6,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                            {{--</ul>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="col-md-12">--}}
                        {{--<div class="fh5co-food-menu to-animate-2">--}}
                            {{--<h2 class="fh5co-drinks">Gin Tonic</h2>--}}
                            {{--<ul>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>BOMBAY SAPPHIRE</h3>--}}
                                            {{--<p>& Schweppes</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 9,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>HENDRICK’S </h3>--}}
                                            {{--<p>& Fentimans</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 12,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>G’VINE FLORAISON </h3>--}}
                                            {{--<p>& Fever-Tree</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 15,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                            {{--</ul>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="col-md-12">--}}
                        {{--<div class="fh5co-food-menu to-animate-2">--}}
                            {{--<h2 class="fh5co-drinks">Cocktails</h2>--}}
                            {{--<ul>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>PEDRINO</h3>--}}
                                            {{--<p>(vodka, passoa, batida, ananassap)  </p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 8,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>ORANGE BLOSSOM</h3>--}}
                                            {{--<p>(apricot brandy, vodka, sinaas, canada dry)</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 8,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>NEGRONI</h3>--}}
                                            {{--<p>(Campari, rode martini, gin)</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 8,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>MOJITO</h3>--}}
                                            {{--<p>(rum, rietsuiker, limoensap, munt) </p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 8,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>CUBA LIBRE</h3>--}}
                                            {{--<p>(rum, cola, limoensap)</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 8,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>WHISKY COLA</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 7,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>VODKA COLA</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 7,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>VODKA ORANGE</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 7,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>CAMPARI ORANGE</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 7,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>ORANGE FREEZE ZOET</h3>--}}
                                            {{--<p>Alcoholvrij (sinaas, ananas, citroen, limoen, ginger-ale) </p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 7,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>ORANGE FREEZE BITTER</h3>--}}
                                            {{--<p>Alcoholvrij (sinaas, ananas, citroen, limoen, crodino)</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 7,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                            {{--</ul>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="col-md-12">--}}
                        {{--<div class="fh5co-food-menu to-animate-2">--}}
                            {{--<h2 class="fh5co-drinks">Aperitieven</h2>--}}
                            {{--<ul>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>APEROL SPRITZ </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 8,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>CAMPARI ORANGE </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 7,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>CAMPARI </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 5,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>MARTINI WIT</h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 5,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>MARTINI ROOD </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 5,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>PORTO SANDEMAN </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 5,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>RICARD </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 5,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>NEGRONI </h3>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 8,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>MOJITO </h3>--}}
                                            {{--<p>(rum, rietsuiker, limoensap, munt)</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 8,50--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>CUBA LIBRE </h3>--}}
                                            {{--<p>(rum, cola, limoensap) </p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 8,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                                {{--<li>--}}
                                    {{--<div class="fh5co-food-desc">--}}

                                        {{--<div>--}}
                                            {{--<h3>CRODINO </h3>--}}
                                            {{--<p>Alcoholvrij</p>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="fh5co-food-pricing">--}}
                                        {{--€ 3,00--}}
                                    {{--</div>--}}
                                {{--</li>--}}
                            {{--</ul>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<div class="row text-center fh5co-heading row-padded">--}}
                {{--<div class="col-md-8 col-md-offset-2">--}}
                    {{--<h2 class="to-animate">GERECHTEN</h2>--}}
                    {{--<button type="button" class="btn btn-menukaart to-animate" data-toggle="collapse" data-target="#gerechten">Open/Sluit de gerechtenkaart</button>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<div id="gerechten" class="collapse">--}}
                {{--<div class="col-md-12">--}}
                    {{--<div class="fh5co-food-menu to-animate-2">--}}
                        {{--<h2 class="fh5co-dishes">Fingerfood</h2>--}}
                        {{--<ul>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>NACHOS “56”</h3>--}}
                                        {{--<p>(nachos, jalapeno-pepers, tomaat, ajuin, cheddar, mozzarella, olijven, varkensvlees, guacemole, zure room, tomatensalsa)</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 12,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>NACHOS “56” VEGGIE</h3>--}}
                                        {{--<p>(zonder varkensvlees)</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 12,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>KIPPENVLEUGELS</h3>--}}
                                        {{--<p>ovengebakken , pittig gekruid (4 à 5 per persoon)</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 8,50--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>BORDJE GEMENGD</h3>--}}
                                        {{--<p>(olijven, serrano-ham, bresoala-ham, feta,--}}
                                            {{--zongedroogde tomaatjes, goudablokjes)</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 9,50--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>SPARE RIBS</h3>--}}
                                        {{--<p>(3 dubbele ribbetjes, gelakt, met BBQ dipsaus) </p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 8,50--}}
                                {{--</div>--}}
                            {{--</li>--}}
                        {{--</ul>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="col-md-12">--}}
                    {{--<div class="fh5co-food-menu to-animate-2">--}}
                        {{--<h2 class="fh5co-dishes">Hoofdgerechten</h2>--}}
                        {{--<ul>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>VERSE DAGSOEP</h3>--}}
                                        {{--<p>Met brood</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 4,50--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>TOMATENSOEP MET BALLETJES</h3>--}}
                                        {{--<p>Met brood</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 4,50--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>BURGER “56”</h3>--}}
                                        {{--<p>(meloenpitbroodje, groenten, rundshamburger, wafelfrietjes)</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 14,80--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>CROQUE MONSIEUR ENKEL</h3>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 6,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>CROQUE MONSIEUR DUBBEL</h3>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 8,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>CROQUE MADAME ENKEL</h3>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 7,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>CROQUE MADAME DUBBEL</h3>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 9,50--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>SPAGHETTI BOLOGNAISE KLEIN</h3>--}}
                                        {{--<p>Met brood (Kinderspaghetti)</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 8,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>SPAGHETTI BOLOGNAISE GROOT</h3>--}}
                                        {{--<p>Met brood</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 11,50--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>TAGLIOLINI SCAMPI</h3>--}}
                                        {{--<p>(pesto, pijnboompit, parmesaan, tomaat, scampi) </p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 17,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>STOOFVLEES</h3>--}}
                                        {{--<p>Bereid met Remise Dubbel, slaatje, frietjes</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 16,50--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>MOSSELPAPILLOT  “THAI”</h3>--}}
                                        {{--<p>(mosselen, look, citroengras, limoen,--}}
                                            {{--rode ajuin, pijpajuin)</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 10,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>MOSSELEN NATUUR (1,2kg)</h3>--}}
                                        {{--<p>Met frietjes</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 20,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>MOSSELEN WITTE WIJN (1,2kg)</h3>--}}
                                        {{--<p>Met frietjes</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 23,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>MOSSELEN REMISE TRIPEL (1,2kg)</h3>--}}
                                        {{--<p>Met frietjes</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 23,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>SPARE RIBS</h3>--}}
                                        {{--<p>Huisgemarineerd, slaatje, frietjes</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 18,50--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>HALVE HAAN</h3>--}}
                                        {{--<p>Met appelmoes en frietjes</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 15,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>SALADE CAPRESE</h3>--}}
                                        {{--<p>(sla, buffelmozzarella, tomaat, huisgemaakte pesto, balsamico-dressing bereid met Remise Dubbel)</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 14,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>SALADE SCAMPI</h3>--}}
                                        {{--<p>(ijsbergsla, yoghurt, witloof, rode biet, scampi)</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 18,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>SALADE KIP</h3>--}}
                                        {{--<p>(mesclun, mais, kool, rozijnen, ananas, kip) </p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 18,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>LANGE HAMBURGER</h3>--}}
                                        {{--<p>Frikandel/Curryworst met frietjes</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 7,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>Onze salades worden standaard geserveerd met brood, meerprijs frietjes</h3>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 2,00--}}
                                {{--</div>--}}
                            {{--</li>--}}

                        {{--</ul>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="col-md-12">--}}
                    {{--<div class="fh5co-food-menu to-animate-2">--}}
                        {{--<h2 class="fh5co-drinks">Desserts</h2>--}}
                        {{--<ul>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>VERSE TAART</h3>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 2,50--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>PANNENKOEKEN</h3>--}}
                                        {{--<p>siroop, witte suiker, potsuiker, bruine suiker, confituur, Nutella</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 4,90--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>PANNENKOEKEN</h3>--}}
                                        {{--<p>met vanille-ijs en chocoladesaus</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 7,90--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>PANNENKOEKEN</h3>--}}
                                        {{--<p>met vers fruit</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 8,90--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>PANNENKOEKEN</h3>--}}
                                        {{--<p>supplement slagroom</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 1,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>KINDERIJSJE</h3>--}}
                                        {{--<p>(vanille 1 bol) </p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 3,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>DAME BLANCHE</h3>--}}
                                        {{--<p>(vanille 3 bollen)</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 7,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>COUPE VERS FRUIT</h3>--}}
                                        {{--<p>(vanille 3 bollen)</p>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 9,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>EXTRA BOL IJS</h3>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 2,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>MILKSHAKE VANILLE</h3>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 4,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                            {{--<li>--}}
                                {{--<div class="fh5co-food-desc">--}}

                                    {{--<div>--}}
                                        {{--<h3>MILKSHAKE CHOCOLADE</h3>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                {{--<div class="fh5co-food-pricing">--}}
                                    {{--€ 4,00--}}
                                {{--</div>--}}
                            {{--</li>--}}
                        {{--</ul>--}}
                    {{--</div>--}}
                {{--</div>--}}

            </div>
        </div>
    </div>
@stop

@section('extra_scripts')
        <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Bootstrap DateTimePicker -->
    <script src="js/moment.js"></script>
    <script src="js/bootstrap-datetimepicker.min.js"></script>
    <!-- Waypoints -->
    <script src="js/jquery.waypoints.min.js"></script>
    <!-- Stellar Parallax -->
    <script src="js/jquery.stellar.min.js"></script>

    <!-- Flexslider -->
    <script src="js/jquery.flexslider-min.js"></script>
    <script>
        $(function () {
            $('#date').datetimepicker();
        });
    </script>
    <!-- Main JS -->
    <script src="js/main.js"></script>
@stop