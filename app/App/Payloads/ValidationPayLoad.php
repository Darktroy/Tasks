<?php
namespace App\App\Payloads;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ValidationPayLoad
 *
 * @author root
 */
class ValidationPayLoad extends AbsBasePayloads {
    protected $status = 422 ;
    
    public function getData() {
        return ['errors'=> $this->data];
    }
    
}
