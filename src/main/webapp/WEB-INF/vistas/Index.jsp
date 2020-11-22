<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title> Reservar Cita Médica - Doctavio </title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">    
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="/static/plugins/jquery-ui/themes/smoothness/jquery-ui.min.css">

    



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
    
        <!-- CLIENGO installation code for https://doctavio.pe -->
    <script>(function(){var ldk=document.createElement('script'); ldk.type='text/javascript'; ldk.async=true; ldk.src='https://s.cliengo.com/weboptimizer/597736eee4b07ddafc7cd895/597736f3e4b07ddafc7cd89c.js' ; var s=document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ldk, s);})();</script>
    

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
                    <button type="submit" class="btn btn-warning">Inicia</button>                                                   
                </form> 
                <form action="verRegistro" class="col-6">
                    <button type="submit"  class="btn btn-warning">Registrar</button>        	                                                   
                </form>                     
            </div>    
        </ul>
    </div>
</header><!-- /header -->
    <div class="wrapper_body">
        <div class="body_content">
            

    <div id="home">
        <div class="block1">
            <div class="message">
                Conectamos pacientes con doctores <br>
                en el Perú.
            </div>
            <div class="form">
                <form action="">
                    <div class="form_field">
                        <span class="hint">p.e. pediatría, gastroenterología, etc.</span>
                        <input class="input_form" name="k" id="k" type="text" value="" placeholder="Especialidad o Doctor">

                    </div>
                    <div class="form_field form_field2" id="sec_dist">
                        <input type="text" class="input_form" name="ubigeo_name" id="ubigeo_name" placeholder="Distrito"  value="">
                    </div>

                    <div class="form_field center form_action">
                        <input type="hidden" id="url_specialties" value="/buscar-especialidades/">
                        <input type="hidden" id="url_districts" value="/distritos/">
                        <input type="hidden" id="specialty_id"  value=""  name="specialty_id"  />
                        <input type="hidden" id="url_for_professionals" value="/doctores/">
                        <input type="hidden" id="ubigeo" value="" name="ubigeo">
                        <input type="button" class="btn_form" value="BUSCAR" id="global_search">
                    </div>

                </form>
            </div>
            <div class="extra_icon"></div>
        </div>
        <div class="block2">
            <!--<div class="left_side">
                <div class="content_left_side">
                    <div class="title">
                        Vacúnate contra la influenza
                    </div>
                    <img class="responsive" src="/static/images/influenza.jpg" alt="">
                    <div class="text">
                        Ambulatorias con ellos mediante muestras 05/01/17  al aplicaciones 26/01/17 móvil y web
                    </div>
                    <div class="block_action">
                        <input type="button" value="+&nbsp;&nbsp;&nbsp;&nbsp;VER MAS" class="btn_form">
                    </div>
                </div>
            </div>
-->

            

        </div>
        <div class="block3">
            <div class="pink_bg"></div>
            <div class="content_block3">
                <div class="title">Doctavio está para ayudarte</div>
                <div class="text">
                    Nuestro objetivo es ayudar a la población peruana a encontrar un doctor y reservar citas ambulatorias con ellos mediante nuestras aplicaciones web y móvil.
                </div>
                <img src="images/doctor_tv.png" alt="">
                <ul class="help_list">
                    <li><span class="icon icon-lu"></span>Encuentra fácilmente un doctor cerca a ti.</li>
                    <li><span class="icon icon-cal"></span>Reserva tu cita y atiéndete cuando quieras.</li>
                    <li><span class="icon icon-cor"></span>Empieza a sentirte mejor cuanto antes.</li>
                </ul>
            </div>
        </div>
        <div class="block4">
            <div class="title">Especialidades y Distritos Populares</div>
            <div class="list">
                <ul class="block4_list">
                    <li><span class="icon icon-esp"></span>Especialidades</li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?s=3">Dermatología</a></li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?s=9">Gastroenterología</a></li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?s=4">Ginecología y Obstetricia</a></li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?s=10">Neonatología</a></li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?s=6">Oftalmología</a></li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?s=11">Ortopedia y Traumatología</a></li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?s=5">Otorrinolaringología</a></li>
                    

                    <li><span class="icon icon-vermas"></span><a href="/medicos/">Ver todos...</a></li>
                </ul>
                <ul class="block4_list">
                    <li><span class="icon icon-city"></span>Distritos</li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?u=140101">Cercado de Lima</a></li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?u=140103">Ate</a></li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?u=140104">Breña</a></li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?u=140105">Carabayllo</a></li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?u=140106">Comas</a></li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?u=140107">Chaclacayo</a></li>
                    
                    <li><span class="dot">.</span><a href="/medicos/?u=140108">Chorrillos</a></li>
                    

                    <li><span class="icon icon-vermas"></span><a href="/medicos/">Ver todos...</a></li>
                </ul>
            </div>
        </div>
        <div class="block5">
            <div class="block_image">
                <img src="/images/mobile.png" alt="">
            </div>
            <div class="block_content">
                <div class="title">
                    Instala doctavio en tu celular
                </div>
                <ul class="mobile_list">
                    <li>Encuentra un doctor cerca de donde estás</li>
                    <li>Revisa los comentarios de personas que se han atendido con él (ella).</li>
                    <li>Reserva tu cita y atiéndete cuando quieras.</li>
                </ul>
                <div class="block_actions">
                    <!-- <a target="_blank" href="#"><img src="/static/images/get_appstore.png" alt=""></a>
                    -->
                    <a target="_blank" href="https://play.google.com/store/apps/details?id=pe.innovati.doctavio"><img src="/images/get_googleplay.png" alt=""></a>
                </div>
            </div>
        </div>
        <div class="block6">
            <div class="block_content">
                <div class="image">
                    <img src="/images/doctor_doctavio.png" alt="">
                </div>
                <div class="title">¿Eres un gran profesional <br>de la salud?
                </div>
                <div class="subtitle">Entérate de los beneficios que te ofrecemos.</div>
                <ul class="beneficios">
                    <li><span class="icon icon1"></span><br>Afiliate Gratis</li>
                    <li><span class="icon icon2"></span><br>Establece tu Horario</li>
                    <li><span class="icon icon3"></span><br>Atiende a tus Pacientes</li>
                    <li><span class="icon icon4"></span><br>Gana Reputación</li>
                </ul>
                <div class="block_action">
                    <a href="/zona-doctores/"><span class="icon"></span><span>SABER MAS</span></a>
                    <a href="http://socios.doctavio.pe" class="cpanel" title="Ir a mi Panel de Control"><span class="icon icon-enter"></span>IR A MI PANEL</a>
                </div>
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
<script src="/static/plugins/jquery/dist/jquery.js"></script>
<script src="/static/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="/static/plugins/bootstrap/dist/js/bootstrap.min.js"></script>

<script src="/static/js/main.js"></script>

    <script src="/static/js/home.js"></script>


</html>
    