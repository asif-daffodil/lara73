@extends("layouts.frontend")
@section("mainContent")
<x-frontend.slider />


<section class="container py-5">
    <div class="row text-center pt-3">
        <div class="col-lg-6 m-auto">
            <h1 class="h1">Categories of The Month</h1>
            <p>
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                deserunt mollit anim id est laborum.
            </p>
        </div>
    </div>
    <div class="row">
        @foreach ($products as $product)
            @if ($loop->iteration <= 3)
                <div class="col-12 col-md-4 p-5 mt-3">
                    <a href="#">
                        <img src="{{ asset ('storage/photos/'.$product->proImage->fImage) }}" class="img-fluid w-100 rounded-circle border" >
                    </a>
                    <h5 class="text-center mt-3 mb-3">{{$product->title}}</h5>
                    <p class="text-center"><a href="" class="btn btn-success">Go Shop</a></p>
                </div>
            @endif
        @endforeach
    </div>
</section>

<section class="bg-light">
    <div class="container py-5">
        <div class="row text-center py-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Featured Product</h1>
                <p>
                    Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                    Excepteur sint occaecat cupidatat non proident.
                </p>
            </div>
        </div>
        <div class="row">
            @foreach ($products as $product)
                @if ($loop->iteration > 3 && $loop->iteration <= 6)
                    <div class="col-12 col-md-4 mb-4">
                        <div class="card h-100">
                            <a href="shop-single.html">
                                <img src="{{asset('storage/photos/'.$product->proImage->fImage)}}" class="card-img-top" alt="...">
                            </a>
                            <div class="card-body">
                                <ul class="list-unstyled d-flex justify-content-between">
                                    <li>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-muted fa fa-star"></i>
                                        <i class="text-muted fa fa-star"></i>
                                    </li>
                                    <li class="text-muted text-right">$240.00</li>
                                </ul>
                                <a href="shop-single.html" class="h2 text-decoration-none text-dark">Gym Weight</a>
                                <p class="card-text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt in culpa qui officia deserunt.
                                </p>
                                <p class="text-muted">Reviews (24)</p>
                            </div>
                        </div>
                    </div>
                @endif
            @endforeach
        </div>
    </div>
</section>
@endsection
