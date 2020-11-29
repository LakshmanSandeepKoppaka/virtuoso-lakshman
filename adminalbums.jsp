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
				<a href="adminalbums.jsp" class="header-a">Add Album</a>
				<a href="adminviewalbums.jsp" class="header-a">View Albums</a>
				<a href="adminhome.jsp" class="header-a">Back</a>
			</header>
			
			<div class="input-block">
				<h1 class="form-heading">Add Album</h1>
				<div>
					<form action="adminalbums1.jsp" method="post" enctype="multipart/form-data">
						<input type="hidden" name="role" value="album_reg">
						<div class="form-div">
							<label class="form-label" for="al_name"><b>Album Name</b></label><br>
							<input type="text" name="al_name" placeholder="Album Name" required class="form-input">
						</div>
						<div class="form-div">
							<label class="form-label" for="al_artist_name"><b>Artist Name</b></label><br>
							<input type="text" name="al_artist_name" placeholder="Artist Name" required class="form-input">
						</div>
						<div class="form-div">
							<label class="form-label" for="al_category"><b>Category</b></label><br>
							<select name="al_category" required class="form-input">
								<option value="Acoustic">Acoustic</option>
								<option value="Blues">Blues</option>
								<option value="Country">Country</option>
								<option value="Electronic">Electronic</option>
								<option value="Funk">Funk</option>
								<option value="Hip Hop">Hip Hop</option>
								<option value="Jazz">Jazz</option>
								<option value="Melodies">Melodies</option>
								<option value="Opera">Opera</option>
								<option value="Pop">Pop</option>
								<option value="Punk">Punk</option>
								<option value="Rap">Rap</option>
								<option value="Reggae">Reggae</option>
								<option value="Rock">Rock</option>
							</select>
						</div>
						<div class="form-div">
							<label class="form-label" for="al_price"><b>Price</b></label><br>
							<input type="number" name="al_price" placeholder="Price" required class="form-input">
						</div>
						<div class="form-div">
							<label class="form-label" for="al_desc"><b>Description</b></label><br>
							<textarea name="al_desc" placeholder="Album Description" rows="6" required class="form-input"></textarea>
						</div>
						<!--<div class="form-div">
							<label class="form-label" for="al_image"><b>Choose Image</b></label><br>
							<input type="file" name="al_image" placeholder="Choose Image" accept="image/*" required class="form-input">
						</div>-->
						<div class="form-div">
							<label class="form-label" for="al_audio"><b>Choose Audio File</b></label><br>
							<input type="file" name="al_audio" placeholder="Choose Audio" accept=".mp3,audio/*" required class="form-input">
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