<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;
class Shoppage extends Component
{
    public $proIds = [];
    public function render()
    {
        $products = Product::orderBy('id', 'desc')->paginate(6);
        return view('livewire.shoppage', compact('products'));
    }

    public function addToCart ($productID)
    {
        array_push($this->proIds, $productID);
        session()->put('proId', $this->proIds);
        $this->emit('updateCart');
    }
}
