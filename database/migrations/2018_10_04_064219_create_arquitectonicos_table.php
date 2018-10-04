<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArquitectonicosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('arquitectonicos', function (Blueprint $table) {
           $table->increments('id');
            $table->string('nombre');
            $table->integer('extrellas');
            $table->string('principal',50);
            $table->text('fotos');
            $table->integer('ano');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('arquitectonicos');
    }
}
