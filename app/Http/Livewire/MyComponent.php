<?php

namespace App\Http\Livewire;

use Livewire\Component;

class MyComponent extends Component
{
    public $count = 1;
    public $myName;
    public $myCity;
    public $yname;

    public function render()
    {
        return view('livewire.my-component');
    }

    public function increment ()
    {
        $this->count++;
    }

    public function decrement ()
    {
        $this->count--;
    }

    public function mount ($myData)
    {
        $this->myName = $myData['name'];
        $this->myCity = $myData['city'];
    }
}
