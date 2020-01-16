<?php

namespace App\MyFormTodo\Domain\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;


class Topic extends Model
{
    protected $fillable =['title','slug'];
    
    public static function boot() {
        
        parent::boot();
        
        static::created(function($topic){
            $topic->update(['slug'=>Str::slug($topic->id.' '.$topic->title)]);
        });
        
    }
    
    public function posts() {
        return $this->hasMany(Post::class);
    }
    
    static public function listAll(){
        return self::whereNull('deleted_at')->with('posts')->get();
    }
    
}
