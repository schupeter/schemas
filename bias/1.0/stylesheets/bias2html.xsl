<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
	<xsl:template match="/">
		<html>
			<head>
				<title>Bias ranking for <xsl:value-of select="Bias/Title"/>
				</title>
			</head>
			<body>
				<center>
					<h2>Bias ranking for<br/>
						<a href="#framework">
							<xsl:value-of select="Bias/Title"/>
						</a>
					</h2>
					<p>
						<xsl:value-of select="Bias/Abstract"/>
					</p>
					<table border="1">
						<tr>
							<th>Rank</th>
							<th>Id</th>
							<th>Tip</th>
						</tr>
						<xsl:for-each select="/Bias/Parameter/Value">
							<tr>
								<xsl:element name="td">
									<xsl:attribute name="align">center</xsl:attribute>
									<xsl:value-of select="@rank"/>
								</xsl:element>
								<xsl:element name="td">
									<xsl:attribute name="align">center</xsl:attribute>
									<xsl:value-of select="@id"/>
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
