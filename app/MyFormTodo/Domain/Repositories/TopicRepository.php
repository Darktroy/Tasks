<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of TopicRepository
 *
 * @author root
 */
namespace App\MyFormTodo\Domain\Repositories;
use App\MyFormTodo\Domain\Models\Topic;

class TopicRepository {
    
    public function create($data) {
        return Topic::create($data);
    }
    
    public function listAll() {
        return Topic::listAll();
    }
    
    public function updateTopic($data) {
         Topic::where('id',$data['id'])->update(['title'=>$data['title']]);
         return Topic::where('id',$data['id'])->first();
    }
    public function deleteTopic($id) {
        $daone = Topic::where('id',$id)->delete();
        if($daone == 1){
            return "delete Done";
        }else{
            return $daone;
        }
    }
    
    
}
