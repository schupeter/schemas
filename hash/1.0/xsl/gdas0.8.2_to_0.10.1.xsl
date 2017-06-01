<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xsl:xpath-default-namespace="http://www.opengeospatial.net/gls">

<xsl:template match="/">
<xsl:processing-instruction name="xml-stylesheet">type="text/xsl" href="gdas2html2.xsl"</xsl:processing-instruction>
<GDAS >
	<Framework>
		<FrameworkDomain><xsl:value-of select="GDAS_Data/Framework/Domain" /></FrameworkDomain>
		<FrameworkName><xsl:value-of select="GDAS_Data/Framework/Name" /></FrameworkName>
		<FrameworkVersion><xsl:value-of select="GDAS_Data/Framework/Version" /></FrameworkVersion>
		<Organization><xsl:value-of select="GDAS_Data/Framework/Organization" /></Organization>
		<Title><xsl:value-of select="GDAS_Data/Framework/Title" /></Title>
		<Description><xsl:value-of select="GDAS_Data/Framework/Description" /></Description>
		<ReleaseDate><xsl:value-of select="GDAS_Data/Framework/ReleaseDate" /></ReleaseDate>
		<Documentation><xsl:value-of select="GDAS_Data/Framework/Documentation" /></Documentation>
		<GeolinkageField><xsl:value-of select="GDAS_Data/Framework/GeolinkageField" /></GeolinkageField>
		<Dataset>
			<DatasetDomain><xsl:value-of select="GDAS_Data/Framework/Dataset/Domain" /></DatasetDomain>
			<DatasetName><xsl:value-of select="GDAS_Data/Framework/Dataset/Name" /></DatasetName>
			<DatasetVersion><xsl:value-of select="GDAS_Data/Framework/Dataset/Version" /></DatasetVersion>
			<Organization><xsl:value-of select="GDAS_Data/Framework/Dataset/Organization" /></Organization>
			<Title><xsl:value-of select="GDAS_Data/Framework/Dataset/Title" /></Title>
			<Description><xsl:value-of select="GDAS_Data/Framework/Dataset/Description" /></Description>
			<ReleaseDate><xsl:value-of select="GDAS_Data/Framework/Dataset/ReleaseDate" /></ReleaseDate>
			<Documentation><xsl:value-of select="GDAS_Data/Framework/Dataset/Documentation" /></Documentation>
			<GeolinkageField><xsl:value-of select="GDAS_Data/Framework/Dataset/GeolinkageField" /></GeolinkageField>
			<GeolinkageRelationship>one???</GeolinkageRelationship>
			<GeolinkageComplete>true???</GeolinkageComplete>
			<xsl:for-each select="GDAS_Data/Framework/Dataset/Attribute">
				<Attribute>
					<AttributeName><xsl:value-of select="Name" /></AttributeName>
					<Title><xsl:value-of select="Units" /></Title>
					<Description><xsl:value-of select="Description" /></Description>
					<Documentation><xsl:value-of select="Documentation" /></Documentation>
					<xsl:choose>
						<xsl:when test="Type='nominal' ">
							<Values>
								<xsl:element name="Nominal"><xsl:attribute name="type">http://www.w3.org/TR/xmlschema-2/#string</xsl:attribute><xsl:attribute name="length">10???</xsl:attribute>
									<Classes>
										<Value>
											<Identifier>???</Identifier>
											<Title>???</Title>
											<Abstract>???</Abstract>
											<Documentation>http://foo/bar.html</Documentation>
										</Value>
									</Classes>
								</xsl:element>
							</Values>
						</xsl:when>
						<xsl:when test="Type='ordinal' ">
							<Values>
								<xsl:element name="Ordinal"><xsl:attribute name="type">http://www.w3.org/TR/xmlschema-2/#string</xsl:attribute><xsl:attribute name="length">10???</xsl:attribute>
									<Classes>
										<Value rank="???">
											<Identifier>???</Identifier>
											<Title>???</Title>
											<Abstract>???</Abstract>
											<Documentation>http://foo/bar.html</Documentation>
										</Value>
									</Classes>
								</xsl:element>
							</Values>
						</xsl:when>
						<xsl:when test="Type='count' ">
							<Values>
								<xsl:element name="Count"><xsl:attribute name="type">http://www.w3.org/TR/xmlschema-2/#integer</xsl:attribute><xsl:attribute name="digits">10???</xsl:attribute></xsl:element>
							</Values>
						</xsl:when>
						<xsl:when test="Type='measure' ">
							<Values>
								<xsl:element name="Measure"><xsl:attribute name="type">http://www.w3.org/TR/xmlschema-2/#float</xsl:attribute><xsl:attribute name="digits">10???</xsl:attribute></xsl:element>
							</Values>
						</xsl:when>
					</xsl:choose>
				</Attribute>
			</xsl:for-each>
			<xsl:copy-of select="GDAS_Data/Framework/Dataset/Rowset" />
		</Dataset>
	</Framework>
</GDAS>
</xsl:template>
</xsl:stylesheet>