 

@extends('layout.master')

@section('content')



 <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                @if(Session::has('sms'))
               <div class="alert alert-success"> {{ Session::get('sms') }}</div>
                @endif

               @foreach($blogs as $blog)

                <div class="post-preview">
                    <a href="post.html">
                        <h2 class="post-title">
                            {{$blog->title}}
                        </h2>
                        <div class="pull-right">
                        <a href="article/edit/{{$blog->id}}" class="btn btn-primary">Edit</a>
                        <a href="article/destroy/{{$blog->id}}" class="btn btn-danger">delete</a>

                    </div>
                        @if(!empty($blog->image))
                        <img src="/uploads/{{$blog->image}}" alt="" width="500px" height="200px" />
                        @endif
                        <h3 class="post-subtitle">
                            {{$blog->description}}
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="#">{{$blog->created_by}}</a> {{$blog->crated_at}}</p>
                    
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