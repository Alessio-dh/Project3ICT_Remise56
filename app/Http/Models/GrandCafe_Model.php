<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;

class GrandCafe_Model extends Model
{
    public function geefBeginPaginaContent(){
        $content = array(
            'HoofdTitel' => ' <h2 class="heading">Grand Café Remise 56</h2>',
            'HoofdOmschrijving' => '<p class="brouwerijSubHeading">
                        Voor de grote en kleine honger: we verwennen uw smaakpapillen met onze<br />
                        ‘Vlaamse klassiekers’, verrassende foodpairing suggesties, <br />
                        heerlijke internationale tapas hapjes, …. </p>',
            'GeschiedenisTitel' => '<h2 class="heading">Geschiedenis</h2>',
            'GeschiedenisOmschrijving' => '<p>
                            Dit authentieke pand werd gebouwd in 1907 om dienst te doen als stelplaats voor de locomotieven en de passagiersrijtuigen van de tramlijn Diest - Koersel.
                            Aanvankelijk werd hier de stoomtram gestald (jawel, stoomtram), daarna kwamen de gemotoriseerde rijtuigen.
                            In 1954 werd de tramlijn vervangen door een busdienst, en dus werden hier lijnbussen gestald.
                            <br />
                            <br />
                            Vanaf 2001 stond het gebouw leeg… Enkele jaren geleden leek dit gebouw nog bestemd voor de sloophamer.
                            Maar wij gaven het een grondige facelift, met respect voor de eigenheid en het verleden.
                            <br />
                            <br />
                            En vanaf juni 2016 is hier dus een kleine brouwerij en een grand café gevestigd…..
                            We doopten de brouwerij “Remise 56”.
                            “Remise” is de internationaal gebruikte vakterm voor een stelplaats, 56 is ons …huisnummer.
                        </p>',
            'Foto' => '<img src="images/grandCafe1.jpg" style="width: 102%; height: 102%" alt="GrandCafe" class="img-rounded" />',
            'Omschrijving' => '<p class="sub-heading">
                        We zijn dagelijks open vanaf 10 uur. <br/><br />
                        Ben je een ervaren bierkenner, een prille lokale genieter, een vaste klant
                        of een toevallige passant?<br /><br />
                        Iedereen is hier elke dag welkom om in het grand café onze bieren te degusteren, rechtstreeks getapt <br />
                        uit de grote schenktanks boven onze toog.

                    </p>'
        );

        return $content;
    }
}
