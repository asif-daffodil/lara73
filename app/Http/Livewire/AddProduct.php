<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;
use App\Models\proImage;
use Livewire\WithFileUploads;

class AddProduct extends Component
{
    use WithFileUploads;
    public $pTitle, $pPrice, $pBrand, $pDes, $photo;
    public $photos = [];
    protected $rules = [
        'pTitle' => 'required',
        'pPrice' => 'required',
        'pBrand' => 'required',
        'pDes' => 'required',
        'photo' => 'image',
        'photos.*' => 'image'
    ];

    protected $messages = [
        'pTitle.required' => 'Post title is required',
        'pPrice.required' => 'Post title is required',
        'pBrand.required' => 'Post title is required',
        'pDes.required' =>'Post title is required',
        'photo.image' =>'Post title is required'
    ];

    public function render()
    {
        return view('livewire.add-product');
    }

    public function addProFrm () {
        $this->validate();
        $Product = new Product;
        $Product->title = $this->pTitle;
        $Product->price = $this->pPrice;
        $Product->Brand = $this->pBrand;
        $Product->description = $this->pDes;

        $proImage = new proImage;
        $photoName = rand().uniqid().".".$this->photo->extension();
        $this->photo->storePubliclyAs('public/photos', $photoName);
        foreach ($this->photos as $photo) {
            $picName = rand().uniqid().".".$photo->extension();
            $photo->storePubliclyAs('public/photos', $picName);
            $allName[] = $picName;
        }
        $proImage->fImage = $photoName;
        $proImage->allImages = implode(',',$allName);
        $proImage->save();
        $Product->proImage_id = $proImage->id;
        $Product->save();
        $this->pTitle = $this->pPrice = $this->pBrand = $this->pDes = $this->photo = null;
        return session()->flash('success', 'Product added successfully');
    }
}
