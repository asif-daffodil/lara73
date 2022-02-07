<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function home (){
        $products = Product::orderBy('id', 'desc')->get();
        return view("frontend.index", compact('products'));
    }

    public function about (){
        return view("frontend.about");
    }

    public function shop (){
        $products = Product::orderBy('id', 'desc')->paginate(6);
        return view("frontend.shop" , compact('products'));
    }

    public function product ($id){
        $product = Product::find($id);
        return view("frontend.shop-single", compact('product'));
    }

    public function contact (){
        return view("frontend.contact");
    }
}
