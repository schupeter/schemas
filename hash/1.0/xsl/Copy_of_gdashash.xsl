<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<GDAS>
			<Framework>
This data applies to the <xsl:value-of select="/gls:GDAS/gls:Framework/gls:Title" /> framework.
				<DatasetXX>
					<xsl:copy-of select="/GDAS/Framework/Dataset/Attribute/preceding-sibling::node()"/>
					<xsl:copy-of select="/GDAS/Framework/Dataset/Attribute"/>
					<Rowset>
						<xsl:for-each select="/GDAS/Framework/Dataset/Rowset/Row/V">
							<Row>
								<xsl:variable name="V">
									<xsl:value-of select="text()"/>
								</xsl:variable>
								<xsl:copy-of select="../child::*"/>
								<xsl:copy-of select="$hashtable/Hash/Pair[Key=$V]/*[not(self::Key)]"/>
							</Row>
						</xsl:for-each>
					</Rowset>
				</DatasetXX>
			</Framework>
		</GDAS>
	</xsl:template>
</xsl:stylesheet>
