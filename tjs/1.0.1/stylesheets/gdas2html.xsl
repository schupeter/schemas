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
			<th><a href="#dataset"><xsl:value-of select="tjs:Columnset/tjs:FrameworkKey/tjs:Column/@name" /></a></th>
			<xsl:for-each select="tjs:Columnset/tjs:Attributes/tjs:Column">
				<th bgcolor="#9acd32" align="right"><xsl:element name="a"><xsl:attribute name="href">#<xsl:value-of select="@name" /></xsl:attribute><xsl:value-of select="@name" /></xsl:element></th>
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

<xsl:for-each select="tjs:GDAS/tjs:Framework">
<h3 id="framework">Framework Description</h3>
  <table border="1" cellpadding="3">
		<tr bgcolor="#6699ff"><td align="right"><i>Spatial Framework:</i></td><th align="center"><h3><xsl:value-of select="tjs:Title" /></h3></th></tr>
		<tr bgcolor="#cccccc"><td align="right"><i>Framework URI:</i></td><td><xsl:value-of select="tjs:FrameworkURI" /></td></tr>
		<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
		<tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="tjs:Organization" /></td></tr>
		<tr><td align="right"><i>Version:</i></td><td><xsl:value-of select="tjs:Version" /></td></tr>
		<xsl:choose>
		<xsl:when test="tjs:ReferenceDate/@startDate">
		<tr><td align="right"><i>Reference Date:</i></td><td><xsl:value-of select="tjs:ReferenceDate/@startDate" /> to <xsl:value-of select="tjs:ReferenceDate" /></td></tr>
		</xsl:when>
		<xsl:otherwise>
		<tr><td align="right"><i>Reference Date:</i></td><td><xsl:value-of select="tjs:ReferenceDate" /></td></tr>
		</xsl:otherwise>
		</xsl:choose>
		<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
		<tr><td align="right"><i>Framework Key:</i></td><td><xsl:value-of select="tjs:FrameworkKey/tjs:Column/@name" /></td></tr>
   </table>
   <hr/>
   <p/>

	<xsl:for-each select="tjs:Dataset">
   <h3 id="dataset">Dataset Description</h3>
   <table border="1" cellpadding="3">
			<tr bgcolor="#ffcc33"><td align="right"><i>Attribute Dataset:</i></td><th align="center"><h3><xsl:value-of select="tjs:Title" /></h3></th></tr>
			<tr bgcolor="#cccccc"><td align="right"><i>Dataset URI:</i></td><td><xsl:value-of select="tjs:DatasetURI" /></td></tr>
			<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
			<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
			<tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="tjs:Organization" /></td></tr>
			<tr><td align="right"><i>Version:</i></td><td><xsl:value-of select="tjs:Version" /></td></tr>
			<xsl:choose>
			<xsl:when test="tjs:ReferenceDate/@startDate">
			<tr><td align="right"><i>Reference Date:</i></td><td><xsl:value-of select="tjs:ReferenceDate/@startDate" /> to <xsl:value-of select="tjs:ReferenceDate" /></td></tr>
			</xsl:when>
			<xsl:otherwise>
			<tr><td align="right"><i>Reference Date:</i></td><td><xsl:value-of select="tjs:ReferenceDate" /></td></tr>
			</xsl:otherwise>
			</xsl:choose>
			<tr><td align="right" width="180"><i>Framework Key:</i></td><td><xsl:value-of select="tjs:Columnset/tjs:FrameworkKey/tjs:Column/@name" /></td></tr>
			<tr><td align="right"><i>Framework Key Type:</i></td><td><xsl:value-of select="tjs:Columnset/tjs:FrameworkKey/tjs:Column/@type" /></td></tr>
			<tr><td align="right"><i>Framework Key Length:</i></td><td><xsl:value-of select="tjs:Columnset/tjs:FrameworkKey/tjs:Column/@length" /></td></tr>
			<tr><td align="right"><i>Records per Identifier:</i></td><td><xsl:value-of select="tjs:Columnset/tjs:FrameworkKey/@relationship" /></td></tr>
			<tr><td align="right"><i>Complete linkage:</i></td><td><xsl:value-of select="tjs:Columnset/tjs:FrameworkKey/@complete" /></td></tr>
   </table>
   <p/>
   <hr/>

   <h3 id="attributes">Attribute Descriptions</h3>
   The attributes displayed for this data have the following properties:
   <table border="1" cellpadding="3">
	<xsl:for-each select="tjs:Columnset/tjs:Attributes/tjs:Column">
		<xsl:choose>
			<xsl:when test="tjs:Values/tjs:Nominal">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="@name" /></xsl:attribute></xsl:element><xsl:value-of select="@name" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
				<tr><td colspan="2">
				<table width="100%" border="1" cellpadding="3">
					<tr bgcolor="#cccccc">
						<td>Values</td>
						<td>
							<table cellpadding="3">
								<tr><td align="right"><i>Valueset Title:</i></td><td><xsl:value-of select="tjs:Values/tjs:Nominal/tjs:Classes/tjs:Title"/></td></tr>
								<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Values/tjs:Nominal/tjs:Classes/tjs:Abstract"/></td></tr>
								<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Values/tjs:Nominal/tjs:Classes/tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
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
					<xsl:for-each select="tjs:Values/tjs:Nominal/tjs:Exceptions/tjs:Value">
						<tr>
							<td align="center" bgcolor="#99ccff"><xsl:value-of select="tjs:Identifier"/></td>
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
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="@name" /></xsl:attribute></xsl:element><xsl:value-of select="@name" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Ordinal</td></tr>
				<xsl:for-each select="tjs:Values/tjs:Ordinal/tjs:Classes">
					<tr><td colspan="2">
					<table width="100%" border="1" cellpadding="3">
						<tr bgcolor="#cccccc">
							<td colspan="2">Values</td>
							<td>
								<table cellpadding="3">
									<tr><td align="right"><i>Valueset Title:</i></td><td><xsl:value-of select="tjs:Values/tjs:Ordinal/tjs:Classes/tjs:Title"/></td></tr>
									<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Values/tjs:Ordinal/tjs:Classes/tjs:Abstract"/></td></tr>
									<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Values/tjs:Ordinal/tjs:Classes/tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
								</table>
							</td>
						</tr>
						<tr  bgcolor="#cccccc"><td>Rank</td><td>Values</td><td></td></tr>
						<xsl:for-each select="tjs:Values/tjs:Ordinal/tjs:Classes/tjs:Value">
							<tr>
								<td align="center" bgcolor="#9966cc"><xsl:value-of select="tjs:Identifier"/></td>
								<td align="center" bgcolor="#9966cc"><xsl:value-of select="@rank"/></td>
								<td>
									<table cellpadding="3">
										<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title"/></td></tr>
										<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract"/></td></tr>
										<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
									</table>
								</td>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="tjs:Values/tjs:Ordinal/tjs:Exceptions/tjs:Value">
							<tr>
								<td align="center" bgcolor="#99ccff"><xsl:value-of select="tjs:Identifier"/></td>
								<td align="center" bgcolor="#99ccff"><xsl:value-of select="@rank"/></td>
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
				</xsl:for-each>
			</xsl:when>
			<xsl:when test="tjs:Values/tjs:Count">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="@name" /></xsl:attribute></xsl:element><xsl:value-of select="@name" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="@type" /></td></tr>
				<tr><td align="right"><i>Digits:</i></td><td><xsl:value-of select="@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Count</td></tr>
			</xsl:when>
			<xsl:when test="tjs:Values/tjs:Measure">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="@name" /></xsl:attribute></xsl:element><xsl:value-of select="@name" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="@type" /></td></tr>
				<tr><td align="right"><i>Digits:</i></td><td><xsl:value-of select="@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Measure</td></tr>
			</xsl:when>
		</xsl:choose>
		<tr><td colspan="3" align="center">-</td></tr>
    </xsl:for-each>
   </table>

	</xsl:for-each>
	</xsl:for-each>

</center>
</body>
 </html>
</xsl:template>

</xsl:stylesheet>
