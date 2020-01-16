<?php

namespace Tests\Feature;
use App\MyFormTodo\Domain\Models\Topic;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;

class TodoDeleteTest extends TestCase
{
 
    /** @test */
    public function it_deletes_a_topic()
    {
        $topic = factory(Topic::class)->create();
        
        $this->jsonAs($topic , 'POST' , "api/delete-topics");
        $this->assertDatabaseMissing('topic',[
            'id' => $topic->id
        ]);
    }
}
