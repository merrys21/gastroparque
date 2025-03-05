<?xml version="1.0" encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="legacy-compat" encoding="utf-8"/>
<xsl:template match='/gestionParque'>

<html lang="es">
	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Datos de las atracciones" />
		<title>Datos de las atracciones</title>
	</head>

    <body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="gastrobar.xml">Gastrobar</a>
			<a href="atracciones.xml">Atracciones</a>
			<a href="eventos.xml">Eventos</a>
		</header>

		<main>
			<h1>ATRACCIONES</h1>

			<table>
				<tr>
					<th>ATRACCION</th>
					<th>EDAD MINIMA</th>
					<th>PESO MAXIMO</th>
				</tr>

				<!-- Utilización de for-each para seleccionar las atracciones -->
                <xsl:for-each select="atracciones/atraccion">
					<!-- Para obtener la ruta, se deberá sustituir los espacios en blanco del nombre por barras bajas con la función translate -->
                    <xsl:variable name="nombre_sin_espacios" select="translate(nombre, ' ', '_')" />
                    <tr>
						<!-- Mostrará el nombre, la edad mínima y el peso máximo de todas las atracciones. -->
                        <td><a href="https://es.wikipedia.org/wiki/{$nombre_sin_espacios}" target="_blank"><xsl:value-of select='nombre' /></a></td>
                        <td><xsl:value-of select='restricciones/edadMinima' /></td>
                        <td><xsl:value-of select='restricciones/pesoMaximo' /></td>
				    </tr>
                </xsl:for-each>              
			</table>	
        </main>

		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
    </body>

</html>

</xsl:template>
</xsl:stylesheet>  