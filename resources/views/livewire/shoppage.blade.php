<div class="col-lg-9">
    <div class="row">
        <div class="col-md-6">
            <ul class="list-inline shop-top-menu pb-3 pt-1">
                <li class="list-inline-item">
                    <a class="h3 text-dark text-decoration-none mr-3" href="#">All</a>
                </li>
                <li class="list-inline-item">
                    <a class="h3 text-dark text-decoration-none mr-3" href="#">Men's</a>
                </li>
                <li class="list-inline-item">
                    <a class="h3 text-dark text-decoration-none" href="#">Women's</a>
                </li>
            </ul>
        </div>
        <div class="col-md-6 pb-4">
            <div class="d-flex">
                <select class="form-control">
                    <option>Featured</option>
                    <option>A to Z</option>
                    <option>Item</option>
                </select>
            </div>
        </div>
    </div>
    <div class="row">
        @foreach ($products as $product)

                <div class="col-md-4">
                    <div class="card mb-4 product-wap rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="{{'storage/photos/'.$product->proImage->fImage}}">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="{{route('product', $product->id)}}"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="#"><i class="fas fa-cart-plus" wire:click.prevent="addToCart({{$product->id}})"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="{{route('product', $product->id)}}" class="h3 text-decoration-none">{{$product->title}}</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">৳ {{$product->price}}</p>
                        </div>
                    </div>
                </div>

        @endforeach
        {{$products->links()}}
    </div>
</div>
