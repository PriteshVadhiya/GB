<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="include/css/style.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/bootstrap.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript">
	 $(document).ready(function() {
	         $('#mobiles').hide();
	         $('#laptops').hide();
	 });
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

        <!--banner-container start-->
  <div class="inner-banner-container" style="background-image:url(include/images/banner15.jpg)">
    <div class="banner-title">
      <h1>CART</h1>
      <h2>Collect Your Choices.</h2>
    </div>
  </div>
  <!--banner-container end-->  
        
         <!-- inner container start -->
  <div class="inner-container" >
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-sm-12">
          <div class="table-responsive">
            <table class="table table-striped cart-table" cellspacing="0" cellpadding="0">
              <thead>
                <tr>
                  <th class="product-remove">Remove</th>
                  <th class="product-thumbnail hidden-xs">Company Name</th>
                  <th class="product-name">Product</th>
                  <th class="product-price">EMI</th>
                  <th class="product-quantity">Type</th>
                  <th class="product-subtotal">Total Amount</th>
                </tr>
              </thead>
              <tbody>
              <%
					try{ 
						connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
						statement=connection.createStatement();
						String userid=session.getAttribute("id").toString();
						//String sql ="SELECT * FROM cart WHERE u_id = '"+ userid +"'";
						String sql = "SELECT * FROM products AS p JOIN cart AS c ON p.p_id=c.p_id INNER JOIN category AS cat ON p.p_cat_id=cat.cat_id INNER JOIN subcategory AS sc ON sc.sub_id=p.p_subcat_id INNER JOIN company AS com ON com.com_id=p.p_com_id WHERE u_id = '"+ userid +"'";
							//System.out.println(sql);
						resultSet = statement.executeQuery(sql);
						while(resultSet.next()){
				%>
                <tr class="cart_item">
                  <td class="product-remove"><a href="cartDelete?cid=<%=resultSet.getString("c_id") %>" class="remove-item" title="Remove this item">X</a></td>
                  <td class="product-thumbnail hidden-xs"><a href="#"><%=resultSet.getString("com_name") %></a></td>
                  <td class="product-name"><a href="#"><%=resultSet.getString("sub_name") %></a></td>
                  <td class="product-price"><span class="amount"><%=resultSet.getString("p_emi") %></span></td>
                  <td class="product-quantity"><%=resultSet.getString("cat_name") %></td>
                  <td class="product-subtotal"><span class="amount"><%=resultSet.getString("p_price") %></span></td>
                </tr>
                    <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
              </tbody>
            </table>
          </div>
        </div>
      </div>

      <div class="row mar-50 cart-actions">
        <div class="col-sm-6 mar-20">
          <div class="coupon">
            
          </div>
        </div>
       
      </div>
      <div class="row mar-30">
        <div class="col-sm-6 col-sm-offset-6">
          <h4 style="color:red;">Important Note</h4>
          <div class="cart_totals table-responsive">
            <table cellspacing="0" cellpadding="0" class="table table table-striped cart-total-table">
              <tbody style="background-color: #00ff00;">
                <tr class="cart-subtotal" >
                  <td>When the Verification is done by company then only your insurance or loan will started and we will inform you via notification so please check your notification weekly.</td>
                </tr>
              </tbody>
            </table>
            </div>
            <a href="#" class="btn btn-primary btn-block">Proceed to Checkout</a> 
   
        </div>
      </div>
    </div>
  </div>
  <!-- inner container end --> 
<!--footer start-->
 <jsp:include page="footer.jsp"/>
  <!--footer end-->
</body>
</html>