<?php
namespace App\MyFormTodo\Actions;
use App\MyFormTodo\Domain\Repositories\TopicRepository;
use App\MyFormTodo\Responders\TopicResponder;
use App\MyFormTodo\Domain\Services\ListTopicService;
use Illuminate\Http\Request;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CreateTopicAction
 *
 * @author root
 */
class ListTopicAction {
    protected $responder;
    protected $service ; 
    public function __construct(TopicResponder $responder , ListTopicService $service) {
         
        $this->responder = $responder;
        $this->service = $service;
    }
    
    public function __invoke() {
//        $topic = $this->topics->create($request->only('title'));
        $topic = $this->service->handleByService();
                
        return $this->responder->myWithResponse($topic)->respond();
    }
}
