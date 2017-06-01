<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name="hashtable" select="document('hashtable.xml')"/>
<xsl:template match="/">
		<GDAS>
							<xsl:copy-of select="$hashtable/*"/>
		</GDAS>
	</xsl:template>
</xsl:stylesheet>
