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
			<img src="../img/logotipo.png" alt= "Reservas" />
			<a href="teatro.xml">Teatro</a>
			<a href="restaurante.xml">Restaurante</a>
			<a href="festival.xml">Festival</a>
		</header>
		
		<main class="principal">
			<section class="teatro">
				<h1>PROXIMAS OBRAS DE TEATRO</h1>
                <xsl:for-each select="teatro">
                <xsl:sort select="fechahora/@dia" order="descending" />
                <xsl:variable name="titulo" select="obra"/>
				<xsl:variable name="fecha" select="fechahora/@dia"/>
				<ul>
				<xsl:choose>
					<xsl:when test="precio&lt;20">
						<li><xsl:value-of select='$fecha'/>: <xsl:value-of select='$titulo'/></li>
						
					</xsl:when>
					<xsl:otherwise>
						<li><u><xsl:value-of select='$fecha'/>: <xsl:value-of select='$titulo'/></u></li>
					</xsl:otherwise>
				</xsl:choose>
                
				</ul>
				</xsl:for-each>
			</section>
		</main>

		<footer>
			<address>&#169; 2023 desarrollado por Mikel Oreja Bezares</address>
		</footer>

	</body>
    </html>

</xsl:template>
</xsl:stylesheet>