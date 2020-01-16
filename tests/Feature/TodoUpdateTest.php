<?php

namespace Tests\Feature;

use App\MyFormTodo\Domain\Models\Topic;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;

class TodoUpdateTest extends TestCase
{
    
    /** @test */
    public function it_requires_an_id()
    {
        $topic = factory(Topic::class)->create();
        $response = $this->jsonAs($topic , 'POST',"api/edit-topics");
        $this->assertJsonValidationMessages($response ,[
            'id' => "The id field is required."
        ]);
    }
    /** @test */
    public function it_updates()
    {
        $topic = factory(Topic::class)->create();
        
        $response = $this->jsonAs($topic , 'POST',"api/edit-topics", [
            'id' => 1
        ]);
        $this->assertDatabaseHas('topic', [
            'id' => $product->id,
            'title' => 'title test'
        ]);
    }


}
