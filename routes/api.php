<?php

/*

use Illuminate\Http\Request;
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

*/

Route::post('/topics', App\MyFormTodo\Actions\CreateTopicAction::class);
Route::get('/topics', App\MyFormTodo\Actions\ListTopicAction::class);

Route::post('/edit-topics', App\MyFormTodo\Actions\UpdateTopicAction::class);
Route::post('/delete-topics', App\MyFormTodo\Actions\DeleteTopicAction::class);