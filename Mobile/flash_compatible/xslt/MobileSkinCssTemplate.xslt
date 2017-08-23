<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="text" indent="yes"/>
	<xsl:template match="root">
		.topToolbar,.contentLabel, .sliderThumb:after{
		background-color:
		<xsl:call-template name="rgb">
			<xsl:with-param name="ColorNode" select="BackgroundColor"/>
		</xsl:call-template>
		}

		.popover{
		background-color:
		<xsl:call-template name="rgb">
			<xsl:with-param name="ColorNode" select="InnerColor"/>
		</xsl:call-template>
		}

		.toolbar, .contentLabel, .popover .button{
		color:
		<xsl:call-template name="rgb">
			<xsl:with-param name="ColorNode" select="HeaderTextColor"/>
		</xsl:call-template>
		}

		.popover:not(#helpOver) .contentOuter *{
		color:
		<xsl:call-template name="rgb">
			<xsl:with-param name="ColorNode" select="InnerFontColor"/>
		</xsl:call-template>
		}

		#bgDiv{
		background-color:
		<xsl:call-template name="rgb">
			<xsl:with-param name="ColorNode" select="BackgroundColor"/>
		</xsl:call-template>
		background-repeat: no-repeat;
		background-position: center center;
		background-size: 100% 100%;
		-webkit-background-size: 100% 100%;
		}
	</xsl:template>

	<xsl:template name="rgb">
		<xsl:param name="ColorNode"/>
		<xsl:variable name="R" select="$ColorNode/@R"/>
		<xsl:variable name="G" select="$ColorNode/@G"/>
		<xsl:variable name="B" select="$ColorNode/@B"/>rgb(<xsl:value-of select="$R"/>,<xsl:value-of select="$G"/>,<xsl:value-of select="$B"/>);
	</xsl:template>

	<xsl:template name="rgba">
		<xsl:param name="ColorNode"/>
		<xsl:variable name="R" select="$ColorNode/@R"/>
		<xsl:variable name="G" select="$ColorNode/@G"/>
		<xsl:variable name="B" select="$ColorNode/@B"/>
		<xsl:variable name="A" select="$ColorNode/@A"/>rgba(<xsl:value-of select="$R"/>,<xsl:value-of select="$G"/>,<xsl:value-of select="$B"/>,<xsl:value-of select="$A"/>);
	</xsl:template>
</xsl:stylesheet>
