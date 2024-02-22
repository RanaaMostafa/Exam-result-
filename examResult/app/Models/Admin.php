<?php

namespace App\Models;

use App\Models\Login;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{
    use HasFactory;
    protected $fillable = [
        'fullName',
        'email',
        'telephone',
    ];
    // public function login() {
    //     return $this->belongsTo(Login::class);
    // }
}
