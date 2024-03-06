<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\Pivot;

class VendorVerification extends Pivot
{
    protected $table = 'vendor_verifications';

    // Add your custom pivot model logic here

    public function status()
    {
        return $this->belongsTo(VendorVerificationStatus::class, 'status_id');
    }
}
