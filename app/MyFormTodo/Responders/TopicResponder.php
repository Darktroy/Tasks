<?php
namespace App\MyFormTodo\Responders;
//use App\MyFormTodo\Domain\Models\Topic;
use App\App\Responders\MyResponderInterface;
use App\App\Responders\AbcResponder;
use Illuminate\Support\MessageBag;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Create
 *
 * @author root
 */


class TopicResponder  extends AbcResponder 
                            implements MyResponderInterface{
    //put your code here
    public function respond() { 
       
       return response()->json($this->reponse->getData(),
                                $this->reponse->getStatus());
    }


}
