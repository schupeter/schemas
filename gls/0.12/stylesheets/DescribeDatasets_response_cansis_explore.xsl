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
        <xsl:for-each select="gls:DatasetDescriptions">
          <p/>
          <hr width="10%"/>
          <p/>
          <table border="1" cellpadding="3" align="left">
            <tr>
              <td width="400"><b>Table Name</b></td>
              <td ><strong>...</strong></td>
              <td ><strong>...</strong></td>
            </tr>
            <xsl:for-each select="gls:Framework/gls:Dataset">
              <tr>
                <td align="left"><xsl:value-of select="gls:Title" /></td>
                <th align="left"><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="$Service" />service=GLS&amp;version=0.12&amp;request=DescribeData&amp;FrameworkURI=<xsl:value-of select="../gls:FrameworkURI" />&amp;DatasetURI=<xsl:value-of select="gls:DatasetURI" />&amp;XSL=<xsl:value-of select="$XSLroot" />DescribeData_response_cansis_website.xsl</xsl:attribute>View Web Page Table</xsl:element></th>
                <th align="left"><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="$Service" />service=GLS&amp;version=0.12&amp;request=DescribeData&amp;FrameworkURI=<xsl:value-of select="../gls:FrameworkURI" />&amp;DatasetURI=<xsl:value-of select="gls:DatasetURI" />&amp;XSL=<xsl:value-of select="$XSLroot" />DescribeData_response_cansis_explore.xsl</xsl:attribute>Explore Contents</xsl:element></th>
              </tr>
            </xsl:for-each>
          </table>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
