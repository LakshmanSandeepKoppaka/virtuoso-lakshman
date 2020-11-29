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
				<a href="adminproducts.jsp" class="header-a">Add Product</a>
				<a href="adminviewproducts.jsp" class="header-a">View Products</a>
				<a href="adminhome.jsp" class="header-a">Back</a>
			</header>
			
			<div class="input-block">
				<h1 class="form-heading">Add Product</h1>
				<div>
					<form action="adminproducts1.jsp" method="post" enctype="multipart/form-data">
						<input type="hidden" name="role" value="product_reg">
						<div class="form-div">
							<label class="form-label" for="pr_name"><b>Product Name</b></label><br>
							<input type="text" name="pr_name" placeholder="Product Name" required class="form-input">
						</div>
						<div class="form-div">
							<label class="form-label" for="pr_price"><b>Price</b></label><br>
							<input type="number" name="pr_price" placeholder="Price" required class="form-input">
						</div>
						<div class="form-div">
							<label class="form-label" for="pr_quantity"><b>Quantity</b></label><br>
							<input type="number" name="pr_quantity" placeholder="Quantity" required class="form-input">
						</div>
						<!--<div class="form-div">
							<label class="form-label" for="pr_desc"><b>Description</b></label><br>
							<textarea name="pr_desc" placeholder="Product Description" rows="6" required class="form-input"></textarea>
						</div>-->
						<div class="form-div">
							<label class="form-label" for="pr_stock"><b>Stock?</b></label><br>
							<select name="pr_stock" required class="form-input">
								<option value="In Stock">In Stock</option>
								<option value="Out of Stock">Out of Stock</option>
							</select>
						</div>
						<div class="form-div">
							<label class="form-label" for="pr_image"><b>Image</b></label><br>
							<input type="file" name="pr_image" placeholder="Choose Image" accept="image/*" required class="form-input">
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