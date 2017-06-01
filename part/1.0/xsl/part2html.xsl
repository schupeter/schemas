<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:part="http://schemas.agr.gc.ca/part/1.0.0" xmlns:gls="http://www.opengis.net/gls/0.10.2" xpath-default-namespace="http://www.opengis.net/gls/0.10.2">

<xsl:template match="/">
 <html>
 <body>
<center>
<h2 id="topDocument"><a href="#source"><xsl:value-of select="part:PART/part:Source/part:Framework/gls:FrameworkName" /></a> Reallocation Table</h2>
   
This table describes a mapping to convert polygon attributes from the:<br/>
<a href="#source"><xsl:value-of select="part:PART/part:Source/part:Framework/gls:Title" /></a> spatial framework to the<br/>
<a href="#target"><xsl:value-of select="part:PART/part:Target/part:Framework/gls:Title" /></a> spatial framework.
<br/><br/>

<p/>

<h3 id="source">Source Framework Description</h3>
   <table border="1" cellpadding="3">
    <tr bgcolor="#cccccc"><td align="right"><i>Framework Domain:</i></td><td><xsl:value-of select="part:PART/part:Source/part:Framework/gls:FrameworkDomain" /></td></tr>
    <tr bgcolor="#cccccc"><td align="right"><i>Framework Name:</i></td><td><xsl:value-of select="part:PART/part:Source/part:Framework/gls:FrameworkName" /></td></tr>
    <tr bgcolor="#cccccc"><td align="right"><i>Framework Version:</i></td><td><xsl:value-of select="part:PART/part:Source/part:Framework/gls:FrameworkVersion" /></td></tr>
    <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="part:PART/part:Source/part:Framework/gls:Title" /></td></tr>
    <tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="part:PART/part:Source/part:Framework/gls:Description" /></td></tr>
    <tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="part:PART/part:Source/part:Framework/gls:Organization" /></td></tr>
    <tr><td align="right"><i>Release Date:</i></td><td><xsl:value-of select="part:PART/part:Source/part:Framework/gls:ReleaseDate" /></td></tr>
    <tr><td align="right"><i>Documentation:</i></td><td>
     <xsl:element name="a">
      <xsl:attribute name="href">
        <xsl:value-of select="part:PART/part:Source/part:Framework/gls:Documentation" />
      </xsl:attribute> 
      <xsl:value-of select="part:PART/part:Source/part:Framework/gls:Documentation" />
     </xsl:element></td>
    </tr>
    <tr><td align="right"><i>GeolinkageField:</i></td><td bgcolor="#ffcc33"><xsl:value-of select="part:PART/part:Source/part:Framework/gls:GeolinkageField" /></td></tr>
   </table>
   <hr/>
 
 <p/>

<h3 id="target">Target Framework Description</h3>
   <table border="1" cellpadding="3">
    <tr bgcolor="#cccccc"><td align="right"><i>Framework Domain:</i></td><td><xsl:value-of select="part:PART/part:Target/part:Framework/gls:FrameworkDomain" /></td></tr>
    <tr bgcolor="#cccccc"><td align="right"><i>Framework Name:</i></td><td><xsl:value-of select="part:PART/part:Target/part:Framework/gls:FrameworkName" /></td></tr>
    <tr bgcolor="#cccccc"><td align="right"><i>Framework Version:</i></td><td><xsl:value-of select="part:PART/part:Target/part:Framework/gls:FrameworkVersion" /></td></tr>
    <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="part:PART/part:Target/part:Framework/gls:Title" /></td></tr>
    <tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="part:PART/part:Target/part:Framework/gls:Description" /></td></tr>
    <tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="part:PART/part:Target/part:Framework/gls:Organization" /></td></tr>
    <tr><td align="right"><i>Release Date:</i></td><td><xsl:value-of select="part:PART/part:Target/part:Framework/gls:ReleaseDate" /></td></tr>
    <tr><td align="right"><i>Documentation:</i></td><td>
     <xsl:element name="a">
      <xsl:attribute name="href">
        <xsl:value-of select="part:PART/part:Target/part:Framework/gls:Documentation" />
      </xsl:attribute> 
      <xsl:value-of select="part:PART/part:Target/part:Framework/gls:Documentation" />
     </xsl:element></td>
    </tr>
    <tr><td align="right"><i>GeolinkageField:</i></td><td bgcolor="#9acd32"><xsl:value-of select="part:PART/part:Target/part:Framework/gls:GeolinkageField" /></td></tr>
   </table>
   <hr/>
 
 <p/>
<h2 id="datasets"><ul>Reallocation Table</ul></h2>

	<table border="1">
		<tr>
			<th bgcolor="#ffcc33">Source Key</th>
			<th bgcolor="#9acd32">Target Key</th>
			<th>Portion</th>
		</tr>
		<xsl:for-each select="part:PART/part:Rowset/part:Row">
			<tr>
				<td><xsl:value-of select="part:SourceKey" /></td>
				<td><xsl:value-of select="part:TargetKey" /></td>
				<td><xsl:value-of select="part:Portion" /></td>
			</tr>
		</xsl:for-each>
	</table>
    <p/><hr/><p/>
</center>
</body>
 </html>
</xsl:template>

</xsl:stylesheet>

