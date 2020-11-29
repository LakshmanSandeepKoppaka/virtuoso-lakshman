<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Virtuoso Music Services</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<style>
		/* Chrome, Safari, Edge, Opera */
		input::-webkit-outer-spin-button,
		input::-webkit-inner-spin-button {
			-webkit-appearance: none;
			margin: 0;
		}
		/* Firefox */
		input[type=number] {
			-moz-appearance: textfield;
		}
	</style>
	<body>
		<div class="body-bg-img"></div>
		<div>
			<header>
				<a href="adminevents.jsp" class="header-a">Add Events</a>
				<a href="adminviewevents.jsp" class="header-a">View Events</a>
				<a href="adminhome.jsp" class="header-a">Back</a>
			</header>
			
			<div class="input-block">
				<h1 class="form-heading">Event Info</h1>
				<div>
					<form action="crudoperations.jsp" method="post">
						<input type="hidden" name="role" value="event_reg">
						<div class="form-div">
							<label class="form-label" for="ev_name"><b>Event Name</b></label><br>
							<input type="text" name="ev_name" placeholder="Event Name" required class="form-input">
						</div>
						<div class="form-div">
							<label class="form-label" for="ev_price"><b>Price</b></label><br>
							<input type="number" name="ev_price" placeholder="Price Per Head" required class="form-input">
						</div>
						<div class="form-div">
							<label class="form-label" for="ev_date"><b>Date</b></label><br>
							<input type="date" name="ev_date" placeholder="Event Date" required class="form-input">
						</div>
						<div class="form-div">
							<label class="form-label" for="ev_time"><b>Time</b></label><br>
							<input type="time" name="ev_time" placeholder="Event Time" required class="form-input">
						</div>
						<div class="form-div">
							<label class="form-label" for="ev_location"><b>Location</b></label><br>
							<textarea name="ev_location" placeholder="Location of Event" required class="form-input"></textarea>
						</div>
						<div class="form-div">
							<label class="form-label" for="ev_price"><b>Total Tickets</b></label><br>
							<input type="number" name="ev_total_tickets" placeholder="Total Number of Tickets" required class="form-input">
						</div>
						<div class="form-div">
							<label class="form-label" for="ev_coord_name"><b>Coordinator</b></label><br>
							<input type="text" name="ev_coord_name" placeholder="Event Coordinator Name" required class="form-input">
						</div>
						<div class="form-div">
							<label class="form-label" for="ev_coord_mobile"><b>Mobile No.</b></label><br>
							<input type="number" name="ev_coord_mobile" placeholder="Coordinator Mobile Number" required class="form-input">
						</div>
						<div>
							<input type="submit" value="Submit" class="form-submit">
						</div>
					</form>
				</div>
			</div>
			
			<!--<footer>
				<p class="footer-p">&copy; Virtuoso. All rights reserved.</p>
			</footer>-->
		</div>
	</body>
</html>