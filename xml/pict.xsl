<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xlink="http://www.w3.org/1999/xlink" 
xmlns="http://www.w3.org/1999/xhtml">

<xsl:output
     method="xml"
     doctype-system="about:legacy-compat"
     omit-xml-declaration = "yes"
     encoding="UTF-8"
indent="yes" />

<xsl:template match="/">
<h1 class="title-artist"><xsl:value-of select="gallery/artist"/></h1>
<div class="container">
<xsl:for-each select="gallery/pictures/picture">
	<div class="one-pict">
		<span class="one-pict-name"><xsl:value-of select="title"/></span><br/>
		<img width="200" src=""><xsl:attribute name="src">https://raw.githubusercontent.com/Marina123456/homework/master/xml/<xsl:value-of select="link"/></xsl:attribute></img><br/>
		<p><xsl:value-of select="descrpiption"/></p><br/>
	</div>
</xsl:for-each>
</div>
<style>
.title-artist {
	text-align: center;
}
.container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
}
.one-pict {

	border-radius: 5px;
	border: solid 1px grey;
	width: 500px;
	
}
.container div {
	margin: 12px;
}
.one-pict-name {
	text-align: center;
	color: grey;
}
</style>
</xsl:template>
</xsl:stylesheet>
