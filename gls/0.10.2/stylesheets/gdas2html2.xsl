<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gls="http://www.opengis.net/gls/0.10.2" xpath-default-namespace="http://www.opengis.net/gls/0.10.2" xmlns:ows="http://www.opengis.net/ows/1.1" xmlns:xlink="http://www.w3.org/1999/xlink">

<xsl:template match="/">
 <html>
 <body>
<center>
<h2>Attributes of <a href="#framework"><xsl:value-of select="gls:GDAS/gls:Framework/gls:Title" /></a></h2>
   
This data applies to the <a href="#framework"><xsl:value-of select="gls:GDAS/gls:Framework/gls:Title" /></a> framework.  
The data comes from the <a href="#dataset"><xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:Title" /></a> dataset.
<p/>

<table border="1">
	<xsl:for-each select="gls:GDAS/gls:Framework/gls:Dataset">
		<tr>
			<th><a href="#dataset"><xsl:value-of select="gls:GeolinkageField" /></a></th>
			<xsl:for-each select="gls:Attribute">
				<th bgcolor="#9acd32" align="right"><xsl:element name="a"><xsl:attribute name="href">#<xsl:value-of select="gls:AttributeName" /></xsl:attribute><xsl:value-of select="gls:AttributeName" /></xsl:element></th>
			</xsl:for-each>
		</tr>
	</xsl:for-each>
	<xsl:for-each select="gls:GDAS/gls:Framework/gls:Dataset/gls:Rowset/gls:Row">
		<tr>
			<td bgcolor="#ffcc33"><xsl:value-of select="gls:I" /></td>
			<xsl:for-each select="gls:V">
				<td align="right"><xsl:value-of select="." /></td>
			</xsl:for-each>
		</tr>
	</xsl:for-each>
</table>
<p/><hr/><p/>

<h3 id="framework">Framework Description</h3>
   <table border="1" cellpadding="3">
    <tr bgcolor="#cccccc"><td align="right"><i>Framework Domain:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:FrameworkDomain" /></td></tr>
    <tr bgcolor="#cccccc"><td align="right"><i>Framework Name:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:FrameworkName" /></td></tr>
    <tr bgcolor="#cccccc"><td align="right"><i>Framework Version:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:FrameworkVersion" /></td></tr>
    <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:Title" /></td></tr>
    <tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:Description" /></td></tr>
    <tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:Organization" /></td></tr>
    <tr><td align="right"><i>Release Date:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:ReleaseDate" /></td></tr>
    <tr><td align="right"><i>Documentation:</i></td><td>
     <xsl:element name="a">
      <xsl:attribute name="href">
        <xsl:value-of select="gls:GDAS/gls:Framework/gls:Documentation" />
      </xsl:attribute> 
      <xsl:value-of select="gls:GDAS/gls:Framework/gls:Documentation" />
     </xsl:element></td>
    </tr>
    <tr><td align="right"><i>GeolinkageField:</i></td><td bgcolor="#ffcc33"><xsl:value-of select="gls:GDAS/gls:Framework/gls:GeolinkageField" /></td></tr>
   </table>
   <hr/>
   <p/>
   
   <h3 id="dataset">Dataset Description</h3>
   <table border="1" cellpadding="3">
    <tr bgcolor="#cccccc"><td align="right"><i>Dataset Domain:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:DatasetDomain" /></td></tr>
    <tr bgcolor="#cccccc"><td align="right"><i>Dataset Name:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:DatasetName" /></td></tr>
    <tr bgcolor="#cccccc"><td align="right"><i>Dataset Version:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:DatasetVersion" /></td></tr>
    <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:Title" /></td></tr>
    <tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:Description" /></td></tr>
    <tr><td align="right"><i>Documentation:</i></td><td>
     <xsl:element name="a">
      <xsl:attribute name="href">
        <xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:Documentation" />
      </xsl:attribute> 
      <xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:Documentation" />
     </xsl:element></td>
    </tr>
    <tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:Organization" /></td></tr>
    <tr><td align="right"><i>Release Date:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:ReleaseDate" /></td></tr>
    <tr><td align="right" width="180"><i>Geolinkage Field:</i></td><td bgcolor="#ffcc33"><xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:GeolinkageField" /></td></tr>
    <tr><td align="right"><i>Records per Identifier:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:GeolinkageRelationship" /></td></tr>
    <tr><td align="right"><i>Complete linkage:</i></td><td><xsl:value-of select="gls:GDAS/gls:Framework/gls:Dataset/gls:GeolinkageComplete" /></td></tr>
   </table>
   <p/>
   <hr/>

   <h3 id="attributes">Attribute Descriptions</h3>
   The attributes displayed for this data have the following properties:
   <table border="1" cellpadding="3">
	<xsl:for-each select="gls:GDAS/gls:Framework/gls:Dataset/gls:Attribute">
		<xsl:choose>
			<xsl:when test="gls:Values/gls:Nominal">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="gls:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="gls:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="gls:Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="gls:Values/gls:Nominal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="gls:Values/gls:Nominal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
				<tr><td colspan="2">
				<table width="100%" border="1" cellpadding="3">
					<tr><td  bgcolor="#cccccc">Values</td><td></td></tr>
					<xsl:for-each select="gls:Values/gls:Nominal/gls:Classes/gls:Value">
						<tr>
							<td align="center" bgcolor="#9966cc"><xsl:value-of select="gls:Identifier"/></td>
							<td>
								<table cellpadding="3">
									<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title"/></td></tr>
									<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract"/></td></tr>
									<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
								</table>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				</td>
				</tr>
			</xsl:when>
			<xsl:when test="gls:Values/gls:Ordinal">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="gls:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="gls:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="gls:Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="gls:Values/gls:Ordinal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="gls:Values/gls:Ordinal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Ordinal</td></tr>
				<tr><td colspan="2">
				<table width="100%" border="1" cellpadding="3">
					<tr  bgcolor="#cccccc"><td>Rank</td><td>Values</td><td></td></tr>
					<xsl:for-each select="gls:Values/gls:Ordinal/gls:Classes/gls:Value">
						<tr>
							<td align="center" bgcolor="#9966cc"><xsl:value-of select="@rank"/></td>
							<td align="center" bgcolor="#9966cc"><xsl:value-of select="gls:Identifier"/></td>
							<td>
								<table cellpadding="3">
									<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title"/></td></tr>
									<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract"/></td></tr>
									<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
								</table>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				</td>
				</tr>
			</xsl:when>
			<xsl:when test="gls:Values/gls:Count">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="gls:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="gls:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="gls:Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="gls:Values/gls:Count/@type" /></td></tr>
				<tr><td align="right"><i>Digits:</i></td><td><xsl:value-of select="gls:Values/gls:Count/@digits" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Count</td></tr>
			</xsl:when>
			<xsl:when test="gls:Values/gls:Measure">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="gls:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="gls:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="gls:Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="gls:Values/gls:Measure/@type" /></td></tr>
				<tr><td align="right"><i>Digits:</i></td><td><xsl:value-of select="gls:Values/gls:Measure/@digits" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Measure</td></tr>
			</xsl:when>
		</xsl:choose>
		<tr><td colspan="3" align="center">-</td></tr>
    </xsl:for-each>
   </table>

</center>
</body>
 </html>
</xsl:template>

</xsl:stylesheet>