<?xml version="1.0" encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match='/reservaeventos'>
    <html lang="es">

	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="teatro.xml">Teatro</a>
			<a href="restaurante.xml">Restaurante</a>
			<a href="festival.xml">Festival</a>
		</header>
		
		<main>
			<xsl:variable name="nombre" select="'El clarete'"/>
			<h1><a href="{restaurante[nombrerestaurante=$nombre]/informacion}" target="blank"><xsl:value-of select='$nombre'/> - <xsl:value-of select='restaurante[nombrerestaurante=$nombre]/ciudad'/></a></h1>
			<xsl:for-each select="restaurante[nombrerestaurante=$nombre]/menu">
			<article class="restaurante">
				<h3><xsl:value-of select='@tipo'/></h3>
				<xsl:for-each select="plato" >
					<p><xsl:value-of select='.'/></p>
				</xsl:for-each>
				<p></p>
			</article>
			</xsl:for-each>
		</main>

		<footer>
			<address>&#169; 2023 desarrollado por Mikel Oreja Bezares</address>
		</footer>
	</body>
	</html>

</xsl:template>
</xsl:stylesheet>