<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8"/>
<xsl:template match="/european_countries">

<html>
<head>
<meta charset="utf-8"/>
<title>European countries</title>
<link rel="stylesheet" href="european_countries.css" type="text/css"/>
</head>

<body>

<h2>European countries - table</h2>
	
	<table style="width:100%;">
	<tr bgcolor="#9acd32">
		<th>Country</th>
		<th>Capital</th>
		<th>Calling code</th>
		<th>Currency</th>
		<th>Picture</th>
	</tr>
	<xsl:for-each select="language_family">
	<tr>
	<xsl:if test="@type='Germanic'">
		<xsl:attribute name="style">background-color:#4286f4</xsl:attribute>  
	</xsl:if>
	<xsl:if test="@type='Slavic'">
		<xsl:attribute name="style">background-color:#ed3d3d</xsl:attribute>  
	</xsl:if>
	<xsl:if test="@type='Romance'">
		<xsl:attribute name="style">background-color:#3dd2ed</xsl:attribute>  
	</xsl:if>
		<td class="cell"><xsl:value-of select="country"/></td>
		<td class="cell"><xsl:value-of select="capital"/></td>
		<td class="cell"><xsl:value-of select="calling_code"/></td>
		<td class="cell"><xsl:value-of select="currency"/></td>
		<td align="center"><img width="100" height="100" src="{picture}"/></td>
	</tr>
	</xsl:for-each>
	</table>

<h2>European countries</h2>

<xsl:for-each select="language_family">
	<span class="one"><xsl:value-of select="country"/><br/></span>
	<span class="two"><xsl:value-of select="capital"/><br/></span>
	<span class="three"><xsl:value-of select="calling_code"/><br/></span>
	<span class="four"><xsl:value-of select="currency"/><br/></span>
	<img width="100" height="100" src="{picture}"/><br/>
</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>