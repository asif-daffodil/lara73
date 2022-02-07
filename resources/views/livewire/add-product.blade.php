<div>
    <script src="{{asset('js/tinymce.min.js')}}" referrerpolicy="origin"></script>

    <script>
      tinymce.init({
        selector: '#mytextarea'
      });
    </script>
   <div class="container">
       <div class="row">
           <div class="col-md-8">
               <h2>Add Product</h2>
               @if (session('success'))
                    {{session('success')}}
               @endif
               <form action="" method="POST" wire:submit.prevent='addProFrm'>
                    @csrf
                    <div class="mb-3 form-floating">
                        <input type="text" placeholder="Product Title" class="form-control" wire:model='pTitle'>
                        <label for="">Product Title</label>
                        @error('pTitle')
                            {{$message}}
                        @enderror
                    </div>
                    <div class="mb-3 form-floating">
                        <input type="text" placeholder="Product Price" class="form-control" wire:model='pPrice'>
                        <label for="">Product Price</label>

                    </div>
                    <div class="mb-3 form-floating">
                        <input type="text" placeholder="Brand" class="form-control" wire:model='pBrand'>
                        <label for="">Brand</label>
                        <div class="invalid-feedback"></div>
                    </div>
                    <x-my-component />
                    <div class="mb-3">
                        <input type="file" class="form-control" wire:model="photo">
                        @if ($photo)
                        Photo Preview:
                            <img src="{{ $photo->temporaryUrl() }}" class="img-fluid img-thumbnail" style="max-width: 200px">
                        @endif
                    </div>
                    <div class="mb-3">
                        <input type="file" class="form-control" wire:model="photos" multiple>
                        @if ($photos)
                        Photo Preview:
                            @foreach ($photos as $pic)
                                <img src="{{ $pic->temporaryUrl() }}" class="img-fluid img-thumbnail" style="max-width: 200px">
                            @endforeach
                        @endif
                    </div>
                    <button type="submit" class="btn btn-success text-white">Add Product</button>
               </form>
           </div>
       </div>
   </div>
</div>
