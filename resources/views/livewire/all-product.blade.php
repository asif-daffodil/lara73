<div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table">
                    <thead>
                        <th>S.N</th>
                        <th>Picture</th>
                        <th>Name</th>
                        <th>Brand</th>
                        <th>price</th>
                        <th>Action</th>
                    </thead>
                    <tbody>
                        @foreach ($products as $product)
                            <tr>
                                <td>{{$loop->index}}</td>
                                <td>
                                    <img src="{{ asset ('storage/photos/'.$product->proImage->fImage) }}" alt="" class="img-fluid" style="max-height: 40px">
                                </td>
                                <td>{{$product->title}}</td>
                                <td>{{$product->Brand}}</td>
                                <td>{{$product->price}}</td>
                                <td>
                                    <a href="" class="btn btn-warning btn-sm">Update</a>
                                    <a href="" class="btn btn-danger btn-sm">Delete</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
