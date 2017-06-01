<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
 <body>
<center>
<h2 id="topDocument"><a href="#source"><xsl:value-of select="PART/Source/Framework/Title" /></a> Reallocation Table</h2>
   
This table describes a mapping to convert polygon attributes from the:<br/>
<a href="#source"><xsl:value-of select="PART/Source/Framework/Title" /></a> spatial framework to the<br/>
<a href="#target"><xsl:value-of select="PART/Target/Framework/Title" /></a> spatial framework.
<br/><br/>

<p/>

<h3 id="source">Source Framework Description</h3>
   <table border="1" cellpadding="3">
    <tr bgcolor="#cccccc"><td align="right"><i>Framework URI:</i></td><td><xsl:value-of select="PART/Source/Framework/FrameworkURI" /></td></tr>
    <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="PART/Source/Framework/Title" /></td></tr>
    <tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="PART/Source/Framework/Description" /></td></tr>
    <tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="PART/Source/Framework/Organization" /></td></tr>
    <tr><td align="right"><i>Release Date:</i></td><td><xsl:value-of select="PART/Source/Framework/ReleaseDate" /></td></tr>
    <tr><td align="right"><i>Documentation:</i></td><td>
     <xsl:element name="a">
      <xsl:attribute name="href">
        <xsl:value-of select="PART/Source/Framework/Documentation" />
      </xsl:attribute> 
      <xsl:value-of select="PART/Source/Framework/Documentation" />
     </xsl:element></td>
    </tr>
    <tr><td align="right"><i>Framework Key:</i></td><td bgcolor="#ffcc33"><xsl:value-of select="PART/Source/Framework/FrameworkKey" /></td></tr>
   </table>
   <hr/>
 
 <p/>

<h3 id="target">Target Framework Description</h3>
   <table border="1" cellpadding="3">
    <tr bgcolor="#cccccc"><td align="right"><i>Framework URI:</i></td><td><xsl:value-of select="PART/Target/Framework/FrameworkURI" /></td></tr>
    <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="PART/Target/Framework/Title" /></td></tr>
    <tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="PART/Target/Framework/Description" /></td></tr>
    <tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="PART/Target/Framework/Organization" /></td></tr>
    <tr><td align="right"><i>Release Date:</i></td><td><xsl:value-of select="PART/Target/Framework/ReleaseDate" /></td></tr>
    <tr><td align="right"><i>Documentation:</i></td><td>
     <xsl:element name="a">
      <xsl:attribute name="href">
        <xsl:value-of select="PART/Target/Framework/Documentation" />
      </xsl:attribute> 
      <xsl:value-of select="PART/Target/Framework/Documentation" />
     </xsl:element></td>
    </tr>
    <tr><td align="right"><i>Framework Key:</i></td><td bgcolor="#9acd32"><xsl:value-of select="PART/Target/Framework/FrameworkKey" /></td></tr>
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
		<xsl:for-each select="PART/Rowset/Row">
			<tr>
				<td><xsl:value-of select="S" /></td>
				<td><xsl:value-of select="T" /></td>
				<td><xsl:value-of select="P" /></td>
			</tr>
		</xsl:for-each>
	</table>
    <p/><hr/><p/>
</center>
</body>
 </html>
</xsl:template>

</xsl:stylesheet>

