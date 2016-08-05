@extends('layout.master')

@section('content')
        <!-- /.container -->
 
    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                
                <form  method="post" action="article/update/{{$blog->id}}" enctype="multipart/form-data">
                
                

                <input type='hidden' name='_token' value='{{csrf_token()}}'>
                   
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Title</label>
                            <input type="text" name="title" class="form-control"  value="{{$blog->title}}" required="">
                            
                        </div>
                    </div>
                   
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Description</label>
                            <textarea rows="5" class="form-control"  name="description" >{{$blog->description}}</textarea>
                            
                        </div>
                    </div>
                     <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Image</label>
                            <input type="file" name="image" class="form-control" placeholder="image"  >
                             @if(!empty($blog->image))
                        <img src="/uploads/{{$blog->image}}"/>
                        @endif
                        <h3 class="post-subtitle">
                            {{$blog->description}}
                        </h3>
                            
                        </div>
                    </div>
                     <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label> User Name</label>
                            <input type="text" class="form-control" name="created_by" value="{{$blog->created_by}}"  required="">
                            
                        </div>
                    </div>
                    <br>
                    <!-- <div id="success"></div> -->
                    <div class="row">
                        <div class="form-group col-xs-12">
                            <button type="submit" class="btn btn-default">Update</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <hr>

    <!-- Footer -->
   @stop
