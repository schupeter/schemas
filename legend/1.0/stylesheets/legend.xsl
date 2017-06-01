<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
 <body>
<center>
<h2><xsl:value-of select="Legend/Title"/></h2>
   
<p><xsl:value-of select="Legend/Abstract"/> </p>

   <h4>Legend</h4>

<table border="1">
	<tr bgcolor="#cccccc">
		<th>Identifier</th>
		<th>Color</th>
		<th>Title</th>
	</tr>
	<xsl:for-each select="/Legend/Classes/Class">
		<tr>
			<td align="center"><xsl:value-of select="Identifier"/></td>
			<xsl:element name="th"><xsl:attribute name="bgcolor">#<xsl:value-of select="@color"/></xsl:attribute></xsl:element>
			<td><xsl:value-of select="Title"/></td>
		</tr>
	</xsl:for-each>
	<xsl:for-each select="/Legend/Classes/Exception">
		<tr>
			<td align="center"><xsl:value-of select="Identifier"/></td>
			<xsl:element name="th"><xsl:attribute name="bgcolor">#<xsl:value-of select="@color"/></xsl:attribute></xsl:element>
			<td><xsl:value-of select="Title"/></td>
		</tr>
	</xsl:for-each>
</table>

</center>
</body>
 </html>
</xsl:template>

</xsl:stylesheet>
