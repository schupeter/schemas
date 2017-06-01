<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gls="http://www.opengeospatial.net/gls" xpath-default-namespace="http://www.opengeospatial.net/gls">
	<xsl:template match="/">
		<html>
			<head>
				<title>Palette for <xsl:value-of select="Palette/Title"/>
				</title>
			</head>
			<body>
				<center>
					<h2>Palette for<br/>
						<a href="#framework">
							<xsl:value-of select="Palette/Title"/>
						</a>
					</h2>
					<p>
						<xsl:value-of select="Palette/Abstract"/>
					</p>
					<table border="1">
						<tr>
							<th></th>
							<th>Id</th>
							<th>Hex Code</th>
							<th>Tip</th>
						</tr>
						<xsl:for-each select="/Palette/ColorSet/Color">
							<tr>
								<xsl:element name="td">
									<xsl:attribute name="align">center</xsl:attribute>
									<xsl:attribute name="width">20px</xsl:attribute>
									<xsl:attribute name="bgcolor">#<xsl:value-of select="@value"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="td">
									<xsl:attribute name="align">center</xsl:attribute>
									<b><xsl:value-of select="@id"/></b>
								</xsl:element>
								<xsl:element name="td">
									<xsl:attribute name="align">center</xsl:attribute>
									<xsl:attribute name="bgcolor">#<xsl:value-of select="@value"/></xsl:attribute>
									<xsl:value-of select="@value"/>
								</xsl:element>
								<xsl:element name="td">
									<xsl:value-of select="@tip"/>
								</xsl:element>
							</tr>
						</xsl:for-each>
					</table>
					<p/>
					<hr/>
					<p/>
				</center>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
