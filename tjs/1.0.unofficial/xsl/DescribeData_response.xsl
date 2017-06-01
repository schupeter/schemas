<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tjs="http://www.opengis.net/tjs/1.0" xpath-default-namespace="http://www.opengis.net/tjs/1.0" xmlns:ows="http://www.opengis.net/ows/1.1" xmlns:xlink="http://www.w3.org/1999/xlink">
	<xsl:template match="/">
		<xsl:variable name="Service">/tjs/serv?</xsl:variable>
		<xsl:variable name="XSLroot">/stylesheets/tjs/1.0</xsl:variable>
		<!-- Installation instructions:  
			Copy value of tjs:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetData']/ows:DCP/ows:HTTP/ows:Get/@xlink:href to Service variable definition above
			Copy web directory location of XSLT files to XSLroot variable definition above-->
		<html>
			<body>
				<center>
				<h2 id="framework">Dataset Descriptions</h2>
				<xsl:for-each select="tjs:DataDescriptions/tjs:Framework">
					<p/>
					<hr width="10%"/>
					<p/>
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
						<tr><td align="right"><i>Framework Key:</i></td><td><xsl:value-of select="tjs:FrameworkKey" /></td></tr>
						<tr><td align="right" valign="top"><i>Datasets:</i></td><td>
							<xsl:for-each select="tjs:Dataset">
								<table border="1" cellpadding="3" align="center">
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
									<tr><td align="right" width="180"><i>Dataset Key:</i></td><td><xsl:value-of select="tjs:DatasetKey" /></td></tr>
									<tr><td align="right"><i>Dataset Key Type:</i></td><td><xsl:value-of select="tjs:DatasetKey/@type" /></td></tr>
									<tr><td align="right"><i>Dataset Key Length:</i></td><td><xsl:value-of select="tjs:DatasetKey/@length" /></td></tr>
									<tr><td align="right"><i>Records per Identifier:</i></td><td><xsl:value-of select="tjs:KeyRelationship" /></td></tr>
									<tr><td align="right"><i>Complete linkage:</i></td><td><xsl:value-of select="tjs:KeyComplete" /></td></tr>
									<tr><td align="right" valign="top"><i>Attributes:</i></td><td>
   <table border="1" cellpadding="3">
	<xsl:for-each select="tjs:Attribute">
		<xsl:choose>
			<xsl:when test="tjs:Values/tjs:Nominal">
				<tr bgcolor="#9acd32"><td align="right"><i>Attribute:</i></td><th align="center"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="tjs:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="tjs:AttributeName" /></th></tr>
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
								<tr><td align="right"><i>Valueset Title:</i></td><td><xsl:value-of select="tjs:Values/tjs:Nominal/tjs:Classes/tjs:Title"/></td></tr>
								<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Values/tjs:Nominal/tjs:Classes/tjs:Abstract"/></td></tr>
								<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Values/tjs:Nominal/tjs:Classes/tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Values/tjs:Nominal/tjs:Classes/tjs:Documentation" /></xsl:element></td></tr>
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
				<tr bgcolor="#9acd32"><td align="right"><i>Attribute:</i></td><th align="center"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="tjs:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="tjs:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="tjs:Values/tjs:Ordinal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="tjs:Values/tjs:Ordinal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Ordinal</td></tr>
				<tr><td colspan="2">
				<table width="100%" border="1" cellpadding="3">
					<tr bgcolor="#cccccc">
						<td colspan="2" align="center">Values</td>
						<td>
							<table cellpadding="3">
								<tr><td align="right"><i>Valueset Title:</i></td><td><xsl:value-of select="tjs:Values/tjs:Ordinal/tjs:Classes/tjs:Title"/></td></tr>
								<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Values/tjs:Ordinal/tjs:Classes/tjs:Abstract"/></td></tr>
								<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Values/tjs:Ordinal/tjs:Classes/tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Values/tjs:Ordinal/tjs:Classes/tjs:Documentation" /></xsl:element></td></tr>
							</table>
						</td>
					</tr>
					<tr  bgcolor="#cccccc"><td>Value</td><td>Rank</td><td></td></tr>
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
			</xsl:when>
			<xsl:when test="tjs:Values/tjs:Count">
				<tr bgcolor="#9acd32"><td align="right"><i>Attribute:</i></td><th align="center"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="tjs:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="tjs:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="tjs:Values/tjs:Count/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="tjs:Values/tjs:Count/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Count</td></tr>
			</xsl:when>
			<xsl:when test="tjs:Values/tjs:Measure">
				<tr bgcolor="#9acd32"><td align="right"><i>Attribute:</i></td><th align="center"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="tjs:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="tjs:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="tjs:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="tjs:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="tjs:Values/tjs:Measure/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="tjs:Values/tjs:Measure/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="tjs:Documentation" /></xsl:attribute><xsl:value-of select="tjs:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Measure</td></tr>
			</xsl:when>
		</xsl:choose>
		<tr><td colspan="3" align="center"><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="$Service"/>Service=TJS&amp;Version=<xsl:value-of select="/tjs:DataDescriptions/@version" />&amp;Request=GetData&amp;FrameworkURI=<xsl:value-of select="/tjs:DataDescriptions/tjs:Framework/tjs:FrameworkURI" />&amp;DatasetURI=<xsl:value-of select="/tjs:DataDescriptions/tjs:Framework/tjs:Dataset/tjs:DatasetURI" />&amp;Attributes=<xsl:value-of select="tjs:AttributeName" />&amp;XSL=<xsl:value-of select="$XSLroot"/>/gdas2html.xsl</xsl:attribute>View data</xsl:element></td></tr>
    	</xsl:for-each>
   </table>
									</td></tr>
								</table>
							</xsl:for-each>
						</td></tr>
					</table>
				</xsl:for-each>
				</center>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
