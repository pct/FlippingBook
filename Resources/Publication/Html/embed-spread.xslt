<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" indent="no" omit-xml-declaration="yes" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />
	<xsl:template match="/Book">
        <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
			<meta http-equiv="X-UA-Compatible" content="IE=9"/>
			
			<xsl:text disable-output-escaping="yes"><![CDATA[
			<meta http-equiv="Content-Type" content="text/html; charset=]]></xsl:text>
			<xsl:value-of select="CharSet"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[" > ]]></xsl:text>
			
			<title>
				<xsl:value-of select="Title"/>
			</title>
            <link rel="stylesheet" type="text/css" href="embed/embed-hover.css" />
            <script type="text/javascript">
				window.assetsPath = "pages";
				window.currentLink = "../../../index.html";
            </script>
            <script type="text/javascript" src="embed/embed.js">//</script>
            </head>
            <body>
				<div id="fbEmbed" class="fbEmbed">
					<a href="" target="_blank" id="publicationLink">
						<div id="flippingBookEmbed"><xsl:text disable-output-escaping="yes"><![CDATA[<!--c-->]]></xsl:text></div>
						<div id="fbHover" class="fbHover">
							<div id="column">
								<p class="subs"><span class="topTitle" id="PageTitle"><xsl:value-of select="Title"/></span></p>
							</div>
							<h4 class="bottomLink" id="bottomLink">Click to view</h4>
						</div>
					</a>
					<table class="shadow">
						<tr>
							<td id="lefts"><xsl:text disable-output-escaping="yes"><![CDATA[<!--c-->]]></xsl:text></td>
					<td id="mids"><xsl:text disable-output-escaping="yes"><![CDATA[<!--c-->]]></xsl:text></td>
					<td id="rights"><xsl:text disable-output-escaping="yes"><![CDATA[<!--c-->]]></xsl:text></td>
						</tr>
					</table>
                </div>
            </body>
          </html>

        </xsl:template>
</xsl:stylesheet>