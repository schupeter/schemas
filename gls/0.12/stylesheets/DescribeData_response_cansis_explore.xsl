<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gls="http://www.opengis.net/gls/0.12" xpath-default-namespace="http://www.opengis.net/gls/0.12" xmlns:ows="http://www.opengis.net/ows/1.1" xmlns:xlink="http://www.w3.org/1999/xlink">
  <xsl:template match="/">
    <xsl:variable name="Service">serv?</xsl:variable>
    <xsl:variable name="XSLroot">/stylesheets/gls/0.12/</xsl:variable>
    <!-- Installation instructions:  
      Copy value of gls:Capabilities/ows:OperationsMetadata/ows:Operation[@name='GetData']/ows:DCP/ows:HTTP/ows:Get/@xlink:href to Service variable definition above
      Copy web directory location of XSLT files to XSLroot variable definition above-->
    <html>
      <body>
        <xsl:for-each select="gls:DataDescriptions">
          <h3>Explore</h3>
          <p/>
            <hr width="10%"/>
          <p/>
          <xsl:for-each select="gls:Framework/gls:Dataset">
            <center>
              <h2><xsl:value-of select="gls:Title" /></h2>
            </center>
            <h2>Contents</h2>
            <table border="1" cellpadding="3" align="left">
              <tr>
                <td width="97"><b>FieldName</b></td>
                <td width="38"><b>Type</b></td>
                <td width="44"><b>Width</b></td>
                <td ><strong>Description</strong></td>
              </tr>
                    <xsl:for-each select="gls:Attribute">
                      <tr>
                        <th align="left"><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="$Service" />service=GLS&amp;version=0.12&amp;request=DescribeData&amp;FrameworkURI=<xsl:value-of select="../../gls:FrameworkURI" />&amp;DatasetURI=<xsl:value-of select="../gls:DatasetURI" />&amp;Attributes=<xsl:value-of select="gls:AttributeName" />&amp;XSL=<xsl:value-of select="$XSLroot" />DescribeData_response_cansis_attribute.xsl</xsl:attribute><xsl:value-of select="gls:AttributeName" /></xsl:element></th>
                        <td align="left"><xsl:value-of select="substring(gls:Values/*/@type,35)" /></td>
                        <td align="left"><xsl:value-of select="gls:Values/*/@length" /></td>
                        <td align="left"><xsl:value-of select="gls:Title" /></td>
                      </tr>
                    </xsl:for-each>
            </table>
          </xsl:for-each>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
