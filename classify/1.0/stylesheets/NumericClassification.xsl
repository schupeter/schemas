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
			<xsl:when test="Values/Nominal">
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Values/Nominal/@type" /></xsl:attribute><xsl:value-of select="Values/Nominal/@type" /></xsl:element></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Values/Nominal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
			</xsl:when>
			<xsl:when test="Values/Ordinal">
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Values/Ordinal/@type" /></xsl:attribute><xsl:value-of select="Values/Ordinal/@type" /></xsl:element></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Values/Ordinal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
			</xsl:when>
			<xsl:when test="Values/Count">
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Values/Count/@type" /></xsl:attribute><xsl:value-of select="Values/Count/@type" /></xsl:element></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Values/Count/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Count</td></tr>
			</xsl:when>
			<xsl:when test="Values/Measure">
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Abstract" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Values/Measure/@type" /></xsl:attribute><xsl:value-of select="Values/Measure/@type" /></xsl:element></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Values/Measure/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Measure</td></tr>
				<tr><td align="right"><i>Unit of Measure:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Values/Measure/UOM/@reference" /></xsl:attribute><xsl:value-of select="Values/Measure/UOM/LongForm" /></xsl:element> (<xsl:value-of select="Values/Measure/UOM/ShortForm" />)</td></tr>
			</xsl:when>
		</xsl:choose>
    </xsl:for-each>
   </table>

   <h4>Classification to be applied</h4>

<table border="1">
	<tr bgcolor="#9acd32">
		<th>Rank</th>
		<th>Value</th>
		<th>Identifier</th>
		<th>Title</th>
		<th>Colour</th>
	</tr>
	<xsl:for-each select="/NumericClassification/RankingScheme/HighestClass">
		<tr>
			<th><xsl:value-of select="@rank"/></th>
			<td align="right"><xsl:if test="@includeMinValue='false'">&gt;</xsl:if><xsl:if test="@includeMinValue='true'">&#8805;</xsl:if> <xsl:value-of select="@minValue"/></td>
			<td align="center"><xsl:value-of select="@identifier"/></td>
			<td><xsl:value-of select="@title"/></td>
			<xsl:element name="td"><xsl:attribute name="bgcolor"><xsl:value-of select="@color" /></xsl:attribute></xsl:element>
		</tr>
	</xsl:for-each>
	<xsl:for-each select="/NumericClassification/RankingScheme/MidClass">
		<tr>
			<th><xsl:value-of select="@rank"/></th>
			<td align="right"><xsl:if test="@includeMinValue='false'">&gt;</xsl:if><xsl:if test="@includeMinValue='true'">&#8805;</xsl:if> <xsl:value-of select="@minValue"/></td>
			<td align="center"><xsl:value-of select="@identifier"/></td>
			<td><xsl:value-of select="@title"/></td>
			<xsl:element name="td"><xsl:attribute name="bgcolor"><xsl:value-of select="@color" /></xsl:attribute></xsl:element>
		</tr>
	</xsl:for-each>
	<xsl:for-each select="/NumericClassification/RankingScheme/LowestClass">
		<tr>
			<th><xsl:value-of select="@rank"/></th>
			<td align="right"><xsl:if test="preceding-sibling::*[1]/@includeMinValue='false'">&#8804;</xsl:if><xsl:if test="preceding-sibling::*[1]/@includeMinValue='true'">&lt;</xsl:if> <xsl:value-of select="preceding-sibling::*[1]/@minValue" /></td>
			<td align="center"><xsl:value-of select="@identifier"/></td>
			<td><xsl:value-of select="@title"/></td>
			<xsl:element name="td"><xsl:attribute name="bgcolor"><xsl:value-of select="@color" /></xsl:attribute></xsl:element>
		</tr>
	</xsl:for-each>
	<xsl:for-each select="/NumericClassification/RankingScheme/MissingClass">
		<tr bgcolor="#cccccc">
			<td colspan="2">value missing</td>
			<td align="center"><xsl:value-of select="@identifier"/></td>
			<td><xsl:value-of select="@title"/></td>
			<xsl:element name="td"><xsl:attribute name="bgcolor"><xsl:value-of select="@color" /></xsl:attribute></xsl:element>
		</tr>
	</xsl:for-each>
	<xsl:for-each select="/NumericClassification/RankingScheme/ExceptionClass">
		<tr bgcolor="#cccccc">
			<td colspan="2">value = "<xsl:value-of select="@originalValue"/>"</td>
			<td align="center"><xsl:value-of select="@identifier"/></td>
			<td><xsl:value-of select="@title"/></td>
			<xsl:element name="td"><xsl:attribute name="bgcolor"><xsl:value-of select="@color" /></xsl:attribute></xsl:element>
		</tr>
	</xsl:for-each>
</table>

</center>
</body>
 </html>
</xsl:template>

</xsl:stylesheet>
