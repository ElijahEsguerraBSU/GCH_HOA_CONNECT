<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('tbl_vehicle_homeowners_supporting_documents', function (Blueprint $table) {
            $table->string('vehicle_sticker_form')->nullable()->after('supporting_documents_attachments');
        });
    }

    public function down(): void
    {
        Schema::table('tbl_vehicle_homeowners_supporting_documents', function (Blueprint $table) {
            $table->dropColumn('vehicle_sticker_form');
        });
    }
};

