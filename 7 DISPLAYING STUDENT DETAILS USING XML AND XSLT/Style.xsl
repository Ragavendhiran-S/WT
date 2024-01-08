<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Student Details - Transformation</title>
</head>
<body>
<table border="1">
<caption>Student Details</caption>
<tr>
<th>Name</th><th>Department</th><th>Register No</th>
</tr>
<xsl:for-each select="/student/details">
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="branch"/></td>
<td><xsl:value-of select="dob"/></td>
</tr>
</xsl:for-each>
</table>
</body> 
</html> 
</xsl:template> 
</xsl:transform>