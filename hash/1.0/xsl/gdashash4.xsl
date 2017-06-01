<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gls="http://www.opengeospatial.net/gls" xpath-default-namespace="http://www.opengeospatial.net/gls" xmlns="http://www.opengeospatial.net/gls" xmlns:ns1="http://www.opengeospatial.net/ows" xmlns:ows="http://www.opengis.net/ows" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<xsl:param name="hashurl"/>
	<xsl:variable name="hashtable" select="document($hashurl)"/>
	<xsl:template match="/">
		<GDAS>
			<Framework>
				<xsl:copy-of select="/gls:GDAS/gls:Framework/gls:Dataset/preceding-sibling::node()"/>
				<Dataset>
					<xsl:copy-of select="/gls:GDAS/gls:Framework/gls:Dataset/gls:Attribute/preceding-sibling::node()"/>
						<xsl:copy-of select="$hashtable/Hash/ValueDescription/*"/>
					<Rowset>
						<xsl:for-each select="/gls:GDAS/gls:Framework/gls:Dataset/gls:Rowset/gls:Row/gls:V">
							<Row>
								<xsl:variable name="V">
									<xsl:value-of select="text()"/>
								</xsl:variable>
								<xsl:copy-of select="../child::*"/>
								<xsl:copy-of select="$hashtable/Hash/Table/Pair[Key=$V]/*[not(self::Key)]"/>
							</Row>
						</xsl:for-each>
					</Rowset>
				</Dataset>
			</Framework>
		</GDAS>
	</xsl:template>
</xsl:stylesheet>
