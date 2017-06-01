<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:wps="http://www.opengis.net/wps/1.0.0" xpath-default-namespace="http://www.opengis.net/wps/1.0.0" xmlns:ows="http://www.opengis.net/ows/1.1" xmlns:xlink="http://www.w3.org/1999/xlink">
<xsl:template match="/">
<html> 
 <head>
  <link rel="stylesheet" type="text/css" href="/stylesheets/lsrs.css" />
 </head>
<body>
<center>
<h2><xsl:value-of select="//wps:Capabilities/ows:ServiceIdentification/ows:Title" /></h2>
<p><xsl:value-of select="//wps:Capabilities/ows:ServiceIdentification/ows:Abstract" /></p>
<br/>
<p>This web service is compliant with <a href="http://geoprocessing.info/wpsdoc/simple">WPS Simple 1.0</a>.</p>
<table>
	<tr><td><h3>Processes</h3></td><td/></tr>
	<tr><td/><td>
	<table>
		<xsl:for-each select="//wps:Capabilities/wps:ProcessOfferings/wps:Process">
		<tr><th>Name:</th><th><xsl:value-of select="ows:Identifier" /></th></tr>
		<tr><td class="subheader">Identifier:</td><td class="Abbr"><xsl:value-of select="ows:Identifier" /></td></tr>
		<tr><td class="subheader">Title:</td><td class="Abbr"><xsl:value-of select="ows:Title" /></td></tr>
		<tr><td class="subheader">Description:</td><td class="Abbr"><xsl:value-of select="ows:Abstract" /></td></tr>
		<tr><td class="subheader"></td><td class="Abbr"><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="wps:DescribeProcessURL/@xlink:href" /></xsl:attribute>DescribeProcess</xsl:element></td></tr>
		</xsl:for-each>
	</table>
	</td></tr>
</table>
</center>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
