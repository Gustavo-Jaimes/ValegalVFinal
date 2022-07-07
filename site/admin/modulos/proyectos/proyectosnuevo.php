
<?php
echo '
<div class="uk-width-auto@m margin-top-20">
	<ul class="uk-breadcrumb uk-text-capitalize">
		<li><a href="index.php?rand='.rand(1,1000).'&modulo='.$modulo.'&archivo=proyectos">Proyectos</a></li>
		<li><a href="index.php?rand='.rand(1,1000).'&modulo='.$modulo.'&archivo='.$archivo.'" class="color-red">Proyecto nuevo</a></li>
	</ul>
</div>';

?>

<div class="uk-width-1-1">
	<div class="uk-container uk-container-small">
		<form action="index.php" class="uk-width-1-1" method="post">
			<input type="hidden" name="modulo" value="<?=$modulo?>">
			<input type="hidden" name="nuevocatalogo" value="1">
		
			<div class=" uk-margin">
				<label for="titulo">Titulo</label>
				<input type="text" class="uk-input" name="titulo" autofocus>
			</div>
			<div class=" uk-margin">
				<label for="titulo_en">Title</label>
				<input type="text" class="uk-input" name="titulo_en" autofocus>
			</div>
			<div class=" uk-margin">
				<label for="descripcion">Descripcion</label>
				<textarea type="text" class="uk-input"name="descripcion"></textarea>
			</div>
			<div class=" uk-margin">
				<label for="descripcion_en">Description</label>
				<textarea type="text" class="uk-input" name="descripcion_en"></textarea>
			</div>
			<div class=" uk-margin">
				<label for="objetivo">Objetivo</label>
				<textarea class="editor uk-width-1-1" name="objetivo"></textarea>
			</div>
			<div class=" uk-margin">
				<label for="objetivo_en">Objective</label>
				<textarea class="editor uk-width-1-1" name="objetivo_en"></textarea>
			</div>
			<div class=" uk-margin">
				<label for="proceso">Proceso</label>
				<textarea class="editor uk-width-1-1" name="proceso"></textarea>
			</div>
			<div class=" uk-margin">
				<label for="proceso_en">Process</label>
				<textarea class="editor uk-width-1-1" name="proceso_en"></textarea>
			</div>
			<div class=" uk-margin">
				<label for="resultado">Resultado</label>
				<textarea class="editor uk-width-1-1" name="resultado"></textarea>
			</div>
			<div class=" uk-margin">
				<label for="resultado_en">Outcome</label>
				<textarea class="editor uk-width-1-1" name="resultado_en"></textarea>
			</div>
			<div class="uk-width-1-1 uk-text-center uk-margin">
				<button name="send" class="uk-button uk-button-primary uk-button-large">Guardar</button>
			</div>
		</form>
	</div>
</div>
