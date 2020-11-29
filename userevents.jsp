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
				<a href="userbookedevents.jsp" class="logout-a">Booked Concerts</a>
				<a href="userhome.jsp" class="logout-a" title="Back"><i class="fa fa-mail-reply"></i></a>
			</header>
			
			<div>
				<p class="title-user-p">Concerts</p>
			</div>
			<div>
				<center>
					<table border="1" class="user-details-table">
						<%@include file="dbconnection.jsp"%>
						<%@page import="java.sql.PreparedStatement"%>
						<%@page import="java.sql.ResultSet"%>
						<%
						int count = 0;
						PreparedStatement ps = con.prepareStatement("SELECT * FROM event_reg WHERE status = 'In Progress'");
						ResultSet rs = ps.executeQuery();
						while(rs.next()) {
							++count;
							%>
							<tr>
								<!--<td class="user-details-td-img">
									<img src="images/guitar.jpg" alt="Concert Image" style="width: 300px; height: 200px;">
								</td>-->
								<td class="user-details-td-data">
									<table border="1">
										<tr>
											<td class="user-details-td-data-heading">Event Name</td>
											<td class="user-details-td-data-value"><%=rs.getString("ev_name")%></td>
										</tr>
										<tr>
											<td class="user-details-td-data-heading">Date</td>
											<td class="user-details-td-data-value"><%=rs.getString("ev_date")%></td>
										</tr>
										<tr>
											<td class="user-details-td-data-heading">Time</td>
											<td class="user-details-td-data-value"><%=rs.getString("ev_time")%></td>
										</tr>
										<tr>
											<td class="user-details-td-data-heading">Location</td>
											<td class="user-details-td-data-value"><%=rs.getString("ev_location")%></td>
										</tr>
										<tr>
											<td class="user-details-td-data-heading">Price per Ticket</td>
											<td class="user-details-td-data-value"><%=rs.getString("ev_price")%></td>
										</tr>
										<tr>
											<td class="user-details-td-data-heading">Bookings</td>
											<% if(rs.getString("status").equals("In Progress")) { %>
												<td class="user-details-td-data-value">Open</td>
											<% } else { %>
												<td class="user-details-td-data-value">Closed</td>
											<% } %>
										</tr>
									</table>
								</td>
								<td>
									<a href="usereventbook.jsp?id=<%=rs.getString("id")%>&price=<%=rs.getString("ev_price")%>" 
									style="text-decoration: none;">
										Book Now
									</a>
								</td>
							</tr>
						<% }
						if(count == 0) { %>
							<tr><td colspan="2"><h2>No records found.</h2></td></tr>
						<% }  %>
					</table>
				</center>
			</div>
			
			<!--<footer>
				<p class="footer-p">&copy; Virtuoso. All rights reserved.</p>
			</footer>-->
		</div>
	</body>
</html>