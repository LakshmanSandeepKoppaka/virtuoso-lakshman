<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Virtuoso Music Services</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/style.css">
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	
	<script>
		function checkPassword() {
			var old_pwd = document.getElementById('old_pwd').value;
			var cur_pwd = document.getElementById('cur_pwd').value;
			if(old_pwd == cur_pwd) {
				return true;
			} else {
				swal("", "Enter current password correctly", "error");
				return false;
			}
		}
	</script>
	
	<body>
		<div class="body-bg-img"></div>
		<div>
			<header>
				<a class="user-header-a" href="userhome.jsp">Virtuoso</a>
				<a href="user.jsp" class="logout-a" title="Logout"><i class="fa fa-sign-out"></i></a>
				<a href="userproduct.jsp" class="logout-a" title="Back"><i class="fa fa-mail-reply"></i></a>
			</header>
			
			<div>
				<p class="title-user-p">Product Details</p>
			</div>
			<div>
				<center>
					<table border="1" class="user-details-table">
						<%@include file="dbconnection.jsp"%>
						<%@page import="java.sql.PreparedStatement"%>
						<%@page import="java.sql.ResultSet"%>
						<%
						String p_id = request.getParameter("pid");
						PreparedStatement ps = con.prepareStatement("SELECT * FROM product WHERE id = '" + p_id + "' LIMIT 1");
						ResultSet rs = ps.executeQuery();
						if(rs.next()) { %>
							<tr>
								<td class="user-details-td-data">
									<table border="1">
										<tr>
											<td class="user-details-td-data-heading">Name</td>
											<td class="user-details-td-data-value"><%=rs.getString("pr_name")%></td>
										</tr>
										<tr>
											<td class="user-details-td-data-heading">Price</td>
											<td class="user-details-td-data-value"><%=rs.getString("pr_price")%></td>
										</tr>
										<tr>
											<td class="user-details-td-data-heading">Quantity</td>
											<td class="user-details-td-data-value"><%=rs.getString("pr_quantity")%></td>
										</tr>
										<!--<tr>
											<td class="user-details-td-data-heading">Description</td>
											<td class="user-details-td-data-value"><%=rs.getString("pr_desc")%></td>
										</tr>-->
									</table>
								</td>
								<td><img src="images/<%=rs.getString(7)%>" style="width: 300px; height: 300px;"></td>
							</tr>
							<tr>
								<td>
									<h1>Add To Cart</h1>
									<div>
										<form action="crudoperations.jsp" method="post">
											<input type="hidden" name="role" value="product_add_to_cart">
											<input type="hidden" name="p_id" value="<%=p_id%>">
											<input type="hidden" name="pr_cost" value="<%=rs.getString("pr_price")%>">
											<div class="form-div">
												<label class="form-label" for="user_qnty"><b>Quantity</b></label><br>
												<input type="number" name="user_qnty" id="user_qnty" placeholder="Enter Number of Units" required class="form-input">
											</div>
											<div>
												<input type="submit" value="Submit" class="form-submit">
											</div>
										</form>
									</div>
								</td>
							</tr>
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