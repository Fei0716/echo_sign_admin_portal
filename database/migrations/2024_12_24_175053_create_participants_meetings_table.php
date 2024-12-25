<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('participants_meetings', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("participant_id");
            $table->unsignedBigInteger("meeting_id");
            $table->timestamps();

            $table->foreign("participant_id")->references("id")->on("participants")->onDelete("cascade");
            $table->foreign("meeting_id")->references("id")->on("meetings")->onDelete("cascade");
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('participants_meetings');
    }
};
