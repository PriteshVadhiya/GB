<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="include/css/style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="assets/css/align.css" rel="stylesheet" type="text/css"/>
<script src="js/bootstrap.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript">
	 $(document).ready(function() {
	         $('#mobiles').hide();
	         $('#laptops').hide();
	 });
	 function compareFunction(value){
		 var id=value;
		 alert(id);
	 }
	 function compareSubmit(){
			 var inputElements = document.getElementsByClassName('messageCheckbox');
			     var checkedValue=[];
			     for(var i=0; inputElements[i]; ++i){
			        console.log(inputElements[i]);
			        if(inputElements[i].checked){
			            checkedValue.push(inputElements[i].value);
			        }
			     }
			 alert(checkedValue);
			 window.location.href="compareUpdate?product1="+checkedValue[0]+"&product2="+checkedValue[1];
		 }
</script>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
</head>
<body>
<jsp:include page="header.jsp"/>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "guidance_boutique";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!-- table start-->

<center> <h2 class="heading">Products</h2></center>
  <div class="container">
  	<div class="row" style="border:2px;">
      <div class="col-md-3" style="border: 2px solid gray;
    border-radius: 5px;">
		<form action="" method="POST">
		  <div><h3><b style="color: #0000ff;">Filter</b></h3></div>
		 	<div>
			  <h4>Price</h4>
               	<select name="minprice">
                   	<option value="1">Min</option>
                    <option value="250">250</option>
                    <option value="500">500</option>
                    <option value="1000">1000</option>
                    <option value="2000">2000</option>
                    <option value="5000">5000</option>
                    <option value="10000">10000</option>
                    <option value="18000">18000</option>
                    <option value="25000">25000</option>
                    <option value="30000">30000</option>
               	</select>
               	to
               	<select name="maxprice">
               		<option value="">Max</option>
                    <option value="500">500</option>
                    <option value="1000">1000</option>
                    <option value="2000">2000</option>
                    <option value="5000">5000</option>
                    <option value="10000">10000</option>
                    <option value="18000">18000</option>
                    <option value="25000">25000</option>
                    <option value="50000">50000</option>
                    <option value="200000">200000+</option>
               	</select>
			</div>
		 	 <div style="margin-top:20px;">
				<h4>Category</h4>
                 <select class="form-control" name="category">
                      <option value="">others</option>
                      <option value="Electronics">Electronics</option>
                      <option value="Men">Men</option>
                      <option value="Women">Women</option>
                      <option value="Kids">Kids</option>
                 </select>
			</div>
			<div style="margin-top:20px;">
				<h4>Sub-Catagory</h4>
                  <select name="subcategory" class="form-control" id="mySelect" onchange="changeBrand()">
                      <option value="">Others</option>
                      <option value="Mobiles">Mobiles</option>
                      <option value="Laptops">Laptops</option>
                      <option value="Headphones">Headphones</option>
                      <option value="Power Banks">Power Banks</option>
                      <option value="Chargers">Chargers</option>
                      <option value="Memory Cards">Memory Cards</option>
                      <option value="Pendrives">Pendrives</option>
                      <option value="Screenguards">Screenguards</option>
                      <option value="Hard Disk">Hard Disk</option>
                      <option value="Mouse">Mouse</option>
                      <option value="Monitor">Monitor</option>
                      <option value="Keyboards">Keyboards</option>
                  </select>
				<script type="text/javascript"> 
				function changeBrand() {
					$('#mobiles').hide();
					$('#laptops').hide();	
				    var x = document.getElementById("mySelect").value;
				    if(x == "Mobiles"){
				    	$('#mobiles').show();
				    }
				    if(x == "Laptops"){
						$('#laptops').show();							    	
				    }
				    document.getElementById("demo").innerHTML = "You selected: " + x;
				}
				</script>
			</div>
			<div class="clearfix"></div>
			<div id="mobiles" >
				<h3>Brand</h3>
				<input name="mobile[Samsung]" type="checkbox" value="1">Samsung<br>
				<input name="mobile[MI]" type="checkbox" value="1">MI<br>
				<input name="mobile[Sony]" type="checkbox" value="1">Sony<br>
				<input name="mobile[Micromax]" type="checkbox" value="1">Micromax<br>
			</div>
			<div id="laptops">
				<h3>Brand</h3>
				<input name="mobile[HP]" type="checkbox" value="1">HP<br>
				<input name="mobile[Dell]" type="checkbox" value="1">Dell<br>
				<input name="mobile[Lenovo]" type="checkbox" value="1">Lenovo<br>
				<input name="mobile[Micromax]" type="checkbox" value="1">Micromax<br>
				<input name="mobile[Apple]" type="checkbox" value="1">Apple<br>
				<input name="mobile[Acer]" type="checkbox" value="1">Acer<br>
			</div>
			<input type="submit" name="submitrange" value="apply" class="btn btn-primary btn-block" style="margin-top:20px;">
			<div class="clearfix"></div>
			<div style="margin-top:20px;"><h3><b style="color: #0000ff;">Sorting</b></h3></div>
				
				<div class="clearfix"></div>
				<div style="margin-bottom:20px" >
				<button type="submit" name="submitdesc" value="Descending By Price" class="btn btn-block btn-success">Descending By Price</button>
				<br>
				<button type="submit" name="submitasc" value="Ascending By Price" class="btn btn-block btn-success">Ascending By Price</button>
				</div>
		</form>
        </div>
<!-- card start -->

 <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String category = request.getParameter("category");
String subcategory = request.getParameter("subcategory");
if(request.getParameter("category") != null){
	String sql = "SELECT * FROM products AS p INNER JOIN category AS c ON p.p_cat_id=c.cat_id INNER JOIN subcategory AS sc ON sc.sub_id=p.p_subcat_id INNER JOIN company AS com ON com.com_id=p.p_com_id  WHERE cat_name='"+ category +"'";
	resultSet = statement.executeQuery(sql);
}
else if(request.getParameter("subcategory") != null){
	String sql = "SELECT * FROM products AS p INNER JOIN category AS c ON p.p_cat_id=c.cat_id INNER JOIN subcategory AS sc ON sc.sub_id=p.p_subcat_id INNER JOIN company AS com ON com.com_id=p.p_com_id  WHERE sub_name='"+ subcategory +"'";
	resultSet = statement.executeQuery(sql);
}
else{
	String sql ="SELECT * FROM products AS p INNER JOIN category AS c ON p.p_cat_id=c.cat_id INNER JOIN subcategory AS sc ON sc.sub_id=p.p_subcat_id INNER JOIN company AS com ON com.com_id=p.p_com_id ORDER BY p.p_id";
	resultSet = statement.executeQuery(sql);
}

while(resultSet.next()){
%>
<div id="card_area" >
		

		<div class="w3-card-4" style="margin-bottom:30px;">
		
		<div class="w3-container w3-light-gray w3-hover-black">
		  <h3><%=resultSet.getString("com_name") %></h3>
		</div>
		
		<div class="w3-container">
		  <div id="card-company">
		  	<img src="include/images/sbi.png" alt="logo" class="w3-left" style="width:100px; height:50px; margin-top:60px">
		  </div>
		  
		  <div id="card-description">
			  	  <div class="col-md-3" style="font-size: 12px; color: #000; margin-left:50px; margin-top: 30px;">
                            <p style="font-size: 15px;">
                                <strong>Policy Detail</strong><br />
                                 <span style="color: #dc6f0b; font-size: 14px;">
                                  <%=resultSet.getString("cat_name") %> </span></p>
                             
                            <p style="font-size: 15px;">
                                <strong>Policy Name</strong><br />
                                <span style="color: #dc6f0b; font-size: 14px;">
                                  <%=resultSet.getString("sub_name") %> </span></p>
                            <p data-toggle="modal" data-target="#modalNetworkGarage" style="cursor: pointer;"
                                onclick="getGarageList(18);">
                               
                            <p style="padding: 5px 9px; background: #f3f2f2; margin: 10px -10px; color: #0000ff; font-size: 13px;
                                box-shadow: 0px 1px 1px #ccc;">
                                <i class="glyphicon glyphicon-star" ></i>
                                
                                <%=resultSet.getString("com_name") %>
              
                                
                            </p>
                            <p style="display: none;">
                                <strong style="float: left; clear: both;">Policy Type: </strong><span class="netg">
                                    
                                    Complete
                                    </span></p>
                        </div>
                        <div class="col-md-3" style="font-size: 12px; color: #000; margin-top: 30px;">
                           
                             <div class="col-md-4" style="background: #fdfcfc;">
                            <span class="text-left col-md-6 no-padding" style="font-size: 13px; font-weight: bold;">
                                EMI</span> <span class="text-right col-md-6 basepremium" amount='80094'  style="font-size: 13px;">
                                    Rs.<%=resultSet.getString("p_emi") %></span>
                            <br />
                            
                            <p style="font-size: 15px;">
                        
                              <span class="col-md-5" style="font-size: 13px; font-weight: bold; margin-top:25px">
                                Base Price</span> <span class="col-md-6 basepremium" amount='80094'>
                                    Rs.<%=resultSet.getString("p_price") %></span>
                                    </p>
                          
                           
                        </div>
                        </div>
                       
                           
                      
                        <div class="col-md-1" style="margin-left:70px;">
                            <br />
                            <strong style="font-size: 22px;"></strong>
                            <br />
                            <a class="btn btn-primary hvr-grow-shadow"
                                onclick="buynow(this);">Buy For <span class="finalpremium"
                                    amount='80094' style="font-size: 18px;">
                                    Rs.<%=resultSet.getString("p_price") %></span></a>
                            <br />
                            <br />
              
                                	<a class="btn btn-primary hvr-grow-shadow" href="addCartServlet?id=<%=resultSet.getString("p_id") %>"
                                onclick="buynow(this);" style="margin-top: 10px;"> <span class="finalpremium"
                                    amount='80094' style="font-size: 15px;">
                                    Add to cart</span></a>
                        </div>
		  </div>
		</div>
		</br>
			<div class="w3-btn-block w3-dark-grey">
				<input type="checkbox"  class="messageCheckbox" value="<%=resultSet.getString("p_id") %>" onclick="compareFunction(<%=resultSet.getString("p_id")%>)"/>
				Add to compare
			</div>
		</div>

	
	</div>
	
	<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</div><!--  end col-md-9 -->
</div><!-- end row -->

<!--footer start-->
<jsp:include page="footer.jsp"/>
<!--footer end--> 



</body>
</html>