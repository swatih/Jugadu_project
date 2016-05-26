<%@ include file="header.jsp" %>
<%@ page session="false" %>
<div class="container" >
<div style="padding-top:40px;"></div>
<p>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          
          <img class="first-slide" src="${i1}/bannerfine1.jpg" width="100%" height="500" alt="First slide">
         
          <div class="container">
            <div class="carousel-caption">
             
              
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="${i1}/bannerfine4.jpg" width="100%" height="500" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
            <!--   <h1>Another example headline.</h1> -->
             <p><a class="btn btn-lg btn-primary" href="#" role="button">know More</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="${i1}/bannerfine3.jpg" width="100%" height="500" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              
        
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Know More</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- /.carousel -->
    

</div>

<div class ="container" style="padding-top: 10px;">
   <div class="row">
  <div class="col-md-4">
    <div class="panel panel-bold panel-danger">
      <div class="panel-body p-b-lg">
        <h3 class="m-y-0">Apple Laptop</h3>
        <p>Released  6 weeks early</p>
         <hr>
        <p>Apple Model E009887</p>
      </div>
    </div>
  </div>
   <div class="col-md-4">
    <div class="panel panel-bold panel-danger">
      <div class="panel-body p-b-lg">
        <h3 class="m-y-0">Dell Laptop</h3>
        
        <hr>
        <p>Dell Laptop Latest 2016</p>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="panel panel-bold panel-info">
      <div class="panel-body p-b-lg">
        <h3 class="m-y-0">HP LAPTOP</h3>
        
        <hr>
        <p>HP Laptop Model DMM2098</p>
      </div>
    </div>
  </div>
</div>
</div>
<%@ include file="footer.jsp" %>
