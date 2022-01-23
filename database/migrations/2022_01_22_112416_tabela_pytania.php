<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TabelaPytania extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pytania', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('tresc');
            $table->text('odpa');
            $table->text('odpb');
            $table->text('odpc');
            $table->text('odpd');
            $table->text('poprawna');
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
