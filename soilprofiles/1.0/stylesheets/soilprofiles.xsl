<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
 <body>
<center>
<h1>CanSIS Soil Pedon Data</h1>
<h2><xsl:value-of select="/SoilProfiles/Collection/@title"/> Pedon #<xsl:value-of select="/SoilProfiles/Collection/SoilSet/Soil/@id"/></h2>

<h3>Site properties</h3>
<xsl:for-each select="/SoilProfiles/Collection/SoilSet/Soil">

  <table border="1">
    <tr bgcolor="#cccccc">
      <th>Property</th>
      <th>Value</th>
      <th>Unit</th>
    </tr>
    <xsl:for-each select="Property">
      <tr>
        <td align="left">
          <xsl:element name="a">
            <xsl:attribute name="href"><xsl:value-of select="@href"/></xsl:attribute>
            <xsl:value-of select="@title"/>
          </xsl:element>
        </td>
        <td align="right"><xsl:value-of select="@value"/></td>
        <td><xsl:value-of select="@unit"/></td>
      </tr>
    </xsl:for-each>
  </table>
  
  <xsl:for-each select="LayerSet/Layer">
    <br/>
    <br/>
    <h4>Layer: <xsl:value-of select="@id"/></h4>
    <table>
      <tr>
        <td align="right">Upper Depth</td>
        <td align="right"><xsl:value-of select="@upperDepth"/></td>
        <td>cm</td>
      </tr>
      <tr>
        <td align="right">Lower Depth</td>
        <td align="right"><xsl:value-of select="@lowerDepth"/></td>
        <td>cm</td>
      </tr>
    </table>
    <table border="1">
      <tr bgcolor="#cccccc">
        <th>Property</th>
        <th>Value</th>
        <th>Unit</th>
      </tr>
      <xsl:for-each select="Property">
        <tr>
          <td align="right">
            <xsl:element name="a">
              <xsl:attribute name="href"><xsl:value-of select="@href"/></xsl:attribute>
              <xsl:value-of select="@title"/>
            </xsl:element>
          </td>
          <td align="right"><xsl:value-of select="@value"/></td>
          <td><xsl:value-of select="@unit"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:for-each>

</xsl:for-each>


</center>
</body>
 </html>
</xsl:template>

</xsl:stylesheet>
