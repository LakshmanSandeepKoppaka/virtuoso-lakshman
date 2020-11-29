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
				<a href="userpurchasedsongs.jsp" class="logout-a" title="Purchased Songs"><i class="fa fa-headphones"></i></a>
				<a href="useralbums.jsp" class="logout-a" title="Back"><i class="fa fa-mail-reply"></i></a>
			</header>
			
			<div>
				<p class="title-user-p">Album Details</p>
			</div>
			<div>
				<center>
					<table border="1" class="user-details-table">
						<%@include file="dbconnection.jsp"%>
						<%@page import="java.sql.PreparedStatement"%>
						<%@page import="java.sql.ResultSet"%>
						<%
						String a_id = request.getParameter("aid");
						String u_id = (String) session.getAttribute("user_id");
						PreparedStatement ps = con.prepareStatement("SELECT * FROM album WHERE id = '" + a_id + "' LIMIT 1");
						ResultSet rs = ps.executeQuery();
						if(rs.next()) { %>
							<tr>
								<td class="user-details-td-data">
									<table border="1">
										<tr>
											<td class="user-details-td-data-heading">Album Name</td>
											<td class="user-details-td-data-value"><%=rs.getString("al_name")%></td>
										</tr>
										<tr>
											<td class="user-details-td-data-heading">Artist Name</td>
											<td class="user-details-td-data-value"><%=rs.getString("al_artist_name")%></td>
										</tr>
										<tr>
											<td class="user-details-td-data-heading">Category</td>
											<td class="user-details-td-data-value"><%=rs.getString("al_category")%></td>
										</tr>
										<tr>
											<td class="user-details-td-data-heading">Price</td>
											<td class="user-details-td-data-value"><%=rs.getString("al_price")%></td>
										</tr>
										<tr>
											<td class="user-details-td-data-heading">Description</td>
											<td class="user-details-td-data-value"><%=rs.getString("al_desc")%></td>
										</tr>
									</table>
								</td>
								<td style="width: 8%;">
									<a href="userbuysong.jsp?a_id=<%=a_id%>&u_id=<%=u_id%>&s_price=<%=rs.getString(4)%>" title="Purchase Album" class="logout-a"><i class="fa fa-money"></i></a>
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