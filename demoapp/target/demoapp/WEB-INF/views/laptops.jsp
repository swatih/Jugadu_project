
<%@ include file="header.jsp" %>


 <script src="${b1}/js/angular.min.js"></script>
 <script type="text/javascript" src="${b1}/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${b1}/js/bootstrap.min.js"></script>

 
 <script>

angular.module('myApp', []).controller('namesCtrl', function($scope) {
	
$scope.item='';
$scope.instr1=<%=request.getAttribute("listOfLaptops")%> ; ;


});


</script> 
<div class="container" ng-app="myApp" ng-controller="namesCtrl">

     <div class="form-group">
      Search
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>

        <input type="text" class="form-control" placeholder=" "  ng-model="item" >
        
      </div>      
    </div>




<table class="table table-bordered table-striped">
   
    <thead>
      <tr>
        <td>            Product Id        </td>
        <td>          Product Name        </td>
        <td>          Brand        </td>
        <td>          Price        </td>
       <td></td>
      </tr>
    </thead>
    
    <tbody>
     
      <tr ng-repeat="i in instr1|filter:item">
   
        <td>{{i.id}}</td>
        <td> {{i.name}}</td>
        <td> {{i.brand}}</td>
        <td>{{i.price}}</td>
           <td><form  action="details" method="GET" >
           <input type="hidden" value={{i.id}} name="id">
            <input type="hidden" value={{i.name}} name="name">
             <input type="hidden" value={{i.brand}} name="brand">
              <input type="hidden" value={{i.price}} name="price">
               <input type="hidden" value={{i.desc}} name="desc">
           <input type="submit" value="view">
            </form></td>
       
        
    

      </tr>
   
    </tbody>
    
  </table>


</div>
<%@ include file="footer.jsp"%>