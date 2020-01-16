<?php

namespace Tests\Feature;

use App\MyFormTodo\Domain\Models\Topic;
use App\MyFormTodo\Domain\Models\Post;


use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;



class TodoStoreTest extends TestCase
{
    
    /** @test */
    public function it_requires_products()
    {
        $topic = factory(Topic::class)->create();

        $this->jsonAs($topic, 'POST','/api/topic')
        ->assertJsonValidationErrors(['title']);
    }
    
    /** @test */
    public function it_created_topic()
    {
        $topic = factory(Topic::class)->create();

        
        $this->jsonAs($topic,'POST' , 'api/topics')->assertJsonFragment([
            'id' => $topic->id
        ]);           
    }


}
