
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="CanCat_.RegistroUsuario" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="UTF-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />    
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet"/>
        <link href="EstilosCss/Login.css" rel="stylesheet" />
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
    <script src="https://kit.fontawesome.com/e988bbf4e5.js" crossorigin="anonymous"></script>
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
	<link rel="stylesheet" type="text/css" href="vendor1/bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="fonts1/font-awesome-4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="fonts1/Linearicons-Free-v1.0.0/icon-font.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor1/animate/animate.css"/>
	<link rel="stylesheet" type="text/css" href="vendor1/css-hamburgers/hamburgers.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor1/animsition/css/animsition.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor1/select2/select2.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor1/daterangepicker/daterangepicker.css"/>
	<link rel="stylesheet" type="text/css" href="css1/util.css"/>
	<link rel="stylesheet" type="text/css" href="css1/main.css"/>
    <title>Registro</title>
</head>
<body>
    <form runat="server" >
            <script type="text/javascript">
                function validar(e) { // 1
                tecla = (document.all) ? e.keyCode : e.which; // 2
                if (tecla==8) return true; // 3
                patron =/[A-Za-z\s]/; // 4
                te = String.fromCharCode(tecla); // 5
                return patron.test(te); // 6
                }
            </script>
            <script type="text/javascript">
                function numeros(nu) { // 1
                tecla = (document.all) ? e.keyCode : e.which; // 2
                if (tecla==8) return true; // 3
                ppatron = /\d/; // Solo acepta números// 4
                te = String.fromCharCode(tecla); // 5
                return patron.test(te); // 6
                }
            </script>    
    
<div class="wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-6 d-flex align-items-center">
                    <p class="mb-0 phone pl-md-2">
                        <a href="https://localhost:44345/index.aspx"><span class="fa-solid fa-globe"></span> Traducir</a>
                        <a href="contact.aspx"><span class="fa fa-paper-plane mr-1"></span> Contacts</a>
                        <a href="login.aspx"><span class="fa-solid fa-user-lock"></span>Log in</a>
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


        <div class="my-content">
        <div class="container">
            

            <div class="row">
                <div class="col-sn-12"> 
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 myform-cont">
                      <span class="login100-form-title p-b-43">
						Sing Up
					</span>
                    <div class="myform-top">
                        <div class="myform-top-left">                         
                        </div>

                    </div>
                    <div class="myform-bottom">
                        <form role="form" action="" method="post" class="" > 
                            <div class="form-group"> 
                                <asp:TextBox ID="txtfirst" runat="server"  placeholder="First Name..." type="text" class="form-control"  onpaste="return false"  minlength="3" maxlength="30"  onkeypress="return validar(event)" ></asp:TextBox> 
                            </div>
                            <div class="form-group"> 
                                <asp:TextBox ID="txtapellido" runat="server"  placeholder="Last Name..." type="text" class="form-control"  onpaste="return false"  minlength="3" maxlength="30" onkeypress="return validar(event)"></asp:TextBox> 
                            </div>
                            <div class="form-group"> 
                                <asp:TextBox ID="txtusuario" runat="server"  placeholder="Username..." type="text" class="form-control"  onpaste="return false" minlength="3" maxlength="15"/>
                            </div>
                            <div class="form-group"> 
                                <asp:TextBox ID="txtclave" runat="server"  placeholder="Password..." type="password" class="form-control"  onpaste="return false" minlength="5" maxlength="15"/>
                            </div>
                            <div class="form-group"> 
                                <asp:TextBox ID="txtconfirm" runat="server"  placeholder="Repeat Password..." type="password" class="form-control"  onpaste="return false" minlength="5" maxlength="15"/>
                            </div>
                            <div class="form-group"> 
                                <asp:TextBox ID="txtgmail" runat="server"  placeholder="Gmail..." type="email" class="form-control"  onpaste="return false" minlength="5" maxlength="30"/>
                            </div>
                            <div class="container-login100-form-btn">
                           <asp:Button class="login100-form-btn" runat="server" Text="Sing Up" OnClick="BtnRgstrUsuario"></asp:Button> 
                            </div>

                            <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                    
                        </form>
                        
                   </div>
              </div>
           </div>
        </div>
    </div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
 <script src="js/bootstrap.min.js"></script> 
 </form>
</body>
</html>

