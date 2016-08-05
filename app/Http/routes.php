<?php

// /*
// |--------------------------------------------------------------------------
// | Application Routes
// |--------------------------------------------------------------------------
// |
// | Here is where you can register all of the routes for an application.
// | It's a breeze. Simply tell Laravel the URIs it should respond to
// | and give it the controller to call when that URI is requested.
// |
// */

// // Route::get('/', function () {
// //     return view('welcome');
// // });
// // Route::get('/blog',function (){
// // 	relurn view('');
// // })
// // Route::get('/home','BlogController@index');
// // Route::get('/blog','BlogController@hello');
// // Route::post('/save','BlogController@save');
// // Route::get('/indexs', function () {
// //     return view('index');
// // });
// // Route::get('/hello', function () {
// //     return view('blog.hello');
// // });
Route::get('hello', function() {
	return "hello";
});

Route::get('/', 'BlogController@homepage' );
// Route::get('/',['as'=>'home','uses'=>'BlogController@homepage']);
// Route::get('/newpost',function(){
// 	return view('blog.newpost');
// });
// Route::post('/submit','BlogController@submit');
// Route::get('/edit/{id}','BlogController@edit');
// Route::post('/update/{id}','BlogController@update');
// Route::get('/destroy/{id}','BlogController@destroy');
Route::get('/admin',function(){
	return view ('admin.index');
});










// Route::resource('article','ArticlesController');


Route::controller('article','ArticlesController');


