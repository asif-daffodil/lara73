<div class="container">
    <div class="row min-vh-100 d-flex">
        <div class="col-md-6 m-auto d-flex justify-content-center align-items-center flex-column">
            <button class="btn btn-primary w-100 mb-3" wire:click='increment'>+</button>
            {{$count}}
            <button class="btn btn-primary w-100 mt-3" wire:click='decrement'>-</button>
        </div>
    </div>

    <div class="row min-vh-100 d-flex">
        <div class="col-md-6 m-auto">
            <div class="form-floating mb-3">
                <input type="text" placeholder="Your Name" class="form-control" wire:model.debounce.500ms="yname" >
                <label for="">Your Name</label>
            </div>
            {{$yname}}
        </div>
    </div>

    <div class="row min-vh-100 d-flex">
        <div class="col-md-6 m-auto">
            {{$myName}} <br>
            {{$myCity}}
        </div>
    </div>
</div>
