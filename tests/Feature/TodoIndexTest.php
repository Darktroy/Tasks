<?php

namespace Tests\Feature;


use App\MyFormTodo\Domain\Models\Topic;
use App\MyFormTodo\Domain\Models\Post;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class TodoIndexTest extends TestCase
{
  
    /** @test */
    public function it_shows_all()
    {
        $topic = factory(Topic::class)->create();

        
        $this->jsonAs($topic,'GET' , 'api/topics')->assertJsonFragment([
            'id' => $topic->id
        ]);           
    }
    /** @test */
    public function it_shows_if_the_topic_is_empty()
    {
        $topic = factory(Topic::class)->create();

        
        $this->jsonAs($topic,'GET' , 'api/topics')->assertJsonFragment([
            'empty' => true
        ]);
    }

}
