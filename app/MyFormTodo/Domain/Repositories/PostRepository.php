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
use App\MyFormTodo\Domain\Models\Post;

class PostRepository {
    
    public function create($topicId,$data) {
        return Post::create(array_merge($data,['topic_id'=>$topicId]));
    }
    
    public function List($topicId,$data) {
        return Post::create(array_merge($data,['topic_id'=>$topicId]));
    }
    
    public function updatePost($id,$body) {
        return Post::where('topic_id',$id)->update(['body'=>$body]);
    }
    
    public function deletePost($id) {
        return Post::where('topic_id',$id)->delete();
    }
    
    
    
}
