<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>

  <nav class="navbar navbar-expand-lg navbar-light bg-light">
 <!--  <a class="navbar-brand" href="#">Navbar</a> -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          News
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Technology</a>
          <a class="dropdown-item" href="#">Politics</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Sports</a>
          <a class="dropdown-item" href="#">E-Sports</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="#">About Us</a>
      </li>
     
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    
    	<div class="mx-2">
         <button class="btn btn-danger">Login</button>
    	  <button class="btn btn-danger">SignUp</button>
    	</div>
    
  </div>
</nav>
<style>
	.carousel-item{
		height: 32rem;
		background: #777;
		color-white;
		position: relative;
		
	}
	.container{
		position: absolute;
		bottom: 0;
		left:0;
		right: 0;
		padding-bottom: 50px;
		
	}
	.overlay-image{
		position: absolute;
		bottom: 0;
		left: 0;
		right: 0;
		top: 0;
		background-position: center;
		background-size:cover;
	}
 .footerss{
 	background-color:#808080;
 	text-align: center;
 	margin-bottom: 0;
 	height: 70px;
 	size: 30px;
 }

</style>
  
<div id="myCarousel" class="carousel slide carousel-fade"
data-ride="carousel">
<ol class="carousel-indicators">
	<li data-target="#myCarousel"
   data-slide-to="0" class="active" 
	>
		
	</li>
	<li data-target="#myCarousel"
	data-slide="1"></li>

	</ol>
<div class="carousel-inner">
  <div class="carousel-item active"
  >
  <div class="overlay-image" style="background-image: url(abc.jpg);">
  </div>

    <div class="container">
    	<h1>Example Headline</h1>
    	<p>This is what happens know a days inside our
    	politics</p>
    	<a href="#" class="btn btn-lg btn-primary">
    	Read full News</a>
    </div>  
  </div>

   <div class="carousel-item">
   	 <div class="overlay-image" style="background-image: url(abc.jpg);">
    <div class="container">
    	<h1>Example Headline</h1>
    	<p>This is what happens know a days inside our
    	politics</p>
    	<a href="#" class="btn btn-lg btn-primary">
    	Read full News</a>
    </div> 
</div> 
</div>
<a class="carousel-control-prev" href="#myCarousel"
   role="button" data-slide="prev">
   <span class="carousel-control-prev-icon"
   aria-hidden="true"
   ></span>
   <span class="sr-only">Previous</span>
</a>
<a class="carousel-control-next" href="#myCarousel"
   role="button" data-slide="next">
   <span class="carousel-control-next-icon"
   aria-hidden="true"
   ></span>
   <span class="sr-only">Next </span>
</a>
</div>


<div class="row">

	<div class="col-sm-4">
<div class="card" style="width: 18rem; margin-top: 20px;">
  <img class="card-img-top" src="abc.jpg" 
  style="height: 194px" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
</div>

	<div class="col-sm-4">
<div class="card" style="width: 18rem; margin-top: 20px;">
  <img class="card-img-top" src="esports (2).jpg" style="height: 194px" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card Example</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
</div>
	<div class="col-sm-4">
<div class="card" style="width: 18rem;  margin-top: 20px;">
  <img class="card-img-top" src="esports (1).jpg"
style="height: 194px" 
   alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card Example</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
</div>

</div>

  

  <div class="footerss text-danger">
  	<footer class="text-danger">
  		<p> @Copyright2020  </p>

  		<p  style="text-align: right; "
  		name="a1"
 class="text-light" 
  		> Manohar Kashyap</p>
  	</footer>


</div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>