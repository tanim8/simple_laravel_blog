<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

 use App\Http\Requests;
use App\Models\Blog;


class BlogController extends Controller
 {
//     public function index(){
//     	return view('home');

//     }
//     public function hello(){
//     	return view("help");
//     }
    public function save(Request $request){
      // dd($request->except('_token'));
    	$input=$request->except('_token');
    	Blog::create($input);
    	return redirect ('/home');
    }
    public function submit(Request $request){
       //dd($request->file('image'));
         $input=$request-> except('_token');
        if ($request->hasFile('image') ){
    $filename=$request->file('image')->getClientOriginalName(); 
        $request->file('image')->move(public_path("uploads"),$filename);
 $input['image']=$filename;
}
       
        
         Blog::create($input);
         return redirect('newpost');

    }
    public function homepage(){
      $blogs=Blog::get();
       return view('blog.index')->with(compact('blogs'));
   

    }
    public function edit($id){
        $blog=Blog::find($id);
        return view('blog.edit')->with(compact('blog'));
    }
    public function update($id, Request $request){
        $blog=Blog::find($id);
         $input=$request-> except('_token');
        if ($request->hasFile('image') ){
    $filename=$request->file('image')->getClientOriginalName(); 
        $request->file('image')->move(public_path("uploads"),$filename);
 $input['image']=$filename;
}
               
         $blog->update($input);
         return redirect('/');

    }
    public function destroy($id){
        Blog::destroy($id);
        return redirect ('/');
    }
    
}
