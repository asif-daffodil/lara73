<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CompController extends Controller
{
    public function index ()
    {
        $myData = [
            'name' => 'Asif Abir',
            'city' => 'Dhaka'
        ];
        return view('mycomp', compact('myData'));
    }

    public function cform ()
    {
        return view('myform');
    }
}
