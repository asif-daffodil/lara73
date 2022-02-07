<div class="dropdown">
    <a class="nav-icon position-relative text-decoration-none" href="#" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">{{$cartcount}}</span>
    </a>
    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
        @if ($cartcount != 0)
        <table class="table dropdown-item table-hover">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Sub-total</th>
                    <th>action</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $total = 0;
                @endphp
            @foreach ($products  as $product)
                <tr>
                    <td>{{$product->title}}</td>
                    <td>{{'x'.$sameProducts[$product->id]}}</td>
                    <td>
                        @php
                            $sub_total = $sameProducts[$product->id]*$product->price;
                            $total += $sub_total;
                        @endphp
                        {{$sub_total}}
                    </td>
                    <td>
                        <button wire:click.prevent='removeFromCart({{$product->id}})' class="btn-close"></button>
                    </td>
                </tr>
            @endforeach
            <tr>
                <td class="text-end" colspan="2">Total</td>
                <td>{{$total}}</td>
            </tr>
            </tbody>
        </table>
        @else
        <div class="px-3 dropdown-item">
            No product found
        </div>
        @endif
    </div>
</div>
