<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gls="http://www.opengis.net/gls/0.11" xpath-default-namespace="http://www.opengis.net/gls/0.11">

<xsl:template match="/">
<html>
<head>
<title>CanSIS TJS DescribeFrameworks Request Instructions</title>
<style type="text/css">
.restable {margin: auto; background: #FFF; border-collapse: collapse; border-top: 1px solid #363;}
.restable th {font-weight: bold; padding: .3em .7em; text-align: left; vertical-align: top; background: #9C9; white-space: nowrap; border-top: 1px solid #363; border-bottom: 1px solid #363;}
.restable td {font-weight: normal; padding: .3em .7em; text-align: left; vertical-align: top;}
th {font-weight: bold; padding: .3em .7em; text-align: right;}
</style>

</head>
<body>
<h1>CanSIS TJS DescribeFrameworks Request - Instructions</h1>
<p>This service is part of the OGC TJS standard.  It allows retrieval of descriptions of one or more spatial frameworks for which data is available from this server.</p>
<table>
<tr><td colspan="3"><hr/></td></tr>
<tr><th>Request</th><th>Method:</th><td>GET</td></tr>
<tr><th></th><th>URL:</th><td><a href="http://sis.agr.gc.ca/pls/meta/web_dataset?">http://sis.agr.gc.ca/pls/meta/web_dataset?</a></td></tr>
<tr><th></th><th></th><td>
 <table class="restable">

  <tr><th>Parameter</th><th>Value</th><th>Description</th></tr>
  <tr><td><b>Service</b></td><td>string (mandatory)</td><td>Service Type Identifier (must be "TJS")</td></tr>
  <tr><td><b>Version</b></td><td>string (mandatory)</td><td>Service Version Identifier (must be "1.0")</td></tr>
  <tr><td><b>Request</b></td><td>string (mandatory)</td><td>Service Request Identifier (Must be "DescribeFrameworks" to return framework metadata.  If the value of this parameter differs from "DescribeFrameworks then the service returns this service description document.)</td></tr>

  <tr><td><b>FrameworkURI</b></td><td>string (optional)</td><td>Framework Identifier</td></tr>
  <tr><td><b>AcceptLanguages</b></td><td>string (optional)</td><td>language of output(either "EN" for English or "FR" for French).  The default is EN.</td></tr>
 </table>
 </td></tr>
<tr><td colspan="3"><hr/></td></tr>
<tr><th>Response</th><th>Format:</th><td>HTML</td></tr>

<tr><th></th><th>Schema:</th><td></td></tr>
<tr><th></th><th>Example:</th><td><a href="http://sis.agr.gc.ca/pls/meta/TJS_1x0_DescribeFrameworks?Service=TJS&amp;Version=1.0&amp;Request=DescribeFrameworks">DescribeFrameworks</a></td></tr>
<tr><td colspan="3"><hr/></td></tr>
</table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>