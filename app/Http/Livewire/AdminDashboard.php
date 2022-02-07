<?php

namespace App\Http\Livewire;

use Livewire\Component;

class AdminDashboard extends Component
{
    public $pc = null;
    public $pro_itm = null;
    public $apactive = null;
    public $addpactive = null;
    public $addPro = false;
    public $allPro = false;
    public $pae = "false";
    public $subMenuList = ['apactive', 'addpactive'];
    public $subComp = ['addPro', 'allPro'];
    public function render()
    {
        return view('livewire.admin-dashboard');
    }

    public function products () {
        $this->pc = ($this->pc == "collapsed")? null:"collapsed";
        $this->pro_itm = ($this->pro_itm == "show")? null:"show";
        $this->pae = ($this->pae == "false")? "true":"false";
    }

    public function subComp ($data1, $data2){
        foreach($this->subMenuList as $sml){
            if($sml == $data1){
                $this->$sml = "active";
                foreach ($this->subComp as $sc){
                    if($sc == $data2){
                        $this->$sc = true;
                    }else{
                        $this->$sc = false;
                    }
                }
            }else{
                $this->$sml = null;
            }
        }
    }

    public function apactive () {
        $this->subComp("apactive", "allPro");
    }

    public function AddProduct () {
        $this->subComp("addpactive", "addPro");
    }

}
