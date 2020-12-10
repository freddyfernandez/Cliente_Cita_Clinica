<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">    
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">   
    <link rel="stylesheet" href="/static/plugins/jquery-ui/themes/smoothness/jquery-ui.min.css">    
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet"> 
    <script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrapValidator.js"></script>

	<link rel="stylesheet" href="css/form-elements.css">
	<link rel="stylesheet" href="css/bootstrapValidator.css">
    

    

    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-583XC6');</script>
    <!-- End Google Tag Manager -->
    <!-- Facebook Pixel Code -->
    <script>
    !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
    n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
    n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
    t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
    document,'script','https://connect.facebook.net/en_US/fbevents.js');
    fbq('init', '336773700030359');
    fbq('track', 'PageView');
    
    
    
    

    </script>
    <noscript><img height="1" width="1" style="display:none"
    src="https://www.facebook.com/tr?id=336773700030359&ev=PageView&noscript=1"
    /></noscript>
    <!-- DO NOT MODIFY -->
    <!-- End Facebook Pixel Code -->
    

    <!-- Hotjar Tracking Code for https://doctavio.pe/ -->
    <script>
        (function(h,o,t,j,a,r){
            h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
            h._hjSettings={hjid:1690362,hjsv:6};
            a=o.getElementsByTagName('head')[0];
            r=o.createElement('script');r.async=1;
            r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
            a.appendChild(r);
        })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
    </script>

</head>
<body>

    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-583XC6"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->


     <header>
    <div class="header_content">
        <figure>
            <a href="/"><img src="images/logo.png" class="img-fluid"></a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a style="color:#00a850; text-decoration:underline;cursor: pointer;"
               href="/teleorientacion/"
               title="Teleorientación">
            </a>
        </figure>

        <a href="#" title="" class="icon icon-menu-mobile"></a>
        <!--<a href="#" title="" class="icon icon-menu-mobile"></a>-->
        
        <ul id="menu">      
            <div class="row">
                <form action="verlogin" class="col-6"> 
                    <button type="submit" class="btn btn-warning">INGRESAR</button>                                                   
                </form> 
                <form action="verRegistro" class="col-6">
                    <button type="submit"  class="btn btn-warning">REGISTRAR</button>        	                                                   
                </form>                     
            </div>    
        </ul>
    </div>
</header><!-- /header -->
    <div class="wrapper_body">
        <div class="body_content">
            
<div id="login">
    <div class="block1">
        <div class="block_content">
            
                <div class="title">Iniciar Sesión</div>
                <div class="text">&iquest;Aún no tienes cuenta en Doctavio?<br><br>
                    -<a href="/verRegistro/">Regístrate</a>-
                </div>
            

        </div>
    </div>
    <div class="block2">
        <div class="block_content">
            <div class="form">
               	<c:if test="${requestScope.mensaje != null}">
               		<div class="alert alert-danger fade in" id="success-alert">
				        <a href="#" class="close" data-dismiss="alert">&times;</a>
				        <strong>${requestScope.mensaje}</strong>
				    </div>
				    </c:if>
                <form action="login" id="id_form" method="POST" class="login-form">
                    <input type="hidden" name="action_requested" id="action_requested" value="">
                    <input type="hidden" name="next" id="next_login" value="">
                    <input type='hidden' name='csrfmiddlewaretoken' value='6GTWuzY6lKh1c4dn6jJOKGGTh56d7wBkV5sIcpx1D9lZXgATMp12rJwFz9bMzbWe' />
                    <div class="form_field">
                        <input type="text" class="input_form"  name="login" placeholder="Usuario...">
                    </div>
                    <div class="form_field">
                        <input type="password" name="password" class="input_form" placeholder="Contraseña">
                    </div>
                    <div class="form_field center">
                        <a href="/recuperar-contrasena/">
                            Olvidé mi contraseña
                        </a>
                    </div>                    
	                    <div class="form_field center">
	                        <input type="submit" class="btn_form" value="INGRESAR">
	                    </div>
	                
                </form>
            </div>
        </div>
    </div>
    <div class="separator"></div>
    <div class="block3">
        <div class="block_content">
            O también puedes acceder mediante:

            
                <div class="form_message_error" style="display:none;">
                    <b>Ups!</b>
                    No se ha podido iniciar sesión con el proveedor seleccionado
                </div>
            
            <a href="/iniciar-sesion/social-request/?provider=facebook&register=false&next=&" class="btn_login fb_login"></a>
            <a href="/iniciar-sesion/social-request/?provider=google&register=false&next=&" class="btn_login gmail_login"></a>
        </div>
    </div>
</div>

        </div>
    </div>
    <footer style="clear: both;">
    <div class="content_footer">
        <ul class="footer_links">
            <li>- Nosotros</li>
            <li><a href="/nosotros/">Misión y Visión</a></li>
            <li><a href="/registro/">Registro de Usuarios</a></li>
            <li><a href="/iniciar-sesion/">Iniciar Sesión</a></li>
            <li><a href="/recuperar-contrasena/">Recuperar Contraseña</a></li>
            <li><a href="/contacto/">Contacto</a></li>
        </ul>
        <ul class="footer_links">
            <li>- Doctores</li>
            <li><a href="/zona-doctores/">Beneficios</a></li>
            <li><a href="/zona-doctores/">Afiliación</a></li>
            <li><a href="http://socios.doctavio.pe">Panel de Control</a></li>
            <li><a href="/zona-doctores/preguntas-frecuentes/">Preguntas Frecuentes</a></li>
        </ul>
        <ul class="footer_links">
            <li>- Distritos</li>
            <li><a href="/medicos/?s=&u=140133">Jesús María</a></li>
            <li><a href="/medicos/?s=&u=140130">Santiago de Surco</a></li>
            <li><a href="/medicos/?s=&u=140115">Miraflores</a></li>
            <li><a href="/medicos/?s=&u=140124">San Isidro</a></li>
            <li><a href="/medicos/?s=&u=140140">San Borja</a></li>
        </ul>
        <ul class="footer_links">
            <li>- Redes Sociales</li>
            <li><a href="https://www.facebook.com/DoctavioOficial/" target="_blank"><span class="icon icon-fb"></span>Facebook</a></li>
            <li><a href="https://www.linkedin.com/company/doctavio/" target="_blank"><span class="icon icon-in"></span>LinkedIn</a></li>
            <li><a href="https://www.youtube.com/channel/UC8WLVvQR4nR393mokSFZDkQ" target="_blank"><span class="icon icon-ytb"></span>Youtube</a></li>
        </ul>
        <div class="address">
            <span>Calle Cerro Colorado 175, Urb. San Ignacio de Monterrico, Lima33 Santiago de Surco - Perú</span>
            &copy;Copyright Doctavio - Perú
        </div>
    </div>
</footer>

</body>
     
<script type="text/javascript">
$("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>
</html>