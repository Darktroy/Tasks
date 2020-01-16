<?php
namespace App\MyFormTodo\Domain\Services;
use App\MyFormTodo\Domain\Repositories\TopicRepository;
use App\MyFormTodo\Domain\Repositories\PostRepository;
use App\App\Domain\ServiceInterface;
use App\App\Payloads\ValidationPayLoad;
use App\App\Payloads\SuccessPayload;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CreateTopicService
 *
 * @author root
 */
class UpdateTopicService implements ServiceInterface {
    /*it's like the controller as it use logic and mainpulations of some logic and the Action must be free of code as much as possible 
     * instead of action we use the service doing the logic process and give it back to the action which pass it to the responder Service work with 
     * the Domain all classes and return it back to the Action */
     protected $topics;
    protected $posty;
    public function __construct(TopicRepository $topics,PostRepository $post) {
        $this->topics = $topics;
        $this->posty = $post;
    }
    
    /*
     * this function not a reserved function you can call it anything you wish 
     */
    public function handleByService($data = []) {
        if(($validator = $this->validate($data))->fails()){
            return new ValidationPayLoad($validator->getMessageBag());
        }
        $topic = $this->topics->updateTopic($data);
        $this->posty->updatePost($data['id'], $data['body']);
        
        $topic->load('posts');//Lazy load 
        
        return new SuccessPayload($topic);
    }
    
    /**
     * 
     * @param type $data
     * @return type
     */
    
    protected function validate($data) {
        return validator($data,[
            'id'=> 'required|exists:topics,id',
            'title'=> 'required',
            'body'=>'required'
        ]);
    }
    
}
