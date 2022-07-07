<!DOCTYPE html>
<?=$headGNRL?>
<body>

<?=$header?>


  <!-- Seccion de servicios productos -->
<section  class="servicios">
    <h1 class="uk-flex uk-flex-center uk-margin-remove">ARTICULOS RECIENTES</h1>
    <p class="uk-flex uk-flex-center uk-margin-remove uk-text-justify texto">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt veritatis aut perspiciatis veniam, unde vero excepturi temporibus rerum, dicta ea corrupti ipsa voluptas cum dolorum, magni quia ipsum blanditiis voluptatibus!. Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis alias cumque recusandae, corporis, odio quisquam aut similique nihil, debitis quod sapiente distinctio quae nostrum! Ipsum facilis iure magnam doloremque repellat. Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui quidem.</p>
    <div class="uk-text-center" uk-grid>
        <div class="uk-width-1-5@m  uk-margin-remove@s uk-padding-remove@s uk-flex uk-flex-middle uk-flex-center categorias uk-width-auto@m uk-padding"></div>
        <div class="uk-width-expand@m contenido">

            <div uk-filter="target: .js-filter">
                <ul class="uk-subnav uk-subnav-pill">
                    <li class="uk-active" uk-filter-control><a href="#">TODOS</a></li>

                    <li uk-filter-control="[data-color='58']"><a href="#">ASESORIA LABORAL</a></li>
                    <li uk-filter-control="[data-color='60']"><a href="#">LITIGIO LABORAL</a></li>
                    <li uk-filter-control="[data-color='black']"><a href="#">Black</a></li>
                </ul>
            

            <div class="uk-text-center" uk-grid>
            <?php 
              
                $inicio  = ($pag == 0) ? $pag: $pag * $prodPag ;

                $CONSULTA13 = $CONEXION -> query("SELECT * FROM productos LIMIT $inicio , $prodPag");  
                while($row_CONSULTA13 = $CONSULTA13 -> fetch_assoc()){
            ?>
                <div class="uk-width-1-3@m uk-padding-remove container" style="margin-top: 1em">
                     <?=item_inicio8($row_CONSULTA13['id'])?>
                </div>
                <?php } ?> 
                </div>
            </div>
        </div>
        <div class="uk-width-auto@m uk-padding"></div>
    </div>
    <div class="uk-text-center uk-margin-remove" uk-grid>
            <div class="uk-width-1-5@m"></div>
            <div class="uk-width-expand@m uk-flex uk-flex-center cartas">
                <?php
                if ($pag == 0) {
                    $firts= '<i class="fas fa-caret-square-left" style="font-size:40px; margin: 0em .4em;color: gray"></i>';
                }else{
                    $firts = '
                    <a type="button" href="'.($pag-1).'_servicios"><i class="fas fa-caret-square-left" style="font-size:40px; margin: 0em .4em;color: black"></i></a>
                    ';
                }
                
                ?>
                        <?=$firts?>
                        <?php
                            $consulta_pag = $CONEXION->query("SELECT * FROM productos");
                        
                            $numItems = $consulta_pag->num_rows;

                                $pagTotal=intval($numItems/$prodPag);
                                $resto=$numItems % $prodPag;
                                if (($resto) == 0){
                                    $pagTotal=($numItems/$prodPag)-1;   
                                }

                                for ($i=0; $i <= $pagTotal; $i++) { 
                                $clase='';
                                if ($pag==$i) {
                                    $clase='uk-active';
                                }
                                $link=$i.'_servicios';
                                
                                echo '<a href="'.$link.'" type="button" class="uk-button botonSig">'.($i+1).'</a>';
                                }
                        ?>
                        <?php
                            if ($pag == $pagTotal ) {
                                $firts= '<i class="fas fa-caret-square-right" style="font-size: 40px; margin: 0em .2em;color: gray"></i>';
                            }else{
                                $firts = '
                                <a type="button" href="'.($pag+1).'_servicios"><i class="fas fa-caret-square-right" style="font-size: 40px; margin: 0em .2em;color: black"></i></a>
                                ';
                            }
                        ?>
                    <?=$firts?>
            </div>
            <div class="uk-width-1-3@m">
                
            </div>
    </div>
</section>


<?=$footer?>

</html>