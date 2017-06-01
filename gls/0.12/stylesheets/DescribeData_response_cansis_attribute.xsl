<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gls="http://www.opengis.net/gls/0.12" xpath-default-namespace="http://www.opengis.net/gls/0.12" xmlns:ows="http://www.opengis.net/ows/1.1" xmlns:xlink="http://www.w3.org/1999/xlink">
	<xsl:template match="/">
		<xsl:variable name="Service">http://liz.gis.agr.gc.ca/gls/serv?</xsl:variable>
		<xsl:variable name="XSLroot">http://liz.gis.agr.gc.ca/stylesheets/gls/0.12</xsl:variable>
		<!-- Installation instructions:  
			Copy value of gls:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetData']/ows:DCP/ows:HTTP/ows:Get/@xlink:href to Service variable definition above
			Copy web directory location of XSLT files to XSLroot variable definition above-->
		<html>
			<body>
				<center>
            <xsl:for-each select="gls:DataDescriptions/gls:Framework">
              <p/><hr width="10%"/><p/>
                <xsl:for-each select="gls:Dataset">
                  <i>Attribute Dataset:</i> <xsl:value-of select="gls:Title" />
                  <xsl:for-each select="gls:Attribute">
                    <xsl:choose>
                      <xsl:when test="gls:Values/gls:Nominal">
                        <h1><xsl:value-of select="gls:AttributeName" /> - <xsl:value-of select="gls:Title" /></h1>
                        <i>Description:</i><xsl:value-of select="gls:Abstract" />
                        <table width="100%" border="1" cellpadding="3">
                          <xsl:for-each select="gls:Values/gls:Nominal/gls:Classes/gls:Value">
                            <tr>
                              <td align="center" bgcolor="#9966cc"><xsl:value-of select="gls:Identifier"/></td>
                              <td>
                                <table cellpadding="3">
                                  <tr><td><b><xsl:value-of select="gls:Title"/></b></td></tr>
                                  <tr><td><xsl:value-of select="gls:Abstract"/></td></tr>
                                </table>
                              </td>
                            </tr>
                          </xsl:for-each>
                          <xsl:for-each select="gls:Values/gls:Nominal/gls:Exceptions/gls:Value">
                            <tr>
                              <td align="center" bgcolor="#99ccff"><xsl:value-of select="gls:Identifier"/></td>
                              <td>
                                <table cellpadding="3">
                                  <tr><td><b><xsl:value-of select="gls:Title"/></b></td></tr>
                                  <tr><td><xsl:value-of select="gls:Abstract"/></td></tr>
                                </table>
                              </td>
                            </tr>
                          </xsl:for-each>
                        </table>
                      </xsl:when>
                      <xsl:when test="gls:Values/gls:Ordinal">
                        <tr bgcolor="#9acd32"><td align="right"><i>Attribute:</i></td><th align="center"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="gls:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="gls:AttributeName" /></th></tr>
                        <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title" /></td></tr>
                        <tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract" /></td></tr>
                        <tr>
                          <td colspan="2">
                            <table width="100%" border="1" cellpadding="3">
                              <tr  bgcolor="#cccccc"><td>Value</td><td>Rank</td><td></td></tr>
                              <xsl:for-each select="gls:Values/gls:Ordinal/gls:Classes/gls:Value">
                                <tr>
                                  <td align="center" bgcolor="#9966cc"><xsl:value-of select="gls:Identifier"/></td>
                                  <td align="center" bgcolor="#9966cc"><xsl:value-of select="@rank"/></td>
                                  <td>
                                    <table cellpadding="3">
                                      <tr><td><b><xsl:value-of select="gls:Title"/></b></td></tr>
                                      <tr><td><xsl:value-of select="gls:Abstract"/></td></tr>
                                    </table>
                                  </td>
                                </tr>
                              </xsl:for-each>
                              <xsl:for-each select="gls:Values/gls:Ordinal/gls:Exceptions/gls:Value">
                                <tr>
                                  <td align="center" bgcolor="#99ccff"><xsl:value-of select="gls:Identifier"/></td>
                                  <td align="center" bgcolor="#99ccff"><xsl:value-of select="@rank"/></td>
                                  <td>
                                    <table cellpadding="3">
                                      <tr><td><b><xsl:value-of select="gls:Title"/></b></td></tr>
                                      <tr><td><xsl:value-of select="gls:Abstract"/></td></tr>
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
                      </xsl:when>
                      <xsl:when test="gls:Values/gls:Measure">
                        <tr bgcolor="#9acd32"><td align="right"><i>Attribute:</i></td><th align="center"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="gls:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="gls:AttributeName" /></th></tr>
                        <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title" /></td></tr>
                        <tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract" /></td></tr>
                      </xsl:when>
                    </xsl:choose>
                  </xsl:for-each>
                </xsl:for-each>
            </xsl:for-each>
				</center>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
