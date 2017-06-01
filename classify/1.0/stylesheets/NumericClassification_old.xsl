<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
 <body>
<center>
<h2><xsl:value-of select="NumericClassification/Title"/></h2>
   
<p><xsl:value-of select="NumericClassification/Abstract"/> </p>

   <h4>attribute to be classified</h4>
   <table border="1" cellpadding="3">
	<xsl:for-each select="NumericClassification/AttributeToRank">
		<xsl:choose>
			<xsl:when test="Nominal">
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="Nominal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Nominal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
			</xsl:when>
			<xsl:when test="Ordinal">
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="Ordinal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Ordinal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
			</xsl:when>
			<xsl:when test="Count">
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="Count/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Count/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Count</td></tr>
			</xsl:when>
			<xsl:when test="Measure">
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="Measure/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Measure/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Measure</td></tr>
				<tr><td align="right"><i>Unit of Measure:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Measure/UOM/@reference" /></xsl:attribute><xsl:value-of select="Measure/UOM" /></xsl:element></td></tr>
			</xsl:when>
		</xsl:choose>
    </xsl:for-each>
   </table>

   <h4>Classification to be applied</h4>

<table border="1">
	<tr bgcolor="#9acd32">
		<th>Rank</th>
		<th>Start</th>
		<th>Identifier</th>
		<th>Title</th>
	</tr>
	<xsl:for-each select="/NumericClassification/RankingScheme/FirstRange">
		<tr>
			<th><xsl:value-of select="@rank"/></th>
			<td></td>
			<td align="center"><xsl:value-of select="Identifier"/></td>
			<td><xsl:value-of select="Title"/></td>
		</tr>
	</xsl:for-each>
	<xsl:for-each select="/NumericClassification/RankingScheme/Range">
		<tr>
			<th><xsl:value-of select="@rank"/></th>
			<td align="right">&gt;<xsl:if test="StartPoint/@include='true'">=</xsl:if> <xsl:value-of select="StartPoint"/></td>
			<td align="center"><xsl:value-of select="Identifier"/></td>
			<td><xsl:value-of select="Title"/></td>
		</tr>
	</xsl:for-each>
	<xsl:for-each select="/NumericClassification/RankingScheme/Missing">
		<tr bgcolor="#cccccc">
			<td colspan="2">value missing</td>
			<td align="center"><xsl:value-of select="Identifier"/></td>
			<td><xsl:value-of select="Title"/></td>
		</tr>
	</xsl:for-each>
	<xsl:for-each select="/NumericClassification/RankingScheme/Exception">
		<tr bgcolor="#cccccc">
			<td colspan="2">value = "<xsl:value-of select="OriginalValue"/>"</td>
			<td align="center"><xsl:value-of select="Identifier"/></td>
			<td><xsl:value-of select="Title"/></td>
		</tr>
	</xsl:for-each>
</table>

</center>
</body>
 </html>
</xsl:template>

</xsl:stylesheet>
