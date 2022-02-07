<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;

class AllProduct extends Component
{
    public $products;
    public function render()
    {
        $this->products = Product::all();
        return view('livewire.all-product');
    }
}
