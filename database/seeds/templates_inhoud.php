<?php

use Illuminate\Database\Seeder;

class templates_inhoud extends DatabaseSeeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('templates_inhoud')->insert([
            'templateNaam' => 'hoofdBlok',
            'templateInhoud' => 'HoofdTitel:<h1>test</h1>;HoofdOmschrijving:<h2>test2</h2>',
        ]);
        DB::table('templates_inhoud')->insert([
            'templateNaam' => 'Geschiedenis',
            'templateInhoud' => 'GeschiedenisTitel:<h1>gesch</h1>;GeschiedenisOmschrijving:<h2>gesch2</h2>',
        ]);
        DB::table('templates_inhoud')->insert([
            'Bier1Foto§<img src="images/remiseblond2.jpg" style="width: 400px; height: 500px" alt="RemiseBlond" class="img-circle"/>@Bier1Titel§<h1 class="brouwerijSubTitles">REMISE TRIPEL</h1>@Bier1Omschrijving§<p class="sub-heading">Voor onze tripel gebruiken we de beste bleke mouten en bleke kandijsuikers. Hij is met zijn 8.5 % alcohol een ‘stevige blonde’.
                        <br>
                        <br>
                        Een fruitige neus, en een mooie zachte bitterheid, een stroblonde kleur, en een klein toetsje hoparoma,….
                        Ongefilterd en ongepasteuriseerd.
                        <br>
                        <br>
                        Echt een aanrader voor wie houdt van een mooie tripel….
                    </p>'
        ]);
    }
}
