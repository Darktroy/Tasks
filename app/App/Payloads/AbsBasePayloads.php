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
abstract class AbsBasePayloads {
    protected $data = null;
    protected $status = 200 ;
    
    public function __construct($data) {
        $this->data = $data;
    }
    
    public function getData() {
        return $this->data;
    }
    
    public function getStatus() {
        return $this->status;
    }
}
