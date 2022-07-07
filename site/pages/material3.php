<!DOCTYPE html>
<?=$headGNRL?>
<body>

<?=$header?>

<section class="seccion1-material3">
    <div class="uk-text-center" uk-grid>
        <?php
            if(isset($_SESSION['idioma'])){
              $idioma = $_SESSION['idioma'];
            }else{
              $idioma = "es";
            }
            
              switch ($idioma) {
                case 'es':
                  $centro = "CENTRO DE ENTRENAMIENTO";
                  break;
                case 'en':
                  $titulo = "ENTERTAINMENT CENTER";
                  break;
              }
        ?>
        <div class="uk-width-1-1@m uk-margin-remove seccion1-container-letrero-curso">
            <?php
                $CONSULTAProdu = $CONEXION -> query("SELECT * FROM productos WHERE id = $id");
                $row_CONSULTAProdu = $CONSULTAProdu -> fetch_assoc();
                $titulo = $row_CONSULTAProdu['titulo'];
                $titulo = $row_CONSULTAProdu['titulo_en'];

                  if(isset($_SESSION['idioma'])){
                    $idioma = $_SESSION['idioma'];
                  }else{
                    $idioma = "es";
                  }
                  
                    switch ($idioma) {
                      case 'es':
                        $titulo = $row_CONSULTAProdu['titulo'];
                        $objetivo = $row_CONSULTAProdu['txt'];
                        $dirigido = $row_CONSULTAProdu['dirigido'];
                        $plan = $row_CONSULTAProdu['objetivo'];
                        $reserva = $row_CONSULTAProdu['reserva'];
                        $precio = $row_CONSULTAProdu['precio'];
                        $objet = "OBJETIVO";
                        $diri = "DIRIGIDO A";
                        $plaCur = "Descripcion:";
                        $reser = "RESERVA TU LUGAR";
                        $selec = "FECHAS DISPONIBLES";
                        $dispon = "Selecciona Fecha";
                        $conf = "CONFIRMAR FECHAS";
                        $carro = "AGREGAR AL CARRO";
                        break;
                      case 'en':
                        $titulo = $row_CONSULTAProdu['titulo_en'];
                        $objetivo = $row_CONSULTAProdu['objetivo_en'];
                        $dirigido = $row_CONSULTAProdu['dirigido_en'];
                        $plan = $row_CONSULTAProdu['especificaciones_en'];
                        $reserva = $row_CONSULTAProdu['reserva_en'];
                        $precio = $row_CONSULTAProdu['precio'];
                        $objet = "OBJECTIVE";
                        $diri = "DIRECTED TO";
                        $plaCur = "COURSE PLAN";
                        $reser ="RESERVE YOUR PLACE";
                        $selec = "AVAILABLE DATES";
                        $dispon = "Choose Dates";
                        $conf = "CONFIRM DATES";
                        $carro = "ADD TO CART";
                        break;
                    }
            ?>
            <div class="uk-text-center seccion1-subcontainer-letrero-curso" style="background-color: #E5E5E5" uk-grid>
                <div class="uk-width-expand@m uk-flex uk-flex-middle uk-flex-center">
                    <div class="seccion1-container-p">
                      <p style="color:black"> <?=$titulo?></p>
                    </div>
                </div>
           </div>
        </div>
    </div>
</section>
<section class="seccion2-material3">
    <div class="uk-width-1-1@m uk-grid-match cont-material" uk-grid>
        <div class="uk-width-1-5@m uk-visible@m"></div>
        <div class="uk-width-expand@m carousel">
            <div uk-slideshow="animation: push">

                <div class="uk-position-relative uk-visible-toggle uk-light container-corousel-1" tabindex="-1">

                    <ul class="uk-slideshow-items" style="height: 18em; min-height: 18em;">
                        <?php
                            $CONSULTA3 = $CONEXION -> query("SELECT * FROM productospic WHERE producto = $id");
                            while($row_CONSULTA3 = $CONSULTA3 ->fetch_assoc()){
                        ?>
                        <li>
                            <img class="img" src="./img/contenido/productos/<?=$row_CONSULTA3['imagen']?>" alt="" uk-cover>
                        </li>
                        <?php }?>
                    </ul>

                    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
                    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slideshow-item="next"></a>

                </div>

                <ul class="uk-slideshow-nav uk-dotnav uk-flex-center uk-margin"></ul>

            </div>  
        </div>
        <div class="uk-width-1-5@m uk-visible@m"></div>
    </div>                         
    <div class="uk-width-1-1@m uk-grid-match" uk-grid>
      <div class="uk-width-1-5@m uk-visible@m"></div>
        <div class="uk-width-expand@m container-info">
            <div class="uk-card uk-card-default uk-card-body seccion2-material3-proceso">
                <h3 class="titulo"><?=$plaCur?></h3>
                <p><?=$plan?></p>
                <div class="uk-flex uk-flex-center@m uk-flex-right@l">
                  <?php
                    $pdf_descarga = $CONEXION -> query("SELECT * FROM productos WHERE id = $id");
                    $consulta_pdf = $pdf_descarga ->fetch_assoc();
                    $pdf = $consulta_pdf['pdf'];
                  ?>
                    <!-- <div title="Descargar PDF">
                       <a href="./img/contenido/productos/<?=$pdf?>" download=""><i style="color: red; font-size: 4em; cursor: pointer" class="far fa-file-pdf"></i></a>
                    </div> -->
                </div>
            </div>
        </div>
        <div class="uk-width-1-5@m uk-visible@m"></div>
    </div>
    
</section>

<?=$footer?>

<script>
  

  $('#seleccionartalla').click(function() {
    
    $('.item').removeClass('colorseleccionado');
    $('.item-'+talla+'-0').addClass('colorseleccionado');
    var id = $('.item-'+talla+'-0').attr('data-id');
    var inventario = $('.item-'+talla+'-0').attr('data-inventario');
    dameItem(id,inventario);

  });

  $('.item').click(function(){
    var id = $(this).attr('data-id');
    var inventario = $(this).attr('data-inventario');
    $('.buybutton').removeClass( "botonoff-carrito-personal" ).addClass('uk-button-personal');
    dameItem(id,inventario);
  });

  function dameItem(id,inventario){
    $('.buybutton').attr('data-id', id);
    $('.cantidad').attr('max', inventario);
    $('.item').removeClass('colorseleccionado');
    $('#'+id).addClass('colorseleccionado');
    $.ajax({
      method: "POST",
      url: "includes/acciones.php",
      data: {
        tallaycolor: 1,
        id: id,
        inventario: inventario
      }
    })
    .done(function( response ) {
      console.log(response);
      datos = JSON.parse(response);
      $('#productoselectedtxt').html(datos.xtras);
    });
  }
  
  // Agregar al carro
  $(".buybutton").click(function(){
    var id=$(this).attr("data-id");
    var cantidad=$(".cantidad").val();
    var l=id.length;
    //console.log( id + ' - ' + cantidad );
    if (l>0) {
      $.ajax({
        method: "POST",
        url: "addtocart",
        data: { 
          id: id,
          cantidad: cantidad,
          addtocart: 1
        }
      })
      .done(function( response ) {
        console.log( response );
        datos = JSON.parse(response);
        UIkit.notification.closeAll();
        UIkit.notification(datos.msj);
        $(".cartcount").html(datos.count);
        $("#cotizacion-fixed").removeClass("uk-hidden");
      });
    }
  });


  $(".cantidad").keyup(function() {
    var inventario = $(this).attr("data-inventario");
    var cantidad = $(this).val();
    inventario=1*inventario;
    cantidad=1*cantidad;
    if(inventario<=cantidad){
      $(this).val(inventario);
    }
    console.log(inventario+" - "+cantidad);
  })
  $(".cantidad").focusout(function() {
    var inventario = $(this).attr("data-inventario");
    var cantidad = $(this).val();
    inventario=1*inventario;
    cantidad=1*cantidad;
    if(inventario<=cantidad){
      //console.log(inventario*2+" - "+cantidad);
      $(this).val(inventario);
    }
  })



  $("#seleccionartalla").change(function(){
    var valor = $(this).val();
    UIkit.switcher("#colores").show(valor);
  });

</script>

<?=$scriptGNRL?>

</body>
</html>