<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Virtuoso Music Services</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	
	<body>
		<div class="body-bg-img"></div>
		<div>
			<header>
				<a class="user-header-a" href="userhome.jsp">Virtuoso</a>
				<a href="user.jsp" class="logout-a" title="Logout"><i class="fa fa-sign-out"></i></a>
				<a href="userviewprofile.jsp" class="logout-a" title="Profile"><i class="fa fa-user-circle-o"></i></a>
				<a href="usercart.jsp" class="logout-a" title="Cart"><i class="fa fa-shopping-cart"></i></a>
				<a href="userpurchasehistory.jsp" class="logout-a" title="Purchase History"><i class="fa fa-history"></i></a>
				<a href="userhome.jsp" class="logout-a" title="Back"><i class="fa fa-mail-reply"></i></a>
			</header>
			
			<div>
				<p class="title-user-p">Products</p>
			</div>
			<div>
				<center>
					<form action="userproductsearch.jsp" method="post">
						<div class="form-div">
							<!--<label class="form-label" for="user_pr_search_word"><b style="color: #FFFFFF;">Search</b></label><br>-->
							<input type="text" name="user_pr_search_word" placeholder="Search with Keyword" class="form-input">
						</div>
						<div class="form-div">
							<label class="form-label" for="user_price_type"><b style="color: #FFFFFF;">Price</b></label><br>
							<input type="radio" name="user_price_type" value="LowToHigh">Low to High
							<input type="radio" name="user_price_type" value="HighToLow">High to Low
						</div>
						<div>
							<input type="submit" value="Search" class="form-submit">
						</div>
					</form>
					<table border="1" class="user-details-table">
						<%@include file="dbconnection.jsp"%>
						<%@page import="java.sql.PreparedStatement"%>
						<%@page import="java.sql.ResultSet"%>
						<%
						int count = 0;
						PreparedStatement ps = con.prepareStatement("SELECT * FROM product WHERE pr_stock = 'In Stock'");
						ResultSet rs = ps.executeQuery();
						while(rs.next()) {
							++count;
							%>
							<tr>
								<td class="user-details-td-img" style="width: 30%;">
									<img src="images/<%=rs.getString("pr_image")%>" alt="Concert Image" style="width: 150px; height: 100px;">
								</td>
								<td class="user-details-td-data" style="width: 50%;">
									<table border="1">
										<tr>
											<td class="user-details-td-data-heading">Product Name</td>
											<td class="user-details-td-data-value"><%=rs.getString("pr_name")%></td>
										</tr>
										<tr>
											<td class="user-details-td-data-heading">Price</td>
											<td class="user-details-td-data-value"><%=rs.getString("pr_price")%></td>
										</tr>
									</table>
								</td>
								<td style="width: 10%;">
									<a href="userproductdetails.jsp?pid=<%=rs.getString("id")%>" class="logout-a" title="View Product">
										<i class="fa fa-mail-forward"></i>
									</a>
								</td>
							</tr>
						<% } 
						if(count == 0) { %>
							<tr><td colspan="3"><h2>No records found.</h2></td></tr>
						<% } %>
					</table>
				</center>
			</div>
			
			<!--<footer>
				<p class="footer-p">&copy; Virtuoso. All rights reserved.</p>
			</footer>-->
		</div>
	</body>
</html>