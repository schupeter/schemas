<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tjs="http://www.opengis.net/tjs/1.0" xpath-default-namespace="http://www.opengis.net/tjs/1.0" xmlns:ows="http://www.opengis.net/ows/1.1" xmlns:xlink="http://www.w3.org/1999/xlink">

<xsl:template match="/">
 <html>
 <body>
<center>
<h2>Attributes of <a href="#framework"><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Title" /></a></h2>
   
This data applies to the <a href="#framework"><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Title" /></a> framework.  
The data comes from the <a href="#dataset"><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:Title" /></a> dataset.
<p/>

<table border="1">
	<xsl:for-each select="tjs:GDAS/tjs:Framework/tjs:Dataset">
		<tr>
			<th><a href="#dataset"><xsl:value-of select="tjs:DatasetKey" /></a></th>
			<xsl:for-each select="tjs:Attribute">
				<xsl:if test="tjs:AttributeName != ../tjs:DatasetKey">
				<th bgcolor="#9acd32" align="right"><xsl:element name="a"><xsl:attribute name="href">#<xsl:value-of select="tjs:AttributeName" /></xsl:attribute><xsl:value-of select="tjs:AttributeName" /></xsl:element></th>
				</xsl:if>
			</xsl:for-each>
		</tr>
	</xsl:for-each>
	<xsl:for-each select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:Rowset/tjs:Row">
		<tr>
			<td bgcolor="#ffcc33"><xsl:value-of select="tjs:K" /></td>
			<xsl:for-each select="tjs:V">
				<td align="right"><xsl:value-of select="." /></td>
			</xsl:for-each>
		</tr>
	</xsl:for-each>
</table>
<p/><hr/><p/>

<h3 id="framework">Framework Description</h3>
   <table border="1" cellpadding="3">
    <tr bgcolor="#cccccc"><td align="right"><i>Framework Domain:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:FrameworkDomain" /></td></tr>
    <tr bgcolor="#cccccc"><td align="right"><i>Framework Name:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:FrameworkName" /></td></tr>
    <tr bgcolor="#cccccc"><td align="right"><i>Framework Version:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:FrameworkVersion" /></td></tr>
    <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Title" /></td></tr>
    <tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Abstract" /></td></tr>
    <tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Organization" /></td></tr>
		<xsl:choose>
		<xsl:when test="tjs:ReferenceDate/@startDate">
		<tr><td align="right"><i>Reference Date:</i></td><td><xsl:value-of select="tjs:ReferenceDate/@startDate" /> to <xsl:value-of select="tjs:ReferenceDate" /></td></tr>
		</xsl:when>
		<xsl:otherwise>
		<tr><td align="right"><i>Reference Date:</i></td><td><xsl:value-of select="tjs:ReferenceDate" /></td></tr>
		</xsl:otherwise>
		</xsl:choose>
    <tr><td align="right"><i>Documentation:</i></td><td>
     <xsl:element name="a">
      <xsl:attribute name="href">
        <xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Documentation" />
      </xsl:attribute> 
      <xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Documentation" />
     </xsl:element></td>
    </tr>
    <tr><td align="right"><i>Framework Key:</i></td><td bgcolor="#ffcc33"><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:FrameworkKey" /></td></tr>
   </table>
   <hr/>
   <p/>
   
   <h3 id="dataset">Dataset Description</h3>
   <table border="1" cellpadding="3">
    <tr bgcolor="#cccccc"><td align="right"><i>Dataset Domain:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:DatasetDomain" /></td></tr>
    <tr bgcolor="#cccccc"><td align="right"><i>Dataset Name:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:DatasetName" /></td></tr>
    <tr bgcolor="#cccccc"><td align="right"><i>Dataset Version:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:DatasetVersion" /></td></tr>
    <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:Title" /></td></tr>
    <tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:Abstract" /></td></tr>
    <tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:Documentation" /></xsl:attribute> <xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:Documentation" /></xsl:element></td></tr>
    <tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:Organization" /></td></tr>
		<xsl:choose>
		<xsl:when test="tjs:ReferenceDate/@startDate">
		<tr><td align="right"><i>Reference Date:</i></td><td><xsl:value-of select="tjs:ReferenceDate/@startDate" /> to <xsl:value-of select="tjs:ReferenceDate" /></td></tr>
		</xsl:when>
		<xsl:otherwise>
		<tr><td align="right"><i>Reference Date:</i></td><td><xsl:value-of select="tjs:ReferenceDate" /></td></tr>
		</xsl:otherwise>
		</xsl:choose>
    <tr><td align="right" width="180"><i>DatasetKey:</i></td><td bgcolor="#ffcc33"><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:DatasetKey" /></td></tr>
    <tr><td align="right"><i>Dataset Key Type:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:DatasetKey/@type" /></td></tr>
    <tr><td align="right"><i>Dataset Key Length:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:DatasetKey/@length" /></td></tr>
    <tr><td align="right"><i>Records per Identifier:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:KeyRelationship" /></td></tr>
    <tr><td align="right"><i>Complete linkage:</i></td><td><xsl:value-of select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:KeyComplete" /></td></tr>
   </table>
   <p/>
   <hr/>

   <h3 id="attributes">Attribute Descriptions</h3>
   The attributes displayed for this data have the following properties:
   <table border="1" cellpadding="3">
	<xsl:for-each select="tjs:GDAS/tjs:Framework/tjs:Dataset/tjs:Attribute">
		<xsl:choose>
			<xsl:when test="tjs:Values/tjs:Nominal">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="tjs:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="tjs:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="tjs:Values/tjs:Nominal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="tjs:Values/tjs:Nominal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
				<tr><td colspan="2">
				<table width="100%" border="1" cellpadding="3">
					<tr bgcolor="#cccccc">
						<td>Values</td>
						<td>
							<table cellpadding="3">
								<tr><td align="right"><i>Valueset Title:</i></td><td><xsl:value-of select="tjs:Title"/></td></tr>
								<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract"/></td></tr>
								<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
							</table>
						</td>
					</tr>
					<xsl:for-each select="tjs:Values/tjs:Nominal/tjs:Classes/tjs:Value">
						<tr>
							<td align="center" bgcolor="#9966cc"><xsl:value-of select="tjs:Identifier"/></td>
							<td>
								<table cellpadding="3">
									<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title"/></td></tr>
									<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract"/></td></tr>
									<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
								</table>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				</td>
				</tr>
			</xsl:when>
			<xsl:when test="tjs:Values/tjs:Ordinal">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="tjs:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="tjs:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="tjs:Values/tjs:Ordinal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="tjs:Values/tjs:Ordinal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Ordinal</td></tr>
				<tr><td colspan="2">
				<table width="100%" border="1" cellpadding="3">
					<tr bgcolor="#cccccc">
						<td colspan="2">Values</td>
						<td>
							<table cellpadding="3">
								<tr><td align="right"><i>Valueset Title:</i></td><td><xsl:value-of select="tjs:Title"/></td></tr>
								<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract"/></td></tr>
								<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
							</table>
						</td>
					</tr>
					<tr  bgcolor="#cccccc"><td>Rank</td><td>Values</td><td></td></tr>
					<xsl:for-each select="tjs:Values/tjs:Ordinal/tjs:Classes/tjs:Value">
						<tr>
							<td align="center" bgcolor="#9966cc"><xsl:value-of select="@rank"/></td>
							<td align="center" bgcolor="#9966cc"><xsl:value-of select="tjs:Identifier"/></td>
							<td>
								<table cellpadding="3">
									<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title"/></td></tr>
									<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract"/></td></tr>
									<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
								</table>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				</td>
				</tr>
			</xsl:when>
			<xsl:when test="tjs:Values/tjs:Count">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="tjs:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="tjs:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="tjs:Values/tjs:Count/@type" /></td></tr>
				<tr><td align="right"><i>Digits:</i></td><td><xsl:value-of select="tjs:Values/tjs:Count/@digits" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Count</td></tr>
			</xsl:when>
			<xsl:when test="tjs:Values/tjs:Measure">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="tjs:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="tjs:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="tjs:Values/tjs:Measure/@type" /></td></tr>
				<tr><td align="right"><i>Digits:</i></td><td><xsl:value-of select="tjs:Values/tjs:Measure/@digits" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
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
