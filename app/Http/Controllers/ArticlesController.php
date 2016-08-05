<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Models\Article;

class ArticlesController extends Controller
{

	// protected $article;

	// public function __construct(Article $article)
	// {
	// 	$this->article = $article;
	// }

    public function get_index()
    {
       $blogs = Article::all();
       return view('blog.index')
        ->with(compact('blogs'));
            

    }

    public function get_create()
    {
    	return view('blog.newpost');

    }

    public function post_store(Request $request)
    {
    	 //dd($request->file('image'));
         $input=$request-> except('_token');
        if ($request->hasFile('image') ){
    $filename=$request->file('image')->getClientOriginalName(); 
        $request->file('image')->move(public_path("uploads"),$filename);
 $input['image']=$filename;
}
       
        
         Article::create($input);
         
         return redirect('article')->with('sms','blog is saved');

    }
    

    public function get_edit($id)
    {
    	 $blog=Article::find($id);
        return view('blog.edit')->with(compact('blog'));
    }

    public function post_update($id, Request $request)
    {
        $blog=Article::find($id);
         $input=$request-> except('_token');
        if ($request->hasFile('image') ) {
		    $filename=$request->file('image')->getClientOriginalName(); 
		        $request->file('image')->move(public_path("uploads"),$filename);
		 $input['image']=$filename;
		}
               
         $blog->update($input);
         return redirect('article')->with('sms','blog is updated');
    }

    public function show($id)
    {
    	//
    }

    public function get_destroy($id)
    {

        Article::destroy($id);
        return redirect('article')->with('sms','blog is deleted');
    }
}
