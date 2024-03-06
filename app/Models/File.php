<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'path'
    ];

    public function sellers()
    {
        return $this->belongsToMany(Vendor::class, 'vendor_verifications')
            ->using(VendorVerification::class)
            ->withPivot('status_id', 'remarks', 'verified_by')
            ->withTimestamps();
    }

    
}
