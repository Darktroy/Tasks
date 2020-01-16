<?php
namespace App\MyFormTodo\Actions;
use App\MyFormTodo\Domain\Repositories\TopicRepository;
use App\MyFormTodo\Responders\TopicResponder;
use App\MyFormTodo\Domain\Services\DeleteTopicService;
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
class DeleteTopicAction {
    protected $responder;
    protected $service ; 
    public function __construct(TopicResponder $responder , DeleteTopicService $service) {
         
    $this->responder = $responder;
        $this->service = $service;
    }
    
    public function __invoke(Request $request) {
        $topic = $this->service->handleByService($request->only('id') );
        return $this->responder->myWithResponse($topic)->respond();
    }
}
