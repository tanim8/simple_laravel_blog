<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clean Blog</title>

    <!-- Bootstrap Core CSS -->
   @include('layout.partials.stylesheet')

</head>

<body>

    <!-- Navigation -->
    @include('layout.nav')

    <!-- Page Header -->
    @include('layout.header')
    <!-- Set your background image for this header on the line below. -->
    

   
 <!-- Main Content -->
   
@yield('content')
    <hr>

    <!-- Footer -->
    @include('layout.footer')
    

    <!-- jQuery -->
  @include('layout.partials.script')

</body>

</html>
