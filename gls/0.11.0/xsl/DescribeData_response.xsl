<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gls="http://www.opengis.net/gls/0.11" xpath-default-namespace="http://www.opengis.net/gls/0.11" xmlns:ows="http://www.opengis.net/ows/1.1" xmlns:xlink="http://www.w3.org/1999/xlink">
	<xsl:template match="/">
		<xsl:variable name="Service">http://10.117.202.232:8000/mapit/serv?</xsl:variable>
		<xsl:variable name="XSLroot">http://10.117.202.232:8000/stylesheets/gls/0.11.0</xsl:variable>
		<!-- Installation instructions:  
			Copy value of gls:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetData']/ows:DCP/ows:HTTP/ows:Get/@xlink:href to Service variable definition above
			Copy web directory location of XSLT files to XSLroot variable definition above-->
		<html>
			<body>
				<center>
				<h2 id="framework">Dataset Descriptions</h2>
				<xsl:for-each select="gls:DataDescriptions/gls:Framework">
					<p/>
					<hr width="10%"/>
					<p/>
					<table border="1" cellpadding="3">
						<tr bgcolor="#6699ff"><td align="right"><i>Spatial Framework:</i></td><th align="center"><h3><xsl:value-of select="gls:Title" /></h3></th></tr>
						<tr bgcolor="#cccccc"><td align="right"><i>Framework Domain:</i></td><td><xsl:value-of select="gls:FrameworkDomain" /></td></tr>
						<tr bgcolor="#cccccc"><td align="right"><i>Framework Name:</i></td><td><xsl:value-of select="gls:FrameworkName" /></td></tr>
						<tr bgcolor="#cccccc"><td align="right"><i>Framework Version:</i></td><td><xsl:value-of select="gls:FrameworkVersion" /></td></tr>
						<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract" /></td></tr>
						<tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="gls:Organization" /></td></tr>
						<tr><td align="right"><i>Release Date:</i></td><td><xsl:value-of select="gls:ReleaseDate" /></td></tr>
						<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
						<tr><td align="right"><i>Framework Key:</i></td><td><xsl:value-of select="gls:FrameworkKey" /></td></tr>
						<tr><td align="right" valign="top"><i>Datasets:</i></td><td>
							<xsl:for-each select="gls:Dataset">
								<table border="1" cellpadding="3" align="center">
									<tr bgcolor="#ffcc33"><td align="right"><i>Attribute Dataset:</i></td><th align="center"><h3><xsl:value-of select="gls:Title" /></h3></th></tr>
									<tr bgcolor="#cccccc"><td align="right"><i>Dataset Domain:</i></td><td><xsl:value-of select="gls:DatasetDomain" /></td></tr>
									<tr bgcolor="#cccccc"><td align="right"><i>Dataset Name:</i></td><td><xsl:value-of select="gls:DatasetName" /></td></tr>
									<tr bgcolor="#cccccc"><td align="right"><i>Dataset Version:</i></td><td><xsl:value-of select="gls:DatasetVersion" /></td></tr>
									<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract" /></td></tr>
									<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
									<tr><td align="right"><i>Authoring Organization:</i></td><td><xsl:value-of select="gls:Organization" /></td></tr>
									<tr><td align="right"><i>Release Date:</i></td><td><xsl:value-of select="gls:ReleaseDate" /></td></tr>
									<tr><td align="right" width="180"><i>Dataset Key:</i></td><td><xsl:value-of select="gls:DatasetKey" /></td></tr>
									<tr><td align="right"><i>Dataset Key Type:</i></td><td><xsl:value-of select="gls:DatasetKey/@type" /></td></tr>
									<tr><td align="right"><i>Dataset Key Length:</i></td><td><xsl:value-of select="gls:DatasetKey/@length" /></td></tr>
									<tr><td align="right"><i>Records per Identifier:</i></td><td><xsl:value-of select="gls:KeyRelationship" /></td></tr>
									<tr><td align="right"><i>Complete linkage:</i></td><td><xsl:value-of select="gls:KeyComplete" /></td></tr>
									<tr><td align="right" valign="top"><i>Attributes:</i></td><td>
   <table border="1" cellpadding="3">
	<xsl:for-each select="gls:Attribute">
		<xsl:choose>
			<xsl:when test="gls:Values/gls:Nominal">
				<tr bgcolor="#9acd32"><td align="right"><i>Attribute:</i></td><th align="center"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="gls:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="gls:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="gls:Values/gls:Nominal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="gls:Values/gls:Nominal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
				<tr><td colspan="2">
				<table width="100%" border="1" cellpadding="3">
					<tr bgcolor="#cccccc">
						<td>Values</td>
						<td>
							<table cellpadding="3">
								<tr><td align="right"><i>Valueset Title:</i></td><td><xsl:value-of select="gls:Title"/></td></tr>
								<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract"/></td></tr>
								<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
							</table>
						</td>
					</tr>
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
				<tr bgcolor="#9acd32"><td align="right"><i>Attribute:</i></td><th align="center"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="gls:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="gls:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="gls:Values/gls:Ordinal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="gls:Values/gls:Ordinal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Ordinal</td></tr>
				<tr><td colspan="2">
				<table width="100%" border="1" cellpadding="3">
					<tr bgcolor="#cccccc">
						<td colspan="2">Values</td>
						<td>
							<table cellpadding="3">
								<tr><td align="right"><i>Valueset Title:</i></td><td><xsl:value-of select="gls:Title"/></td></tr>
								<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract"/></td></tr>
								<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
							</table>
						</td>
					</tr>
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
				<tr bgcolor="#9acd32"><td align="right"><i>Attribute:</i></td><th align="center"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="gls:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="gls:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="gls:Values/gls:Count/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="gls:Values/gls:Count/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Count</td></tr>
			</xsl:when>
			<xsl:when test="gls:Values/gls:Measure">
				<tr bgcolor="#9acd32"><td align="right"><i>Attribute:</i></td><th align="center"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="gls:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="gls:AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title" /></td></tr>
				<tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="gls:Values/gls:Measure/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="gls:Values/gls:Measure/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Measure</td></tr>
			</xsl:when>
		</xsl:choose>
		<tr><td colspan="3" align="center"><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="$Service"/>Service=GLS&amp;Version=<xsl:value-of select="/gls:DataDescriptions/@version" />&amp;Request=GetData&amp;FrameworkDomain=<xsl:value-of select="/gls:DataDescriptions/gls:Framework/gls:FrameworkDomain" />&amp;FrameworkName=<xsl:value-of select="/gls:DataDescriptions/gls:Framework/gls:FrameworkName" />&amp;FrameworkVersion=<xsl:value-of select="/gls:DataDescriptions/gls:Framework/gls:FrameworkVersion" />&amp;DatasetDomain=<xsl:value-of select="../gls:DatasetDomain" />&amp;DatasetName=<xsl:value-of select="../gls:DatasetName" />&amp;DatasetVersion=<xsl:value-of select="../gls:DatasetVersion" />&amp;Attributes=<xsl:value-of select="gls:AttributeName" />&amp;XSL=<xsl:value-of select="$XSLroot"/>/gdas2html.xsl</xsl:attribute>View data</xsl:element></td></tr>
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
