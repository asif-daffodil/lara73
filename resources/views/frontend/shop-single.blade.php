@extends("layouts.frontend")
@section("mainContent")
<section class="bg-light">
    <div class="container pb-5">
        <div class="row">
            <div class="col-lg-5 mt-5">
                <div class="card mb-3">
                    <img class="card-img img-fluid" src="{{asset('storage/photos/'.$product->proImage->fImage)}}" alt="Card image cap" id="product-detail">
                </div>
                <div class="row">
                    <!--Start Controls-->
                    <div class="col-1 align-self-center">
                        <a href="#multi-item-example" role="button" data-bs-slide="prev">
                            <i class="text-dark fas fa-chevron-left"></i>
                            <span class="sr-only">Previous</span>
                        </a>
                    </div>
                    <!--End Controls-->
                    <!--Start Carousel Wrapper-->
                    <div id="multi-item-example" class="col-10 carousel slide carousel-multi-item" data-bs-ride="carousel">
                        <!--Start Slides-->
                        <div class="carousel-inner product-links-wap" role="listbox">

                            <!--First slide-->
                            @php
                                $imgs = explode(',', $product->proImage->allImages);
                                $x = 1;
                            @endphp
                            @foreach ($imgs as $img)
                            @if (($loop->iteration - 1) % 3 == 0)
                                <div class="carousel-item active">
                                    <div class="row">
                            @endif

                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="{{asset('storage/photos/'.$img)}}" alt="Product Image 1">
                                            </a>
                                        </div>
                                        @if ($x == 3)
                                        @php
                                            $x = 1;
                                        @endphp
                                                </div>
                                            </div>
                                        @endif
                            @php
                                $x++;
                            @endphp


                            @endforeach
                        </div>
                        <!--End Slides-->
                    </div>
                    <!--End Carousel Wrapper-->
                    <!--Start Controls-->
                    <div class="col-1 align-self-center">
                        <a href="#multi-item-example" role="button" data-bs-slide="next">
                            <i class="text-dark fas fa-chevron-right"></i>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <!--End Controls-->
                </div>
            </div>
            <!-- col end -->
            <div class="col-lg-7 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h1 class="h2">{{$product->title}}</h1>
                        <p class="h3 py-2">{{$product->price}}</p>
                        <p class="py-2">
                            <i class="fa fa-star text-warning"></i>
                            <i class="fa fa-star text-warning"></i>
                            <i class="fa fa-star text-warning"></i>
                            <i class="fa fa-star text-warning"></i>
                            <i class="fa fa-star text-secondary"></i>
                            <span class="list-inline-item text-dark">Rating 4.8 | 36 Comments</span>
                        </p>
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <h6>Brand: </h6>
                            </li>
                            <li class="list-inline-item">
                                <p class="text-muted"><strong>{{$product->brand}}</strong></p>
                            </li>
                        </ul>

                        <h6>Description:</h6>
                        <p>
                            <span>{{substr($product->description, 0, 50)}}</span><span id="ddd" style="cursor: pointer">...</span><span class="d-none" id="dtls">{{substr($product->description, 50) }}</span>
                        </p>
                        <script>
                            document.querySelector("#ddd").addEventListener('click', ()=>{
                                document.querySelector("#dtls").classList.remove('d-none');
                                document.querySelector("#ddd").classList.add('d-none');
                            })
                        </script>
                        <form action="" method="GET">
                            <input type="hidden" name="product-title" value="Activewear">
                            <div class="row">
                                <div class="col-auto">
                                    <ul class="list-inline pb-3">
                                        <li class="list-inline-item text-right">
                                            Quantity
                                            <input type="hidden" name="product-quanity" id="product-quanity" value="1">
                                        </li>
                                        <li class="list-inline-item"><span class="btn btn-success" id="btn-minus">-</span></li>
                                        <li class="list-inline-item"><span class="badge bg-secondary" id="var-value">1</span></li>
                                        <li class="list-inline-item"><span class="btn btn-success" id="btn-plus">+</span></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row pb-3">
                                <div class="col d-grid">
                                    <button type="submit" class="btn btn-success btn-lg" name="submit" value="addtocard">Add To Cart</button>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

