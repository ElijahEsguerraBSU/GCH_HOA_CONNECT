<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Str;

class tbl_tenant_list extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'tbl_tenant_list';
    protected $primaryKey = 'id';
    protected $fillable = [
        'user_id',
        'full_name',
        'relationship',
        'contact_number',
        'email',
        'photo',
        'status',
    ];

    protected $appends = ['photo_url'];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function getPhotoUrlAttribute(): string
    {
        if (empty($this->photo)) {
            return asset('img/user.jpg');
        }

        $photo = $this->photo;

        if (Str::startsWith($photo, ['http://', 'https://'])) {
            return $photo;
        }

        if (Str::startsWith($photo, ['/storage', 'storage/'])) {
            return asset(ltrim($photo, '/'));
        }

        if (Str::startsWith($photo, ['tenants/'])) {
            return asset('storage/' . $photo);
        }

        return asset('storage/tenants/' . ltrim($photo, '/'));
    }
}
