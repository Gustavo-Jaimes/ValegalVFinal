<?php
/* %%%%%%%%%%%%%%%%%%%% MENSAJES               */
	if($mensaje!=''){
		$mensajes='
			<div class="uk-container">
				<div uk-grid>
					<div class="uk-width-1-1 margin-v-20">
						<div class="uk-alert-'.$mensajeClase.'" uk-alert>
							<a class="uk-alert-close" uk-close></a>
							'.$mensaje.'
						</div>					
					</div>
				</div>
			</div>';
	}

/* %%%%%%%%%%%%%%%%%%%% RUTAS AMIGABLES        */
		$rutaInicio 		=	$ruta;
		$rutaTienda 		=	$ruta.'0_0_0_tienda_wozial';
		$rutaPedido			=	$ruta.rand(1,999999999).'_revisar_orden';
		$rutaPedido2		=	$ruta.'revisar_datos_personales';
		$rutaServicios      =   $ruta.'servicios';
		$rutaMaterial       =   $ruta.'material';
		$rutaProyectos		=	$ruta.'proyectos';
		$rutaMaterial3		=	$ruta.'material3';
		$rutaNosotros		=	$ruta.'nosotros';
		$rutaContacto		=	$ruta.'contacto';
		$rutaFaq	     	=	$ruta.'faq';
		$rutaPrivacidad	    =	$ruta.'privacidad';
		$rutaAgenda		    =	$ruta.'agenda';
		$rutaArticulos		=	$ruta.'0_0_0_articulos';
		$rutaEspecificaciones		=	$ruta.'especificaciones';

/* %%%%%%%%%%%%%%%%%%%% MENU                   */
	$menu='
		<li class="'.$nav1.'"><a class="" href="'.$rutaInicio.'"><b>INICIO > </b></a></li>
		<li class="'.$nav2.'"><a class="" href="'.$rutaServicios.'"><b>SERVICIOS</b></a></li>
		<li class="'.$nav3.'"><a class="" href="'.$rutaMaterial .'"><b>MATERIAL</b></a></li>
		<li class="'.$nav4.'"><a class="" href="'.$rutaProyectos.'"><b>MATERIAL2</b></a></li>
		<li class="'.$nav5.'"><a class="" href="'.$rutaMaterial3.'"><b>MATERIAL3</b></a></li>
		<li class="'.$nav6.'"><a class="" href="'.$rutaNosotros.'"><b>NOSOTROS</b></a></li>
		<li class="'.$nav7.'"><a class="" href="'.$rutaContacto.'"><b>CONTACTO</b></a></li>
		<li class="'.$nav8.'"><a class="" href="'.$rutaFaq.'"><b>FAQ</b></a></li>
		<li class="'.$nav9.'"><a class="" href="'.$rutaPrivacidad.'"><b>PRIVACIDAD</b></a></li>
		';

		if(isset($_SESSION['idioma'])){
			$idioma = $_SESSION['idioma'];
		}else{
			$idioma = "es";
		}
		
			switch ($idioma) {
				case 'es':
					$quien = "¿QUIENES SOMOS?";
					$mision="MISION Y VISION";
					$expertos="NUESTROS EXPERTOS";
					$consultoria ="CONSULTORIA";
					$centro="CENTRO DE ENTRENAMIENTO";
					$industrias= "INDUSTRIAS";
					$tecnologia ="TECNOLOGIA";
					$caso = "CASOS DE EXITO";
					$inicio = "INICIO";
					$servicios = "SERVICIOS";
					$nosotros = "NOSOTROS";
					$proyectos = "NUESTROS <br> CLIENTES";
					$contacto = "CONTACTO";
					$privacidad = "PRIVACIDAD";
					$footer = "2021 TODOS LOS DERECHOS RESERVADOS. DESARROLLADO POR";
					break;
	
				case 'en':
					$quien = "¿ABOUT US?";
					$mision="MISSION AND VISION";
					$expertos="OUR EXPERTS";
					$consultoria ="CONSULTANCY";
					$centro="ENTERTAINMENT CENTER";
					$industrias= "INDUSTRIES";
					$tecnologia ="TECHNOLOGY";
					$caso = "SUCCESSFUL CASES";
					$inicio = "BEGINNING";
					$servicios = "SERVICES";
					$nosotros = "US";
					$proyectos = "OUR CLIENTS";
					$contacto = "CONTACT";
					$inicio = "BEGINNING";
					$privacidad = "PRIVACY";
					$footer = "2021 ALL RIGHTS RESERVED. DEVELOPED BY";
					break;
			}
	$menuMovil='
		<nav style="margin-top: -15em">
			<ul>
				<li><a href="'.$rutaInicio.'">'.$inicio.'</a></li>
				<li><a href="'.$rutaContacto.'">QUIÉNES SOMOS</a></li>
				<li><a href="'.$rutaNosotros.'">ÁREAS DE PRÁCTICAS</a></li>
			</ul>
		</nav>
		';

/* %%%%%%%%%%%%%%%%%%%% HEADER                 */

$header='
<div class="uk-offcanvas-content">

	<header style="width: 100%;">
		<div class="uk-margin-remove" style="background-color: black">
			<div uk-grid >

				<!-- Botón menú móviles -->
				<div class="uk-width-1-2 uk-hidden@m">
					<a href="#menu-movil" uk-toggle class="uk-button uk-button-default color-primary"><i class="fa fa-bars" aria-hidden="true"></i> &nbsp; MENÚ</a>
				</div>
			

				<!-- Menú escritorio -->
				<div class="uk-width-expand@m uk-visible@m header">
					<div class="uk-text-center container" uk-grid>
						<div class="uk-width-1-3@m">
							<a class="uk-navbar-item uk-logo logo" href="'.$rutaInicio.'"><img src="./img/design/logo.png" alt=""></a>
						</div>
						<div class="uk-width-expand@m">
							<div class="uk-flex uk-flex-middle  uk-flex-left item">
								<a href="tel:+523336413973"><i class="fa fa-phone"></i></a>
								<p class="m-0 uk-flex uk-flex-center">Teléfono</p>
							</div>
							<a href="tel:+523336413973"><p class="uk-padding-remove uk-margin-remove anuncio" style="text-decoration: none; color: black;">(33) 3641 3973 Ext. 110</p></a>
						</div>
						<div class="uk-width-expand@m ">
							<div class="uk-flex uk-flex-middle  uk-flex-left item">
								<a href="mailto:administrativo@valegal.mx"><i class="fa fa-envelope"></i></a>
								<p class="m-0 uk-flex uk-flex-left">Email</p>
							</div>
							<a href="mailto:administrativo@valegal.mx"><p class="uk-padding-remove uk-margin-remove anuncio" style="text-decoration: none; color: black;">administrativo@valegal.mx</p></a>  
						</div>
						<div class="uk-width-expand@m ">
							<div class="uk-flex uk-flex-middle  uk-flex-left item">
								<i class="fa fa-clock-o"></i>
								<p class="m-0 uk-flex uk-flex-left">Horario de Atención</p>
							</div>
							<p class="uk-padding-remove uk-margin-remove anuncio">Lun - Vie de 9:00 a 18:00</p>    
						</div>
						<div class="uk-width-1-1@m uk-margin-remove uk-padding-remove barra">
								<nav class="uk-navbar-container" uk-navbar>
									<div class="uk-navbar-center">
							
										<ul class="uk-navbar-nav opt">
											<li><a href="'.$rutaInicio.'" >INICIO</a></li>
											<li><a href="'.$rutaContacto.'" >QUIÉNES SOMOS</a></li>
											<li><a href="'.$rutaNosotros.'" >ÁREAS DE PRÁCTICAS</a></li>
										</ul>
							
									</div>
								</nav>
						</div>
					</div>	
				</div>
	</header>
			
	<!-- Menú móviles -->
	<div id="menu-movil" uk-offcanvas="mode: push;overlay: true">
		<div class="uk-offcanvas-bar uk-flex uk-flex-column">
			<button class="uk-offcanvas-close" type="button" uk-close></button>
			<ul class="uk-nav uk-nav-primary uk-nav-parent-icon uk-nav-center uk-margin-auto-vertical" uk-nav>
				'.$menuMovil.'
			</ul>
		</div>
	</div>
</div>';
		

/* %%%%%%%%%%%%%%%%%%%% FOOTER                 */
	$whatsIconClass=(isset($_SESSION['whatsappHiden']))?'':'uk-hidden';
	$stickerClass=($carroTotalProds==0 OR $identificador==500 OR $identificador==501 OR $identificador==502)?'uk-hidden':'';
	$footer='
	<footer>
		<div class="bg-footer ">
			<div class="uk-text-center uk-flex uk-flex-middle container" uk-grid>
				<div class="uk-width-1-3@m footer-img">
				<a class="uk-navbar-item uk-logo logo" href="'.$rutaInicio.'"><img src="./img/design/logo_blanco.png" class="rounded mx-auto d-block" alt="..."></a>
				</div>
				<div class="uk-width-auto@m"></div>
				<div class="uk-width-expand@m uk-padding-remove">
					<p class="info">Información de Contacto</p>
					<a href="https://goo.gl/maps/w3yAeEAAmN5mnCG36"><p class="direccion">J. Gpe. Montenegro 2116, interior 2, Americana 44160, Guadalajara, Jal. MX.</p></a>
				</div>

				
				<div class="uk-width-expand@m uk-padding-remove">
					<div class="uk-flex uk-flex-center u-flex-middle">
						<a href="tel:+523336413973"><i class="fa fa-phone raya"></i></a>
						<a href="tel:+523336413973"><p class="m-0 tel">(33) 3641 3973 Ext. 110</p></a>
					</div>
					<div class="uk-flex uk-flex-center u-flex-middle" >
					<a href="mailto:administrativo@valegal.mx"><i class="fa fa-envelope raya"></i></a>
                        <a href="mailto:administrativo@valegal.mx"><p class="m-0 uk-flex uk-flex-left tel">administracion@valegal.mx</p></a>
                    </div>    
				</div>
				<div class="uk-width-auto@m"></div>
				<div class="uk-width-1-1@m uk-margin-remove aviso">
					<p>Copyright 2021 Valegal, Todos los derechos reservados. | Aviso de Privacidad</p>
				</div>
			</div>
		</div>
	</footer>

		<div id="cotizacion-fixed" class="uk-position-top uk-height-viewport '.$stickerClass.'">
			<div>
				<a class="" href="'.$rutaPedido.'"><img src="img/design/checkout.png" id="cotizacion-fixed-img"></a>
			</div>
		</div>

		'.$loginModal.'

	</div>

	<div id="spinnermodal" class="uk-modal-full" uk-modal>
		<div class="uk-modal-dialog uk-flex uk-flex-center uk-flex-middle uk-height-viewport">
			<div>
				<div class="claro" uk-spinner="ratio: 5">
				</div>
			</div>
		</div>
   	</div>';

/* %%%%%%%%%%%%%%%%%%%% HEAD GENERAL                */
	$headGNRL='
		<html lang="'.$languaje.'">
		<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# website: http://ogp.me/ns/website#">

			<meta charset="utf-8">
			<title>'.$title.'</title>
			<meta name="description" content="'.$description.'" />
			<meta property="fb:app_id" content="'.$appID.'" />
			<link rel="image_src" href="'.$ruta.$logoOg.'" />

			<meta property="og:type" content="website" />
			<meta property="og:title" content="'.$title.'" />
			<meta property="og:description" content="'.$description.'" />
			<meta property="og:url" content="'.$rutaEstaPagina.'" />
			<meta property="og:image" content="'.$ruta.$logoOg.'" />

			<meta itemprop="name" content="'.$title.'" />
			<meta itemprop="description" content="'.$description.'" />
			<meta itemprop="url" content="'.$rutaEstaPagina.'" />
			<meta itemprop="thumbnailUrl" content="'.$ruta.$logoOg.'" />
			<meta itemprop="image" content="'.$ruta.$logoOg.'" />

			<meta name="twitter:title" content="'.$title.'" />
			<meta name="twitter:description" content="'.$description.'" />
			<meta name="twitter:url" content="'.$rutaEstaPagina.'" />
			<meta name="twitter:image" content="'.$ruta.$logoOg.'" />
			<meta name="twitter:card" content="summary" />

			<meta name="viewport" content="width=device-width user-scalable=no"/>
	

			<link rel="icon"            href="'.$ruta.'img/design/favicon.ico" type="image/x-icon">
			<link rel="shortcut icon"   href="img/design/favicon.ico" type="image/x-icon">
			<link rel="stylesheet"      href="https://cdn.jsdelivr.net/npm/uikit@'.$uikitVersion.'/dist/css/uikit.min.css" />
			<link rel="stylesheet/less" href="css/general.less" >
			<link rel="stylesheet"      href="https://fonts.googleapis.com/css?family=Lato:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
			<link rel="preconnect" href="https://fonts.gstatic.com">
            <link href="https://fonts.googleapis.com/css2?family=Asap:wght@400;700&display=swap" rel="stylesheet">
			<link rel="preconnect" href="https://fonts.gstatic.com">
            <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">

			<!-- jQuery is required -->
			<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

			<!-- UIkit JS -->
			<script src="https://cdn.jsdelivr.net/npm/uikit@'.$uikitVersion.'/dist/js/uikit.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/uikit@'.$uikitVersion.'/dist/js/uikit-icons.min.js"></script>

			<!-- Font Awesome -->
			<script src="https://kit.fontawesome.com/910783a909.js" crossorigin="anonymous"></script>

			<!-- Less -->
			<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/3.9.0/less.min.js" ></script>
		</head>';

/* %%%%%%%%%%%%%%%%%%%% SCRIPTS                */
	$scriptGNRL='
		<script src="js/general.js"></script>

	<!--	<script src="//code.jivosite.com/widget.js" data-jv-id="R4ZWEOn0XH" async></script> -->
		
		';

	// Script login Facebook
	$scriptGNRL.=(!isset($_SESSION['uid']) AND $dominio != 'localhost' AND isset($facebookLogin))?'
		<script>
			// Esta es la llamada a facebook FB.getLoginStatus()
			function statusChangeCallback(response) {
				if (response.status === "connected") {
					procesarLogin();
				} else {
					console.log("No se pudo identificar");
				}
			}

			// Verificar el estatus del login
			function checkLoginState() {
				FB.getLoginStatus(function(response) {
					statusChangeCallback(response);
				});
			}

			// Definir características de nuestra app
			window.fbAsyncInit = function() {
				FB.init({
					appId      : "'.$appID.'",
					xfbml      : true,
					version    : "v'.$appVersion.'"
				});
				FB.AppEvents.logPageView();
			};

			// Ejecutar el script
			(function(d, s, id){
				var js, fjs = d.getElementsByTagName(s)[0];
				if (d.getElementById(id)) {return;}
				js = d.createElement(s); js.id = id;
				js.src = "//connect.facebook.net/es_LA/sdk.js";
				fjs.parentNode.insertBefore(js, fjs);
			}(document, \'script\', \'facebook-jssdk\'));
			
			// Procesar Login
			function procesarLogin() {
				FB.api(\'/me?fields=id,name,email\', function(response) {
					console.log(response);
					$.ajax({
						method: "POST",
						url: "includes/acciones.php",
						data: { 
							facebooklogin: 1,
							nombre: response.name,
							email: response.email,
							id: response.id
						}
					})
					.done(function( response ) {
						console.log( response );
						datos = JSON.parse( response );
						UIkit.notification.closeAll();
						UIkit.notification(datos.msj);
						if(datos.estatus==0){
							location.reload();
						}
					});
				});
			}
		</script>

		':'';


// Reportar actividad
	$scriptGNRL.=(!isset($_SESSION['uid']))?'':'
		<script>
			var w;
			function startWorker() {
			  if(typeof(Worker) !== "undefined") {
			    if(typeof(w) == "undefined") {
			      w = new Worker("js/activityClientFront.js");
			    }
			    w.onmessage = function(event) {
					//console.log(event.data);
			    };
			  } else {
			    document.getElementById("result").innerHTML = "Por favor, utiliza un navegador moderno";
			  }
			}
			startWorker();
		</script>
		';
// %%%%%%%%%%%%%%%% LENGUAJE


/* %%%%%%%%%%%%%%%%%%%% BUSQUEDA               */
	$scriptGNRL.='
		<script>
			$(document).ready(function(){
				$(".search").keyup(function(e){
					if(e.which==13){
						var consulta=$(this).val();
						var l = consulta.length;
						if(l>2){
							window.location = ("'.$ruta.'"+consulta+"_gdl");
						}else{
							UIkit.notification.closeAll();
							UIkit.notification("<div class=\'bg-danger color-blanco\'>Se requiren al menos 3 caracteres</div>");
						}
					}
				});
				$(".search-button").click(function(){
					var consulta=$(".search-bar-input").val();
					var l = consulta.length;
					if(l>2){
						window.location = ("'.$ruta.'"+consulta+"_gdl");
					}else{
						UIkit.notification.closeAll();
						UIkit.notification("<div class=\'bg-danger color-blanco\'>Se requiren al menos 3 caracteres</div>");
					}
				});
			});
		</script>';

		//ESTE SCRIPT HACE EL CAMBIO DE IDIOMA
		
		$scriptGNRL.='
		<script>
			$(".idioma").click(function(){
				let lenguaje = $(this).attr("data-idi");
				let pagina_actual = "'.$_SERVER["REQUEST_URI"].'"
				$.ajax({
				method: "POST",
				url: "includes/acciones.php",
				data: {
					cambioIdioma: 1,
					idioma: lenguaje,
				}
				}).done(function() {
					location.reload();
					});
			});	
		</script>';

		$scriptGNRL.='
		<script>
			$(document).ready(main);

			var contador = 1;
			
			function main () {
				$(".menu_bar").click(function(){
					if (contador == 1) {
						$("nav").animate({
							left: "0"
						});
						contador = 0;
					} else {
						contador = 1;
						$("nav").animate({
							left: "-100%"
						});
					}
				});
			
				// Mostramos y ocultamos submenus
				$(".submenu").click(function(){
					$(this).children(".children").slideToggle();
				});
			}
		
		</script>';




/* %%%%%%%%%%%%%%%%%%%% WHATSAPP PLUGIN               
	$scriptGNRL.=(isset($_SESSION['whatsappHiden']))?'':'
		<script>
			setTimeout(function(){
				$("#whatsapp-plugin").addClass("uk-animation-slide-bottom-small");
				$("#whatsapp-plugin").removeClass("uk-hidden");
			},1000);
			setTimeout(function(){
				$("#whats-body-1").addClass("uk-hidden");
				$("#whats-body-2").removeClass("uk-hidden");
			},6000);
		</script>
			'; */
