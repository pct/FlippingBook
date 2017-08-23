<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" doctype-system="about:legacy-compat" indent="yes" omit-xml-declaration="yes" />
  <xsl:template match="/Book">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>
          <xsl:value-of select="Title"/>
        </title>

        <xsl:text disable-output-escaping="yes"><![CDATA[<meta http-equiv="Content-Type" content="text/html; charset=]]></xsl:text>
        <xsl:value-of select="CharSet"/>
        <xsl:text disable-output-escaping="yes"><![CDATA[" >]]></xsl:text>

        <style type="text/css">
          <xsl:text disable-output-escaping="yes"><![CDATA[
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, font, img, ins, kbd, q, s, samp,
small, strike, sub, sup, tt, var,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td {

	border: 0;
	outline: 0;

}
:focus {
	outline: 0;
}

html { width :100%;height:100%;}
body{font-family:Lucida Grande,Helvetica,Lucida Sans,Arial,sans-serif;margin:0;font-size:12px;color:#3f5154;background:#d1e1e8}
.flashbook-content {width : 600px; height: 200px; margin: 20px auto; padding: 10px; text-align: left; background:white;border:1px solid #ccc;border-radius:5px;padding:20px;}
.placeholder-text{background:url('files/flash/flash.gif') no-repeat #f5e9e9;border:1px solid #d0c1c1;border-radius:5px;min-height:50px;padding:11px 13px 11px 83px}
.placeholder-text a{color:#a24c4c}
h4{color:#303030;font-size:14px;text-align:center; margin: 0px;}
p{color:#464646;font-size:11px;font-weight:bold;text-align:center;}
p a{color:#0768b3;text-decoration:underline}

]]></xsl:text>
        </style>
      </head>
      <body>
        <xsl:attribute name="style">
          <xsl:text>height:100%; width:100%; overflow: hidden; padding: 0; margin: 0; background:#</xsl:text>
          <xsl:value-of select="BackColor"/>
        </xsl:attribute>
        <xsl:comment>
          ProductVersion=<xsl:value-of select="ProductVersion"/>
        </xsl:comment>
        <xsl:comment>
          FBID=<xsl:value-of select="FBID"/>
        </xsl:comment>
        <div id="content">
          <table style="position:absolute;top:0;left:0;right:0;bottom:0;height:100%;width:100%">
            <tr>
              <td style="vertical-align:middle;text-align:center">
                <table class="flashbook-content">
                  <tr>
                    <td style="vertical-align:top;">
                      <h4>Alternative content</h4>
                      <p>
                        Unfortunately, no Mobile version is available for this publication.
                      </p>
                    </td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
