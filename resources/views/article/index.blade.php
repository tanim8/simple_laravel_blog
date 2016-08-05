@extends('layout.master')

@section('content')

 <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
               @foreach($articles as $article)

                <div class="post-preview">
                    <a href="post.html">
                        <h2 class="post-title">
                            {{$article->title}}
                        </h2>
                        <div class="pull-right">
                        <a href="{{ route('article.edit', ['id' => $article->id]) }}" class="btn btn-primary">Edit</a>
                        <a onclick="return confirm ("are you sure to delete");" href="/destroy/{{$article->id}}" class="btn btn-danger">Delete</a>
                    </div>
                        @if(!empty($article->image))
                        <img src="/uploads/{{$article->image}}" alt="" width="500px" height="200px" />
                        @endif
                        <h3 class="post-subtitle">
                            {{$article->description}}
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="#">{{$article->username}}</a> {{$article->crated_at}}</p>
                    
                </div>
                @endforeach
                <hr>
               
                
                <!-- Pager -->
                <ul class="pager">
                    <li class="next">
                        <a href="#">Older Posts &rarr;</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
     
    @stop