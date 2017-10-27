<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKontingenTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kontingen', function (Blueprint $table) {
            $table->increments('id_kontingen');
            $table->integer('id_event');
            $table->char('cabang', 4);
            $table->string('nama_kontingen');
            $table->date('tgl_lahir')->nullable();
            $table->string('tmp_lahir');
            $table->enum('jabatan', ['Atlit', 'Pelatih', 'Official', 'Wasit']);
            $table->string('no_telp');
            $table->enum('jenis_kel', [ 'Laki-Laki', 'Perempuan']);
            $table->string('tinggi')->nullable();
            $table->string('berat')->nullable();
            $table->text('alamat')->nullable();
            $table->text('foto')->nullable();
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
        Schema::drop('kontingen');
    }
}
