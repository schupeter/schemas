<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gls="http://www.opengis.net/gls/0.12" xpath-default-namespace="http://www.opengis.net/gls/0.12" xmlns:ows="http://www.opengis.net/ows/1.1" xmlns:xlink="http://www.w3.org/1999/xlink">
	<xsl:template match="/">
		<xsl:variable name="Service">/gls/serv?</xsl:variable>
		<xsl:variable name="XSLroot">/stylesheets/gls/0.12</xsl:variable>
		<!-- Installation instructions:  
			Copy value of gls:Capabilities/ows:OperationsMetadata/ows:Operation[@name='DescribeDatasets']/ows:DCP/ows:HTTP/ows:Get/@xlink:href to Service variable definition above
			Copy web directory location of XSLT files to XSLroot variable definition above-->
		<html>
			<body>
				<center>
				<h2 id="framework">Framework Descriptions</h2>
				<xsl:for-each select="gls:FrameworkDescriptions/gls:Framework">
					<p/>
					<hr width="10%"/>
					<p/>
					<table border="1" cellpadding="3">
						<tr bgcolor="#6699ff"><td align="right"><i>Spatial Framework:</i></td><th align="center"><h3><xsl:value-of select="gls:Title" /></h3></th></tr>
						<tr bgcolor="#cccccc"><td align="right"><i>Framework URI:</i></td><td><xsl:value-of select="gls:FrameworkURI" /></td></tr>
						<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract" /></td></tr>
						<tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="gls:Organization" /></td></tr>
						<tr><td align="right"><i>Release Date:</i></td><td><xsl:value-of select="gls:ReleaseDate" /></td></tr>
						<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
						<tr><td align="right"><i>FrameworkKey:</i></td><td><xsl:value-of select="gls:FrameworkKey" /></td></tr>
						<tr><td colspan="2" align="center"><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="$Service"/>Service=GLS&amp;Version=<xsl:value-of select="/gls:FrameworkDescriptions/@version"/>&amp;Request=DescribeDatasets&amp;FrameworkURI=<xsl:value-of select="gls:FrameworkURI" />&amp;XSL=<xsl:value-of select="$XSLroot"/>/DescribeDatasets_response.xsl</xsl:attribute>Datasets</xsl:element></td></tr>
					</table>
				</xsl:for-each>
				</center>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
