<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CanCat_.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="UTF-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	<link rel="icon" href="../img/favicon.png"/>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/animate.css"/>
    <link rel="stylesheet" href="css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="css/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="css/magnific-popup.css"/>
    <link rel="stylesheet" href="css/bootstrap-datepicker.css"/>
    <link rel="stylesheet" href="css/jquery.timepicker.css"/>
    <link rel="stylesheet" href="css/flaticon.css"/>
    <link rel="stylesheet" href="css/style.css"/>
	<link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link href="EstilosCss/Login.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images1/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts1/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts1/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor1/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor1/daterangepicker/daterangepicker.css"/>
	<script src="https://kit.fontawesome.com/e988bbf4e5.js" crossorigin="anonymous"></script>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css1/util.css"/>
	<link rel="stylesheet" type="text/css" href="css1/main.css"/>
<!--===============================================================================================-->
	<title>Inicio de sesión</title>
</head>
<body style="background-color: #666666;">
	 <div class="wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-6 d-flex align-items-center">
                    <p class="mb-0 phone pl-md-2">
                        <a href="https://localhost:44345/index.aspx"><span class="fa-solid fa-globe"></span> Traducir</a>
                        <a href="contact.aspx"><span class="fa fa-paper-plane mr-1"></span> Contacts</a>
                        <a href="index.aspx"><span class="fa-solid fa-user-lock"></span>Return</a>
                    </p>
                </div>
                <div class="col-md-6 d-flex justify-content-md-end">
                    <div class="social-media">
                        <p class="mb-0 d-flex">
                            <a href="https://www.facebook.com/profile.php?id=100084350307084" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
                            <a href=" https://twitter.com/CancatV" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
                            <a href=" https://www.instagram.com/cancatvetpet/" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				
				<form class="login100-form validate-form" align="TOP" >
				<form runat="server">
					<span class="login100-form-title p-b-43">
						Login
					</span>
					
					
					<div class="form-group">
                            <asp:TextBox ID="TxtUsuario" runat="server" placeholder="Username..." type="text" class="form-control" onpaste="return false" minlength="3" MaxLength="30"/>
                    </div>
                    <div class="form-group">
                            <asp:TextBox ID="TxtContra" runat="server" placeholder="Password..." type="password" class="form-control" onpaste="return false" minlength="5
								" MaxLength="15" />
                    </div>

					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me"/>
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>

						<div class="container-login100-form-btn">
							<a href="RecuperarCuenta.aspx" class="nav-link"> Forgot your password?</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						 <asp:Button class="login100-form-btn" runat="server" Text="Login" OnClick="Unnamed1_Click"></asp:Button>
					</div>
                    <br />
					<div class="container-login100-form-btn">
							<a href="RegistroUsuario.aspx" class="nav-link">Register</a> 
					</div>

					<asp:Literal ID="Literal1" runat="server" Text=""></asp:Literal>

					<div class="text-center p-t-46 p-b-20">
						<span class="txt2">
							
						</span>
					</div>

					<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
                     <script src="js/bootstrap.min.js"></script>

				</form>
				</form>

				<div class="login100-more" style="background-image: url('images1/salvatore.png');"></div>
	
	

	
	
<!--===============================================================================================-->
	<script src="vendor1/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/bootstrap/js/popper.js"></script>
	<script src="vendor1/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/daterangepicker/moment.min.js"></script>
	<script src="vendor1/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js1/main.js"></script>

</body>
</html>