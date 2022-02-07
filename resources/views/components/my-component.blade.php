<script src="{{asset('js/tinymce.min.js')}}" referrerpolicy="origin"></script>

<script>
    tinymce.init({
        selector: '#mytextarea'
    });
</script>

    <textarea name="" id="mytextarea" class="form-control mb-3" placeholder="Product Description" wire:model='pDes' style="min-height: 200px">
    </textarea>
