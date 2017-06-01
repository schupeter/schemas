<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gls="http://www.opengis.net/gls/0.12" xpath-default-namespace="http://www.opengis.net/gls/0.12" xmlns:ows="http://www.opengis.net/ows/1.1" xmlns:xlink="http://www.w3.org/1999/xlink">
  <xsl:template match="/">
    <xsl:variable name="Service">/mapit/serv?</xsl:variable>
    <xsl:variable name="XSLroot">/stylesheets/gls/0.12.0</xsl:variable>
    <!-- Installation instructions:  
      Copy value of gls:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetData']/ows:DCP/ows:HTTP/ows:Get/@xlink:href to Service variable definition above
      Copy web directory location of XSLT files to XSLroot variable definition above-->
    <html>
      <body>
        <center>
        <h2 id="framework">Field Descriptions</h2>
        <xsl:for-each select="gls:ValueDescriptions">
          <p/>
          <hr width="10%"/>
          <p/>
                  <table border="1" cellpadding="3">
                    <xsl:for-each select="gls:Attribute">
                      <tr bgcolor="#9acd32"><td align="right"><i>Attribute:</i></td><th align="center"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="gls:AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="gls:AttributeName" /></th></tr>
                      <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title" /></td></tr>
                      <tr><td align="right"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract" /></td></tr>
                      <tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="gls:Values/gls:Nominal/@type" /></td></tr>
                      <tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="gls:Values/gls:Nominal/@length" /></td></tr>
                      <tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
                      <tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
                      <tr>
                        <td colspan="2">
                          <table width="100%" border="1" cellpadding="3">
                            <xsl:choose>
                            <xsl:when test="gls:Values/gls:Nominal">
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
                                      <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="../../gls:Title"/></td></tr>
                                      <tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="../../gls:Abstract"/></td></tr>
                                      <tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="../../gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
                                    </table>
                                  </td>
                                </tr>
                              </xsl:for-each>
                            </xsl:when>
                            <xsl:when test="gls:Values/gls:Ordinal">
                              <tr bgcolor="#cccccc">
                                <td colspan="2" align="center">Values</td>
                                <td rowspan="2">
                                  <table cellpadding="3">
                                    <tr><td align="right"><i>Valueset Title:</i></td><td><xsl:value-of select="gls:Title"/></td></tr>
                                    <tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract"/></td></tr>
                                    <tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
                                  </table>
                                </td>
                              </tr>
                              <tr  bgcolor="#cccccc"><td>Value</td><td>Rank</td><td></td></tr>
                              <xsl:for-each select="gls:Values/gls:Ordinal/gls:Classes/gls:Value">
                                <tr>
                                  <td align="center" bgcolor="#9966cc"><xsl:value-of select="gls:Identifier"/></td>
                                  <td align="center" bgcolor="#9966cc"><xsl:value-of select="@rank"/></td>
                                  <td>
                                    <table cellpadding="3">
                                      <tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="gls:Title"/></td></tr>
                                      <tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="gls:Abstract"/></td></tr>
                                      <tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="gls:Documentation" /></xsl:attribute><xsl:value-of select="gls:Documentation" /></xsl:element></td></tr>
                                    </table>
                                  </td>
                                </tr>
                              </xsl:for-each>
                            </xsl:when>
                            </xsl:choose>
                            <tr><td colspan="3" align="center"><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="$Service"/>Service=GLS&amp;Version=<xsl:value-of select="/gls:FieldDescriptions/@version" />&amp;Request=GetData&amp;DatasetURI=<xsl:value-of select="/gls:DataDescriptions/gls:Framework/gls:Dataset/gls:DatasetURI" />&amp;Attributes=<xsl:value-of select="gls:AttributeName" />&amp;XSL=<xsl:value-of select="$XSLroot"/>/gdas2html.xsl</xsl:attribute>View data</xsl:element></td></tr>
                          </table>
                        </td>
                      </tr>
                    </xsl:for-each>
                  </table>
        </xsl:for-each>
        </center>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
