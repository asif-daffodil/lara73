<?php

namespace App\Http\Livewire;

use App\Models\Sfrom;
use Livewire\Component;
use Livewire\WithPagination;

class FormComp extends Component
{
    use WithPagination;
    public $sname;
    public $nsname;
    public $city;
    public $ncity;
    public $sclass;
    public $addStu;
    public $upStu = "d-none";
    public $stuId;
    public $fTitle = "Add Student";
    public string $dAlert="d-none";
    public int $delId = 0;
    public int $StuPerPage = 5;
    public $srcStu = "";

    protected $paginationTheme = 'bootstrap';

    public function render()
    {
        $AllStudents = Sfrom::orderBy('created_at', 'desc')->where('name', 'like', '%'.$this->srcStu.'%')->orWhere('city', 'like', '%'.$this->srcStu.'%')->paginate($this->StuPerPage);
        return view('livewire.form-comp', compact('AllStudents'));
    }

    protected $rules = [
        'sname' => 'required|min:3|max:50',
        'city' => 'required',
    ];

    protected $messages = [
        'sname.required' => 'Student name is required',
        'sname.min' => 'Student name is very small',
        'sname.max' => 'Student name is very big',
        'city.required' => 'City name is required',
    ];

    public function save(){
        $this->validate();
        $Sfrom = new Sfrom;
        $Sfrom->name = $this->sname;
        $Sfrom->city = $this->city;
        $Sfrom->save();
        session()->flash("success", "Student added successfully");
        $this->sname = $this->city = null;
    }

    public function update ($upid){
        $this->stuId = $upid;
        $upStuPreData = Sfrom::find($upid);
        $this->nsname = $upStuPreData->name;
        $this->ncity = $upStuPreData->city;
        $this->upStu = null;
        $this->addStu = "d-none";
        $this->fTitle = "Update Student";
    }

    public function back () {
        $this->upid = $this->stuId = $this->nsname = $this->ncity = $this->addStu = null;
        $this->upStu = "d-none";
        $this->fTitle = "Add Student";
    }

    public function upstudata () {
        $stuId = $this->stuId;
        $upstu = Sfrom::findOrFail($stuId);
        $upstu->name = $this->nsname;
        $upstu->city = $this->ncity;
        $upstu->save();
        session()->flash("success", "Student updated successfully");
        $this->back();
    }

    public function CancelDelete () {
        $this->delId = 0;
        $this->dAlert = "d-none";
    }

    public function delete ($delId) {
        $this->delId = $delId;
        $this->dAlert = "";
    }

    public function delStu () {
        $delId = $this->delId;
        $delData = Sfrom::findOrFail($delId);
        $delData->delete();
        $this->dAlert = "d-none";
        session()->flash("danger", "Student deleted successfully");
    }
}
