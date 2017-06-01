<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:wps="http://www.opengis.net/wps/1.0.0" xpath-default-namespace="http://www.opengis.net/wps/1.0.0" xmlns:ows="http://www.opengis.net/ows/1.1" xmlns:xlink="http://www.w3.org/1999/xlink">
<xsl:template match="/">
<html> 
 <head>
  <link rel="stylesheet" type="text/css" href="http://lsrs.gis.agr.gc.ca/stylesheets/lsrs/1.0/lsrs.css" />
 </head>
<body>
<center>
<h2><xsl:value-of select="//wps:ProcessDescription/ows:Title" /></h2>
<p><xsl:value-of select="//wps:ProcessDescription/ows:Abstract" /></p>
<br/>
<table>
 <tr><td><h3>Inputs</h3></td><td/></tr>
 <tr><td/><td>
  <table>
   <xsl:for-each select="//wps:ProcessDescription/DataInputs/Input">
   <tr><th>Name:</th><th><xsl:value-of select="ows:Identifier" /></th></tr>
   <tr><td class="subheader">Title:</td><td class="Abbr"><xsl:value-of select="ows:Title" /></td></tr>
   <tr><td class="subheader">Description:</td><td class="Abbr"><xsl:value-of select="ows:Abstract" /></td></tr>
   <tr><td class="subheader">DataType:</td><td class="Abbr"><xsl:value-of select="*/ows:DataType" /></td></tr>
   <tr><td class="subheader">minimum occurance:</td><td class="Abbr"><xsl:value-of select="@minOccurs" /></td></tr>
   <tr><td class="subheader">maximum occurance:</td><td class="Abbr"><xsl:value-of select="@maxOccurs" /></td></tr>
   </xsl:for-each>
  </table>
 </td></tr>
 <tr><td><h3>Outputs</h3></td><td/></tr>

 <tr><td/><td>
  <table>
   <xsl:for-each select="//wps:ProcessDescription/ProcessOutputs/Output">
   <tr><th>Name:</th><th><xsl:value-of select="ows:Identifier" /></th></tr>
   <tr><td class="subheader">Title:</td><td class="Abbr"><xsl:value-of select="ows:Title" /></td></tr>
   <tr><td class="subheader">Description:</td><td class="Abbr"><xsl:value-of select="ows:Abstract" /></td></tr>
   <tr><td class="subheader">MimeType:</td><td class="Abbr"><xsl:value-of select="ComplexData/Default/Format/MimeType" /></td></tr>
   <tr><td class="subheader">Encoding:</td><td class="Abbr"><xsl:value-of select="ComplexData/Default/Format/Encoding" /></td></tr>
   <tr><td class="subheader">Schema:</td><td class="Abbr"><xsl:value-of select="ComplexData/Default/Format/Schema" /></td></tr>
  </xsl:for-each>
 </table>
 </td></tr>
</table>
</center>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
