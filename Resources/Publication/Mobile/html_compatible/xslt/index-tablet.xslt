<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" indent="yes" omit-xml-declaration="yes" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" />
	<xsl:template match="/Book">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<script type="text/javascript">
					<xsl:text>
					window.location = "../../index.html" + window.location.search + window.location.hash;
					</xsl:text>
				</script>
				<title>
					<xsl:value-of select="Title"/>
				</title>
			</head>
			<body id="body">&#160;</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
