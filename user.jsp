<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Virtuoso Music Services</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/style.css">
	</head>
	
	<body>
		<div class="body-bg-img"></div>
		<div>
			<header>
				<a href="index.jsp" class="header-a">Home</a>
				<a href="admin.jsp" class="header-a">Admin</a>
				<a href="user.jsp" class="header-a">User</a>
			</header>
			
			<div class="input-block">
				<h1 class="form-heading">User Login</h1>
				<div>
					<form action="crudoperations.jsp" method="post">
						<input type="hidden" name="role" value="user_login">
						<div class="form-div">
							<label class="form-label" for="username"><b>Username</b></label><br>
							<input type="text" name="username" placeholder="Email ID" required class="form-input">
						</div>
						<div>
							<label class="form-label" for="password"><b>Password</b></label><br>
							<input type="password" name="password" placeholder="Password" required class="form-input">
						</div>
						<div>
							<input type="submit" value="Login" class="form-submit">
						</div>
						<div>
							<a href="userforgotpassword.jsp" class="form-ahref">Forgot Password??</a>
						</div>
						<div>
							<a href="userreg.jsp" class="form-ahref">No Login Credentials??Click Here!!</a>
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