<?php


  // Si ya hay productos en el carro
  $carroTotalProds=0;
  if(isset($arreglo)){
    foreach ($arreglo as $key => $value) {
      $carroTotalProds+=$value['Cantidad'];
    }
  }

// FECHA                 
  // FECHA CORTA
    function fechaCorta($fechaSQL){
      $fechaSegundos=strtotime($fechaSQL);
      $fechaY=date('Y',$fechaSegundos);
      $fechaM=date('m',$fechaSegundos);
      $fechaD=date('d',$fechaSegundos);
      $fechaDay=strtolower(date('D',$fechaSegundos));

      return $fechaD.'-'.$fechaM.'-'.$fechaY;
    }
    
    


  function fechaSQL($fechaSQL){
    $fechaSegundos=strtotime($fechaSQL);

    $fechaY=date('Y',$fechaSegundos);
    $fechaM=date('m',$fechaSegundos);
    $fechaD=date('d',$fechaSegundos);
   
    return $fechaY.'/'.$fechaM.'/'.$fechaD;
  }
  // FECHA LARGA
    function fechaDisplay($fechaSQL){
      $fechaSegundos=strtotime($fechaSQL);
      $fechaY=date('Y',$fechaSegundos);
      $fechaM=date('m',$fechaSegundos);
      $fechaD=date('d',$fechaSegundos);
      $fechaDay=strtolower(date('D',$fechaSegundos));

      switch ($fechaM) {
        case 1:
        $mes='enero';
        break;
        
        case 2:
        $mes='febrero';
        break;
        
        case 3:
        $mes='marzo';
        break;
        
        case 4:
        $mes='abril';
        break;
        
        case 5:
        $mes='mayo';
        break;
        
        case 6:
        $mes='junio';
        break;
        
        case 7:
        $mes='julio';
        break;
        
        case 8:
        $mes='agosto';
        break;
        
        case 9:
        $mes='septiembre';
        break;
        
        case 10:
        $mes='octubre';
        break;
        
        case 11:
        $mes='noviembre';
        break;
        
        default:
        $mes='diciembre';
        break;
      }

      switch ($fechaDay) {
        case 'mon':
        $fechaDia='Lunes';
        break;
        case 'tue':
        $fechaDia='Martes';
        break;
        case 'wed':
        $fechaDia='Miércoles';
        break;
        case 'thu':
        $fechaDia='Jueves';
        break;
        case 'fri':
        $fechaDia='Viernes';
        break;
        case 'sat':
        $fechaDia='Sábado';
        break;
        default:
        $fechaDia='Domingo';
        break;
      }

      return $fechaDia.' '.$fechaD.' de '.$mes.' de '.$fechaY;
    }

// ITEM                  
  function item($id){
    global $CONEXION;
    global $caracteres_si_validos;
    global $caracteres_no_validos;
  
    $widget    = '';
    $style     = 'max-width:200px;';  
    $noPic     = 'img/design/camara.jpg';
    $rutaPics  = 'img/contenido/servicios/';
		$firstPic  = "./img/design/camara.jpg";

    $CONSULTA10 = $CONEXION -> query("SELECT * FROM servicios WHERE id = $id");  
		$row_CONSULTA10 = $CONSULTA10 -> fetch_assoc();
		$titulo = $row_CONSULTA10['titulo'];
    $titulo= $row_CONSULTA10['titulo_en'];
    $descripcion = $row_CONSULTA10['descripcion'];
    $descripcion = $row_CONSULTA10['descripcion_en'];
		$id = $row_CONSULTA10['id'];
		$link = $id.'_material'; // aqui declaramos la ruta de especificaciones. Esta ruta lleva el id del producto y concatena un _ y la ruta especificaciones
    // Fotografía
    $CONSULTA4 = $CONEXION -> query("SELECT * FROM serviciospic WHERE producto = $id ORDER BY orden,id LIMIT 1");
		while ($row_CONSULTA4 = $CONSULTA4 -> fetch_assoc()){ 
      $firstPic = $rutaPics.$row_CONSULTA4['imagen'];
      $firstPic = (file_exists($firstPic)) ? $firstPic : $noPic;      
    }

    if(isset($_SESSION['idioma'])){
      $idioma = $_SESSION['idioma'];
    }else{
      $idioma = "es";
    }
    
      switch ($idioma) {
        case 'es':
          $titulo = $row_CONSULTA10['titulo'];
          $descripcion = $row_CONSULTA10['descripcion'];

          break;
        case 'en':
          $titulo =  $row_CONSULTA10['titulo_en'];
          $descripcion = $row_CONSULTA10['descripcion_en'];
          break;
        
        default:
        $titulo =   $row_CONSULTA10['titulo'];
        $descripcion = $row_CONSULTA10['descripcion'];;
          break;
      }

    $widget.='
      <div class="container-card-gen">
            <div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin" uk-grid>
                  <div class="uk-card-media-left uk-cover-container"> 
                      <a href="'.$link.'"><img src="'.$firstPic.'" alt="" style="width: 19em; height: 10em;" uk-cover></a>
                  </div>
                  <div>
                    <div class="uk-card-body uk-padding-remove" style="margin: .5em; 1em">
                      <div><a class="estilo-titulo" href="'.$link.'">'.$titulo.'</a></div>
                      <p class="estilo-subtitulo">'.$descripcion.'</p>
                    </div>
                  </div>
            </div>
      </div>
    ';

    return $widget;
}

	function item_inicio4($id){
		global $CONEXION;
		global $caracteres_si_validos;
		global $caracteres_no_validos;
	
    $widget    = '';
		$style     = 'max-width:200px;';  
		$noPic     = 'img/design/camara.jpg';
		$rutaPics  = 'img/contenido/productos/';
		$firstPic  = "./img/design/camara.jpg";
	
		$CONSULTA3 = $CONEXION -> query("SELECT * FROM productos WHERE id = $id");  
		$row_CONSULTA3 = $CONSULTA3 -> fetch_assoc();
    $fecha = $row_CONSULTA3['fecha'];
    $ciudad = $row_CONSULTA3['ciudad'];
		$id = $row_CONSULTA3['id'];
		$link = $id.'_material3'; // aqui declaramos la ruta de especificaciones. Esta ruta lleva el id del producto y concatena un _ y la ruta especificaciones
		// Fotografía
		  $CONSULTA4 = $CONEXION -> query("SELECT * FROM productospic WHERE producto = $id ORDER BY orden,id LIMIT 1");
		  while ($row_CONSULTA4 = $CONSULTA4 -> fetch_assoc()) {
			$firstPic = $rutaPics.$row_CONSULTA4['imagen'];
			$firstPic = (file_exists($firstPic)) ? $firstPic : $noPic;     
		 }

    if(isset($_SESSION['idioma'])){
      $idioma = $_SESSION['idioma'];
    }else{
      $idioma = "es";
    }

    
      switch ($idioma) {
        case 'es':
          $detalles = "DETALLES";
          $cupo = "CUPO AGOTADO";
          $titulo = $row_CONSULTA3['titulo'];
          break;
        case 'en':
          $detalles = "DETAILS";
          $cupo = "SPACE SOLD OUT";
          $titulo = $row_CONSULTA3['titulo_en'];
          break;
        
        default:
          $detalles = "DETALLES";
          $cupo = "CUPO AGOTADO";
          break;
      }
	
	
		
    
    
    
    $widget.='
			 	<div class="uk-child-width-1-1@m container-carousel-box" uk-grid>
						<div class="uk-padding-remove">
							<div class="uk-card card-general">
                    <div class="uk-text-center">
                      <div class="uk-inline-clip uk-transition-toggle container-carousel-img4" style="width: 100%;" tabindex="0">
                            <a href="'.$link.'"><img src="'.$firstPic.'" alt="" class="carousel-cursos-img" style="object-fit: cover;"></a>
                            <div class="titulo-curso-style uk-position-bottom uk-overlay uk-overlay-default uk-padding-remove">
                                <p class="uk-h4 uk-margin-remove">'.$titulo.'</p>
                            </div>
                        </div>
                    </div>
								<div class="uk-child-width-expand@s uk-text-center container-carousel-letrero" uk-grid>
                    <div class="uk-text-center"  uk-grid>
                        <div class="uk-width-1-2@m container-letrero" style="margin: 0">
                          <div class="fecha">'.$fecha.'</div>
                        </div>
                        <div class="uk-width-1-2@m container-letrerocu" style="background-color: white; padding: 0">
                          <div class="cupo">'.$ciudad.'</div>
                        </div>
                        <div class="uk-width-1-2@m container-letrero" style="margin: 0">
                          <div class="detalles"><a href="'.$link.'">'.$detalles.'</a></div>
                        </div>
                        <div class="uk-width-1-2@m container-letrerocu" style="background-color: #ff6b00;">
                          <div class="cupo">'.$cupo.'</div>
                        </div>
                    </div>
							  </div>
						  </div>
				    </div>
        </div>
		';
	
		return $widget;
  }

  function item_inicio7($id){
		global $CONEXION;
		global $caracteres_si_validos;
		global $caracteres_no_validos;
	
    $widget    = '';
		$style     = 'max-width:200px;';  
		$noPic     = 'img/design/camara.jpg';
		$rutaPics  = 'img/contenido/galerias/';
		$firstPic  = "./img/design/camara.jpg";
	
		$CONSULTA1 = $CONEXION -> query("SELECT * FROM productos WHERE id = $id");  
		$row_CONSULTA1 = $CONSULTA1 -> fetch_assoc();
    $fecha = fechaDisplay($row_CONSULTA1['fecha']);
    $titulo = $row_CONSULTA1['titulo'];
    $descripcion = $row_CONSULTA1['txt'];
    $ciudad = $row_CONSULTA1['ciudad'];
    $detalles = "DETALLES";
    $informes = "INFORMES";
		$link = $id.'_material3'; // aqui declaramos la ruta de especificaciones. Esta ruta lleva el id del producto y concatena un _ y la ruta especificaciones
		// Fotografía
			$firstPic = $rutaPics.$row_CONSULTA1['imagen'];
			$firstPic = (file_exists($firstPic)) ? $firstPic : $noPic;    
      
      if(isset($_SESSION['idioma'])){
        $idioma = $_SESSION['idioma'];
      }else{
        $idioma = "es";
      }
    
      
    
      
		$widget.='
      <div class="uk-card-body uk-padding-remove">
        <a class="a1" href="'.$link.'"> <h3 class="uk-card-title"><b class="titulo-curso" style="font-family: PoppinsBlack; font-size: .9em;">'.$titulo.'</b></h3>
          <p style="font-family: PoppinsBlack; font-size: .9em;">'.$descripcion.'</p>
      </div></a>
      <!-- <div class="botones">
          <a class="a1" href="'.$link.'">'.$detalles.'</a>
      </div>
      -->';
	
		return $widget;
  }


  function item_inicio8($id){
		global $CONEXION;
		global $caracteres_si_validos;
		global $caracteres_no_validos;
	
    $widget    = '';
		$style     = 'max-width:200px;';  
		$noPic     = 'img/design/camara.jpg';
		$rutaPics  = 'img/contenido/productos/';
		$firstPic  = "./img/design/camara.jpg";
	
		$CONSULTA1 = $CONEXION -> query("SELECT * FROM productos WHERE id = $id");  
		$row_CONSULTA1 = $CONSULTA1 -> fetch_assoc();
    $fecha = fechaDisplay($row_CONSULTA1['fecha']);
    $titulo = $row_CONSULTA1['titulo'];
    $descripcion = $row_CONSULTA1['txt'];
    $categoria = $row_CONSULTA1['categoria'];
    $ciudad = $row_CONSULTA1['ciudad'];
    $detalles = "DETALLES";
    $informes = "INFORMES";
		$link = $id.'_material3'; // aqui declaramos la ruta de especificaciones. Esta ruta lleva el id del producto y concatena un _ y la ruta especificaciones
		// Fotografía
      $CONSULTA2 = $CONEXION -> query("SELECT * FROM productospic WHERE producto = $id ORDER BY orden,id LIMIT 1");
      while ($row_CONSULTA2 = $CONSULTA2 -> fetch_assoc()){ 
			$firstPic = $rutaPics.$row_CONSULTA2['imagen'];
			$firstPic = (file_exists($firstPic)) ? $firstPic : $noPic;    
    }

      if(isset($_SESSION['idioma'])){
        $idioma = $_SESSION['idioma'];
      }else{
        $idioma = "es";
      }
      
      
    
      
		$widget.='
    <div class="uk-child-width-1-1@m productos" uk-grid>
      <div class="cont">
          <div class="uk-card uk-card-default">
            <ul class="js-filter uk-child-width-1-1 uk-child-width-1-1@m uk-text-center" uk-grid>
              <li data-color="'.$categoria.'">
                <div class="uk-card-media-top container-img">
                    <a href="'.$link.'"><img src="'.$firstPic.'" alt=""></a>
                </div>
                <div class="uk-card-body contenedor-texto">
                    <h3 class="uk-card-title">'.$titulo.'</h3>
                    <p >'.$descripcion.'</p>
                </div>
              </li>
            </ul>
          </div>
      </div>
    </div>
      ';
	
		return $widget;
  }


  