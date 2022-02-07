<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;

class Cart extends Component
{
    public $cartcount = 0;
    public $proIds;
    public $sameProducts = [];
    public $listeners = ['updateCart' => 'render'];
    public function render()
    {
        $this->proIds = session()->get('proId') ?? [];
        if (session()->has('proId')) {
            $this->sameProducts = array_count_values($this->proIds);
        }
        $products = Product::whereIn('id', $this->proIds)->get();
        $count = count($this->proIds);
        $this->cartcount = $count ?? 0;
        return view('livewire.cart', compact('products'));
    }
    public function removeFromCart($proId)
    {
        $check = array_count_values($this->proIds);
        $counts = $check[$proId];
        for($i=0; $i < $counts; $i++){
            $key = array_search($proId, $this->proIds);
            unset($this->proIds[$key]);
        }
        session()->forget('proId');
        session()->put('proId', $this->proIds);
    }
}
