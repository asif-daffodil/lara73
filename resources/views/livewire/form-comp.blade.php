<div>
    <div class="container">
        <div class="row py-4">
            <div class="col-md-6">
                @if (session()->has('success'))
                    <div class="position-fixed top-0 end-0 p-3" style="z-index: 11">
                    <div id="liveToast" class="toast bg-primary text-white" role="alert" aria-live="assertive" aria-atomic="true">
                      <div class="toast-body">
                        {{session('success') ?? null}}
                      </div>
                    </div>
                  </div>
                    <script>
                        var toastLiveExample = document.getElementById('liveToast')
                        var toast = new bootstrap.Toast(toastLiveExample)
                        toast.show()
                    </script>
                @endif
                @if (session()->has('danger'))
                    <div class="position-fixed top-0 end-0 p-3" style="z-index: 11">
                    <div id="liveToast" class="toast bg-danger text-white" role="alert" aria-live="assertive" aria-atomic="true">
                      <div class="toast-body">
                        {{session('danger') ?? null}}
                      </div>
                    </div>
                  </div>
                    <script>
                        var toastLiveExample = document.getElementById('liveToast')
                        var toast = new bootstrap.Toast(toastLiveExample)
                        toast.show()
                    </script>
                @endif
                <h2>{{$fTitle}}</h2>
                <form wire:submit.prevent="save" novalidate class="{{$addStu}}">
                      <div class="form-floating mb-3">
                          <input type="text" class="form-control  @error('sname') {{'is-invalid'}} @enderror" placeholder="Student Name" wire:model="sname" >
                          <label for="">Student Name</label>
                          <div class="invalid-feedback">
                            @error('sname')
                                {{$message}}
                            @enderror
                          </div>
                      </div>
                      <div class="form-floating mb-3">
                          <input type="text" class="form-control @error('city') {{'is-invalid'}} @enderror" placeholder="City Name" wire:model="city">
                          <label for="">City Name</label>
                          <div class="invalid-feedback">
                            @error('city')
                                {{$message}}
                            @enderror
                          </div>
                      </div>
                      <input type="submit" class="btn btn-primary" value="Add New Student">
                </form>
                <form wire:submit.prevent="upstudata" novalidate class="{{$upStu}} needs-validation">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control  @error('nsname') {{'is-invalid'}} @enderror" placeholder="Student Name" wire:model="nsname" value="{{$nsname}}" id="floatingInputValue">
                        <label for="floatingInputValue">Student Name</label>
                        <div class="invalid-feedback">
                          @error('nsname')
                              {{$message}}
                          @enderror
                        </div>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control @error('ncity') {{'is-invalid'}} @enderror" placeholder="City Name" wire:model="ncity" value="{{$ncity}}">
                        <label for="">City Name</label>
                        <div class="invalid-feedback">
                          @error('ncity')
                              {{$message}}
                          @enderror
                        </div>
                    </div>
                    <input type="submit" class="btn btn-primary" value="Update New Student">
                    <input type="button" class="btn btn-success" value="Back" wire:click="back">
              </form>
            </div>
            <div class="col-md-6">
                    <h2>Student Data</h2>
                    <table class="table table-light table-striped table-hover">
                        <tr>
                            <td colspan="3">
                                <div class="">
                                    <input type="text" placeholder="Search..." class="form-control" wire:model="srcStu">
                                </div>
                            </td>
                            <td>
                                <select name="" id="" class="form-select" wire:model="StuPerPage">
                                    <option value="5">5</option>
                                    <option value="10">10</option>
                                    <option value="15">15</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>S.N</th>
                            <th>Name</th>
                            <th>City</th>
                            <th>Action</th>
                        </tr>
                    @if ($AllStudents->count() > 0)
                    @php
                        $x = ($AllStudents->currentPage() - 1)* $AllStudents->perPage() + 1;
                    @endphp
                    @foreach ($AllStudents as $AllStudent)
                        <tr>
                            <td>{{$x++}}</td>
                            <td>{{$AllStudent->name}}</td>
                            <td>{{$AllStudent->city}}</td>
                            <td>
                                <a wire:click="update({{$AllStudent->id}})" class="btn btn-warning btn-sm">Update</a>
                                <a wire:click="delete({{$AllStudent->id}})" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    @endforeach
                    @else
                        <tr>
                            <td colspan="4">No student found</td>
                        </tr>
                    @endif
                    </table>
                    {{$AllStudents->links()}}
            </div>
        </div>
    </div>
    <div class="container-fluid fixed-top {{$dAlert}}">
        <div class="row min-vh-100 d-flex">
            <div class="w-100 h-100 fixed-top" style="background: rgba(0,0,0,0.6); z-index: 50;" wire:click="CancelDelete"></div>
            <div class="col-md-5 border rounded shadow m-auto bg-white p-5 position-relative" style="z-index: 100;">
                <div class="fs-4 fw-lighter text-danger mb-4">Do you realy want to delete the data?</div>
                <a wire:click="delStu" class="btn btn-danger px-3">Yes</a>
                <a wire:click="CancelDelete" class="btn btn-success px-3">No</a>
            </div>
        </div>
    </div>
</div>



