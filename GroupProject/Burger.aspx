<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Burger.aspx.cs" Inherits="GroupProject.Burger" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<head>
	<title>Burger Menu - The Best Hamburger</title>
	<meta charset="utf-8">
	<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="header">
		<div>
            
			
			<a href="BurgerIndex.html"><img  src="images/waitress.png" width="332" height="205" alt="" title=""></a>
			<ul class="navigation">
				<li>
					<a href="BurgerIndex.html">Home</a>
				</li>
				<li>
					<a href="about.html">About</a>
				</li>
				<li>
					<a class="active" href="burger.aspx">Menu</a>
				</li>
				<li>
					<a href="contact.html">Contact</a>
				</li>
				
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="content">
			<div style="width: 583px; height: 952px">
				<div>


					<h1>Burgers</h1>
					<div style="width: 550px"> <a href="burger.aspx"><img src="images/burger.jpg" width="434" height="288" alt=""></a> </div>
					<ul>
						<li>
							<h2><a href="Burger.aspx">Burger Special</a></h2>
						    <p>
								<asp:Label ID="lbldescription01" runat="server" Text=""></asp:Label> 
							</p>
							  <span class="price"> <asp:Label ID="Label01"  Font-Size="Small" runat ="server" Text=""></asp:Label></span>
						</li>

						<li>
							<h2><a href="Burger.apsx">Veggie Burger</a></h2>                            
							
								<asp:Label ID="lbldescription02" runat="server" Text=""></asp:Label> 
						        <p>
                                    <span class="price"> <asp:Label ID="lblprice02"   Font-Size="Small"  runat="server" Text=""></asp:Label></span>	
						        </p>
							

						</li>
						<li>
							<h2><a href="Burger.apsx">Super Duper Burger</a></h2>
							<p>
								<asp:Label ID="lbldescription03" runat="server" Text=""></asp:Label> 
							</p>
							<span class="price"> <asp:Label ID="lblprice03"  Font-Size="Small" runat ="server" Text=""></asp:Label></span>	<p>	</p>
						</li>
						<li class="last	">
							<h2><a href="Burger.apsx">Kiddies Burger</a></h2>
							<p>
								<asp:Label ID="lbldescription04" runat="server" Text=""></asp:Label> 
							</p>
							<span class="price"> <asp:Label ID="lblprice04"  Font-Size="Small" runat="server" Text=""></asp:Label></span>	<p>	</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="sidebar">
			<h1>Menu</h1>
			<ul class="navigation">
				<li class="first">
					<a class="active" href="burger.aspx">BURGERS</a>
				</li>
				<li>
					<a href="hotdog.html">HOTDOGS</a>
				</li>
				<li>
					<a href="shake.html">SHAKES</a>
				</li>
				
			</ul>
			<a href="burger.aspx" class="download">&nbsp;</a> </div>
	</div>
	<div id="footer">
		<div>
			<ul>
				<li class="first">
					<h2>Delivery </h2>
					<h3>Call 1-647-888-888</h3>
					
				</li>
				<li>
					
					<ul class="navigation">
						<li>
							<a href="BurgerIndex.html">Home</a>
						</li>
						<li>
							<a href="about.html">About Us</a>
						</li>
						<li>
							<a href="menu.html">Menu</a>
						</li>
						<li>
							<a href="contact.html">Contact Us</a>
						</li>
					</ul>
                    <span>&copy;The Best Hamburger. All Rights Reserved</span>
				</li>
				<li class="last">
					<h2>Follow Us By Email</h2>
					<form action="BurgerIndex.html">
						<input type="text" name="subscribe" value="Enter Your Email Here...">
						<input type="submit" value="">
					</form>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>

</asp:Content>
