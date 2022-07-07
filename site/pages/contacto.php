<!DOCTYPE html>
<?=$headGNRL?>
<body>
  
<?=$header?>

<div class="uk-text-center somos" uk-grid>
    <div class="uk-width-1-1@m" style="height: 45em;">
        <div class="imageDiv">
            <img class="bannersomos" src="./img/design/banner3.jpg" alt="">
        </div>
        <div class="imageDiv bottomDivCarousel">
            <div class="uk-text-center" uk-grid>
                <div class="uk-width-auto@m"></div>
                <div class="uk-width-expand@m">
                    <div class="equipo">
                        <h2 class="uk-flex uk-flex-left">Nuestro equipo</h2>
                        <hr style="">
                    </div>
                    <div class="uk-position-relative uk-visible-toggle uk-light container-carousel" tabindex="-1" uk-slider>

                        <ul class="uk-slider-items uk-child-width-1-1 uk-child-width-1-3@m uk-grid">
                            <li class="uk-flex uk-flex-center uk-flex-middle carousel">
                                <div class="uk-panel">
                                    <img src="./img/design/foto1.jpg" width="400" height="600" alt="">
                                </div>
                            </li>
                            <li class="uk-flex uk-flex-center uk-flex-middle carousel">
                                <div class="uk-panel">
                                    <img src="./img/design/foto6.jpg" width="400" height="600" alt="">
                                </div>
                            </li>
                            <li class="uk-flex uk-flex-center uk-flex-middle carousel">
                                <div class="uk-panel">
                                    <img src="./img/design/foto5.jpg" width="400" height="600" alt="">
                                </div>
                            </li>
                            <li class="uk-flex uk-flex-center uk-flex-middle carousel">
                                <div class="uk-panel">
                                    <img src="./img/design/foto3.jpg" width="400" height="600" alt="">
                                </div>
                            </li>
                            <li class="uk-flex uk-flex-center uk-flex-middle carousel">
                                <div class="uk-panel">
                                    <img src="./img/design/foto4.jpg" width="400" height="600" alt="">
                                </div>
                            </li>
                            <li class="uk-flex uk-flex-center uk-flex-middle carousel">
                                <div class="uk-panel">
                                    <img src="./img/design/foto2.jpg" width="400" height="600" alt="">
                                </div>
                            </li>
                        </ul>

                        <a class="uk-position-center-center uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
                        <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>

                    </div>
                </div>
                <div class="uk-width-auto@m"></div>
            </div>
        </div>
    </div>
</div>

<div class="uk-text-center uk-margin-remove acerca" uk-grid>
    <div class="uk-width-1-5@m"></div>
    <div class="uk-width-expand@m container-valegal">
        <div class="acercaDe">
            <h1 class="uk-margin-remove">Acerca de</h1>
            <hr>
        </div>
        <div class="uk-card uk-card-body logo">
            <img src="./img/design/logo.png" alt="">

            <p class="uk-text-justify texto">VALEGAL, S.C., somos una firma de abogados especializados en materia laboral con una trayectoria de más de 20
                años de experiencia, en la que hemos colaborado con diversos sectores empresariales, proporcionando asesoría para
                la implementación de estrategias que permitan identificar, prevenir y resolver contingencias legales relacionadas con
                el manejo de su talento humano.</p>

            <div class="mision" >
                <h1 class="uk-flex uk-flex-center">Misión</h1>
                <hr>
            </div>
            
            <p class="uk-text-justify texto">Ser un aliado de nuestros clientes, generando vínculos a largo plazo, proporcionándoles soluciones eficientes dentro del
                marco legal, basado en la experiencia profesional de los especialistas que integramos esta firma.</p>
            
            <div class="mision" >
                <h1 class="uk-flex uk-flex-center">Visión</h1>
                <hr>
            </div>
            <p class="uk-text-justify texto">Mantener la confianza en nuestros clientes, basada en el resultado de nuestros servicios, fomentando una cultura
                previsora y conciliadora en el manejo de sus relaciones laborales.</p>

            <div class="mision" >
                <h1 class="uk-flex uk-flex-center">Valores</h1>
                <hr>
            </div>
            <div class="uk-text-center valores"uk-grid>
                <div class="uk-width-1-5@m uno"></div>
                <div class="uk-width-1-3@m tres">
                    <p class="uk-margin-remove uk-text-justify">Servicio</p>
                    <p class="uk-margin-remove uk-text-justify">Honestidad</p>
                    <p class="uk-margin-remove uk-text-justify">Imparcialidad</p>
                    <p class="uk-margin-remove uk-text-justify">Calidad</p>
                    <p class="uk-margin-remove uk-text-justify">Trabajo en equipo</p>
                    <p class="uk-margin-remove uk-text-justify">Comunicación</p>
                </div>
                
                <div class="uk-width-1-3@m cinco">
                    <p class="uk-margin-remove uk-text-justify">Ética</p>
                    <p class="uk-margin-remove uk-text-justify">Compromiso</p>
                    <p class="uk-margin-remove uk-text-justify">Confidencialidad</p>
                    <p class="uk-margin-remove uk-text-justify">Responsabilidad</p>
                    <p class="uk-margin-remove uk-text-justify">Integridad</p>
                    <p class="uk-margin-remove uk-text-justify">Profesionalismo</p>
                </div>
                <div class="uk-width-auto@m"></div>
            </div>
        </div>
    </div>
    <div class="uk-width-1-5@m"></div>
</div>



<?=$footer?>

<?=$scriptGNRL?>

</body>
</html>