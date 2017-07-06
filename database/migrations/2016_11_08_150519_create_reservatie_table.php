<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReservatieTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reservaties', function (Blueprint $table) {
            $table->increments('id');
            $table->dateTime('datumtijd');
            $table->string('email');
            $table->string('shift');
            $table->string('soort');
            $table->integer('aantal_personen');
            $table->string('voornaam');
            $table->string('naam');
            $table->string('telefoon');
            $table->string('nota');
            $table->string('bevestigd');
            $table->string('bevestigingscode');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
