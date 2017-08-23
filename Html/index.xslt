<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" omit-xml-declaration="yes" />
  
  <xsl:template match="MetaTags">
    <xsl:text>&#10;</xsl:text>
    <xsl:text>&#9;</xsl:text>
    <xsl:value-of select="child::text()" disable-output-escaping="yes" />
    <xsl:text>&#10;</xsl:text>
    <xsl:text>&#9;</xsl:text>
  </xsl:template>

  <xsl:template match="/Book">
	<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
    <html xmlns="http://www.w3.org/1999/xhtml" prefix="og: http://ogp.me/ns#">
      <head>
        <title>
          <xsl:value-of select="Title"/>
        </title>
        <xsl:text disable-output-escaping="yes"><![CDATA[
		<meta http-equiv="Content-Type" content="text/html; charset=]]></xsl:text><xsl:value-of select="CharSet"/><xsl:text disable-output-escaping="yes"><![CDATA[" >
		<meta property="og:title" content="]]></xsl:text><xsl:value-of select="Title2"/><xsl:text disable-output-escaping="yes"><![CDATA[" >
		<meta name="description" content="]]></xsl:text><xsl:value-of select="Description"/><xsl:text disable-output-escaping="yes"><![CDATA[" >
		<meta property="og:description" content="]]></xsl:text><xsl:value-of select="Description"/><xsl:text disable-output-escaping="yes"><![CDATA[" >
	    <meta property="og:type" content="article">
	    <meta property="og:image" content="]]></xsl:text><xsl:value-of select="CoverFilePath"/><xsl:text disable-output-escaping="yes"><![CDATA[" >
	    <meta property="og:determiner" content="auto" >
		<meta name="viewport" content="initial-scale=0.5, user-scalable=no, maximum-scale=0.5, minimal-ui"/>]]></xsl:text>
        <xsl:apply-templates select="MetaTags" />

        <xsl:if test="FavIcon">
          <xsl:text disable-output-escaping="yes"><![CDATA[<link rel="shortcut icon"  href="]]></xsl:text><xsl:value-of select="FavIcon"/><xsl:text>?</xsl:text><xsl:value-of select="GUID"/><xsl:text disable-output-escaping="yes"><![CDATA[" />]]></xsl:text>
        </xsl:if>
       
        <style type="text/css" media="print">
          <xsl:text disable-output-escaping="yes">
		  <![CDATA[
				body {visibility: hidden; display: none;}
			]]>
		</xsl:text>
        </style>
        
		<link href="./{StaticPath}/common/styles/style.css" type="text/css" rel="stylesheet" />

        <style type="text/css">
          <xsl:text disable-output-escaping="yes"><![CDATA[				
				.bodyStyle{
					font-family:Lucida Grande,Helvetica,Lucida Sans,Arial,sans-serif;
					font-size:12px;
					color:#3f5154;
					height:100%; 
					width:100%; 
					overflow: hidden; 
					padding: 0; 
					margin: 0; 
					background:#]]></xsl:text><xsl:value-of select="BackColor"/><xsl:text disable-output-escaping="yes"><![CDATA[;
					
				}
				
				.flashbook-content {
					width : 724px; 
					height: 200px; 
					margin: 20px auto; 
					padding: 10px; 
					text-align: left; 
					background:white;
					border:1px solid #ccc;
					border-radius:5px;
					padding:20px;
				}
				
				.placeholder-text{
					background:url('./]]></xsl:text><xsl:value-of select="StaticPath"/><xsl:text disable-output-escaping="yes"><![CDATA[/flash/flash.gif') no-repeat #f5e9e9;
					border:1px solid #d0c1c1;border-radius:5px;min-height:50px;padding:11px 13px 11px 83px;
                    margin-right:5px;
				}
				.placeholder-text a{
					color:#a24c4c
				}
				h1, h4{
					color:#303030;
                    font-size:14px;
                    text-align:left;
                    margin: 0px;
				}
                p{
                    color:#464646;
                    font-size:11px;
                    font-weight:bold;
                    text-align:left;
                    margin:5px;
				}
				p a{
					color:#0768b3;text-decoration:underline;
				}
				]]></xsl:text>
        </style>

		<script type="text/javascript"> 
			<xsl:text disable-output-escaping="yes"><![CDATA[ 
			var Base64={_keyStr:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",decode:function(c){var a="",b,d,h,f,g,e=0;for(c=c.replace(/[^A-Za-z0-9\+\/\=]/g,"");e<c.length;)b=this._keyStr.indexOf(c.charAt(e++)),d=this._keyStr.indexOf(c.charAt(e++)),f=this._keyStr.indexOf(c.charAt(e++)),g=this._keyStr.indexOf(c.charAt(e++)),b=b<<2|d>>4,d=(d&15)<<4|f>>2,h=(f&3)<<6|g,a+=String.fromCharCode(b),64!=f&&(a+=String.fromCharCode(d)),64!=g&&(a+=String.fromCharCode(h));return a=Base64._utf8_decode(a)},_utf8_decode:function(c){for(var a="",b=0,d=c1=c2=0;b<c.length;)d=c.charCodeAt(b),128>d?(a+=String.fromCharCode(d),b++):191<d&&224>d?(c2=c.charCodeAt(b+1),a+=String.fromCharCode((d&31)<<6|c2&63),b+=2):(c2=c.charCodeAt(b+1),c3=c.charCodeAt(b+2),a+=String.fromCharCode((d&15)<<12|(c2&63)<<6|c3&63),b+=3);return a}};
			]]></xsl:text>
		</script>
        <script type="text/javascript">
          <xsl:text disable-output-escaping="yes"><![CDATA[ 
				
				STATIC_FOLDER	= './]]></xsl:text><xsl:value-of select="StaticPath"/><xsl:text disable-output-escaping="yes"><![CDATA[';
				ASSETS_FOLDER	= './]]></xsl:text><xsl:value-of select="DynamicPath"/><xsl:text disable-output-escaping="yes"><![CDATA['; ]]></xsl:text>
 
				<xsl:if test="MobileVersionCompabilityMode">
					COMPATIBLE = true;
				</xsl:if>
                BASIC_FIRST_PAGE = '<xsl:value-of select="FirstPageUrlHeader"/>';
				<xsl:if test="IsSeoEnabled">
					BASIC_FIRST_PAGE = '<xsl:value-of select="SEOFirstPageUrlHeader"/>';
					BASIC_URL =	'./<xsl:value-of select="DynamicPath"/><xsl:text disable-output-escaping="yes"><![CDATA[/basic-html/page-'+BASIC_FIRST_PAGE+'.html';]]></xsl:text>
				</xsl:if>
				<xsl:if test="not(IsSeoEnabled)">
					BASIC_DISABLED = true;
				</xsl:if>
				<xsl:if test="not(IsMobileEnabled)">
					MOBILE_DISABLED = true;
				</xsl:if>

				BG_COLOR = '<xsl:value-of select="BackColor" /><xsl:text disable-output-escaping="yes"><![CDATA[';
				
				PUBLICATION_NAME = Base64.decode("]]></xsl:text><xsl:value-of select="TitleEncoded"/><xsl:text disable-output-escaping="yes"><![CDATA[");
				
				PROJECT_GUID = ']]></xsl:text><xsl:value-of select="GUID"/><xsl:text disable-output-escaping="yes"><![CDATA[';
				
				]]></xsl:text>
				
				 <xsl:if test="ShopID">
					 <xsl:text disable-output-escaping="yes"><![CDATA[ 
						SHOP_ID = ']]></xsl:text><xsl:value-of select="ShopID"/><xsl:text disable-output-escaping="yes"><![CDATA[';
					]]></xsl:text>
				</xsl:if>
          <xsl:if test="IsDebug and IsDebug='true'">
            <xsl:text>DEBUG_MODE=true;</xsl:text>
          </xsl:if>
        </script>

        <xsl:if test="GoogleAnaliticsAccount">
          <xsl:choose>
            <xsl:when test="UseUniversalAnalytics">
              <script type="text/javascript">
                var startDate = new Date().getTime();
				function initAnalytics(version)
				{
					var domain = typeof window.location !== "undefined"? window.location.hostname: '';
					if (typeof universalAnalytics !== 'undefined'){
						universalAnalytics.init([],['<xsl:value-of select="GoogleAnaliticsAccount"/>'], domain, version, startDate, '<xsl:value-of select="ProductVersion"/>' <xsl:if test="IsIPAnonymizationForGAOn"><xsl:text>,true</xsl:text></xsl:if>);
					}
				}
              </script>
              <script type="text/javascript">
                <xsl:attribute name="src">
                  <xsl:value-of select="StaticPath"/>/common/analytics/ua.js</xsl:attribute>
                <xsl:text disable-output-escaping="yes"><![CDATA[ ]]></xsl:text>
              </script>
            </xsl:when>
          </xsl:choose>
        </xsl:if>
      </head>
      <body class="bodyStyle">
        <xsl:comment>
          ProductVersion=<xsl:value-of select="ProductVersion"/>
        </xsl:comment>
        <xsl:comment>
          FBID=<xsl:value-of select="FBID"/>
        </xsl:comment>
        <div id="container">
          <xsl:attribute name="style">
            <xsl:text>overflow: hidden; background:#</xsl:text>
            <xsl:value-of select="BackColor"/>
          </xsl:attribute>
          <div id="content" style="position: absolute; top: 0; bottom: 0; left: 0; right: 0;">
            <table style="position:absolute;top:0;left:0;right:0;bottom:0;height:100%;width:100%" id="book-container">
              <tr>
                <td style="vertical-align:middle;text-align:center">
                  <table class="flashbook-content">
                    <tr>
                      <td style="vertical-align:top;">
                        <a style="float: left; padding: 0 20px 0 0 ;" href="./index.html">
                          <xsl:text disable-output-escaping="yes"><![CDATA[<img src="./]]></xsl:text><xsl:value-of select="CoverFilePath"/><xsl:text disable-output-escaping="yes"><![CDATA[" style="padding:0 1px 1px 0;background:white;box-shadow:1px 1px 4px rgba(0,0,0,0.6)" alt="cover]]></xsl:text><xsl:value-of select="SSOId"/><xsl:text disable-output-escaping="yes"><![CDATA[">]]></xsl:text>
                        </a>
                      </td>
                      <td style="vertical-align:top;" id="error-text">

                        <h1>
                          <xsl:value-of select="Title"/>
                        </h1>
                        <p>
                            <xsl:value-of select="Description"/>
                        </p>

                        <p class="placeholder-text">
                          To maximize your viewing experience of this
                          <xsl:choose>
                            <xsl:when test="PublicationTypeUrl!=''">
                              <a>
                                <xsl:attribute name="target">
                                  <xsl:text>_blank</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="href">
                                  <xsl:value-of select="PublicationTypeUrl"/>
                                </xsl:attribute>
                                <xsl:value-of select="PublicationTypeName"/>
                              </a>
                            </xsl:when>
                            <xsl:otherwise>
                              <xsl:value-of select="PublicationTypeName"/>
                            </xsl:otherwise>
                          </xsl:choose>, we recommend installing <a href="http://get.adobe.com/flashplayer/" target="_blank">Adobe Flash Player Plugin</a>. This installation will only take a few moments. Should you experience any issues with installation, please contact your System Administrator.
                        </p>
                        <xsl:if test="IsSeoEnabled">
                          <p>
                            Besides, it's possible to <a href="./{DynamicPath}/basic-html/page-{SEOFirstPageUrlHeader}.html">view a simplified version of the book on any device</a>.
                          </p>
                        </xsl:if>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </div>
        </div>
		<script type="text/javascript">
          <xsl:text disable-output-escaping="yes"><![CDATA[
            (function(){function n(n){function t(t,r,e,u,i,o){for(;i>=0&&o>i;i+=n){var a=u?u[i]:i;e=r(e,t[a],a,t)}return e}return function(r,e,u,i){e=b(e,i,4);var o=!k(r)&&m.keys(r),a=(o||r).length,c=n>0?0:a-1;return arguments.length<3&&(u=r[o?o[c]:c],c+=n),t(r,e,u,o,c,a)}}function t(n){return function(t,r,e){r=x(r,e);for(var u=O(t),i=n>0?0:u-1;i>=0&&u>i;i+=n)if(r(t[i],i,t))return i;return-1}}function r(n,t,r){return function(e,u,i){var o=0,a=O(e);if("number"==typeof i)n>0?o=i>=0?i:Math.max(i+a,o):a=i>=0?Math.min(i+1,a):i+a+1;else if(r&&i&&a)return i=r(e,u),e[i]===u?i:-1;if(u!==u)return i=t(l.call(e,o,a),m.isNaN),i>=0?i+o:-1;for(i=n>0?o:a-1;i>=0&&a>i;i+=n)if(e[i]===u)return i;return-1}}function e(n,t){var r=I.length,e=n.constructor,u=m.isFunction(e)&&e.prototype||a,i="constructor";for(m.has(n,i)&&!m.contains(t,i)&&t.push(i);r--;)i=I[r],i in n&&n[i]!==u[i]&&!m.contains(t,i)&&t.push(i)}var u=this,i=u._,o=Array.prototype,a=Object.prototype,c=Function.prototype,f=o.push,l=o.slice,s=a.toString,p=a.hasOwnProperty,h=Array.isArray,v=Object.keys,y=c.bind,d=Object.create,g=function(){},m=function(n){return n instanceof m?n:this instanceof m?void(this._wrapped=n):new m(n)};"undefined"!=typeof exports?("undefined"!=typeof module&&module.exports&&(exports=module.exports=m),exports._=m):u._=m,m.VERSION="1.8.3";var b=function(n,t,r){if(void 0===t)return n;switch(null==r?3:r){case 1:return function(r){return n.call(t,r)};case 2:return function(r,e){return n.call(t,r,e)};case 3:return function(r,e,u){return n.call(t,r,e,u)};case 4:return function(r,e,u,i){return n.call(t,r,e,u,i)}}return function(){return n.apply(t,arguments)}},x=function(n,t,r){return null==n?m.identity:m.isFunction(n)?b(n,t,r):m.isObject(n)?m.matcher(n):m.property(n)};m.iteratee=function(n,t){return x(n,t,1/0)};var _=function(n,t){return function(r){var e=arguments.length;if(2>e||null==r)return r;for(var u=1;e>u;u++)for(var i=arguments[u],o=n(i),a=o.length,c=0;a>c;c++){var f=o[c];t&&void 0!==r[f]||(r[f]=i[f])}return r}},j=function(n){if(!m.isObject(n))return{};if(d)return d(n);g.prototype=n;var t=new g;return g.prototype=null,t},w=function(n){return function(t){return null==t?void 0:t[n]}},A=Math.pow(2,53)-1,O=w("length"),k=function(n){var t=O(n);return"number"==typeof t&&t>=0&&A>=t};m.each=m.forEach=function(n,t,r){t=b(t,r);var e,u;if(k(n))for(e=0,u=n.length;u>e;e++)t(n[e],e,n);else{var i=m.keys(n);for(e=0,u=i.length;u>e;e++)t(n[i[e]],i[e],n)}return n},m.map=m.collect=function(n,t,r){t=x(t,r);for(var e=!k(n)&&m.keys(n),u=(e||n).length,i=Array(u),o=0;u>o;o++){var a=e?e[o]:o;i[o]=t(n[a],a,n)}return i},m.reduce=m.foldl=m.inject=n(1),m.reduceRight=m.foldr=n(-1),m.find=m.detect=function(n,t,r){var e;return e=k(n)?m.findIndex(n,t,r):m.findKey(n,t,r),void 0!==e&&e!==-1?n[e]:void 0},m.filter=m.select=function(n,t,r){var e=[];return t=x(t,r),m.each(n,function(n,r,u){t(n,r,u)&&e.push(n)}),e},m.reject=function(n,t,r){return m.filter(n,m.negate(x(t)),r)},m.every=m.all=function(n,t,r){t=x(t,r);for(var e=!k(n)&&m.keys(n),u=(e||n).length,i=0;u>i;i++){var o=e?e[i]:i;if(!t(n[o],o,n))return!1}return!0},m.some=m.any=function(n,t,r){t=x(t,r);for(var e=!k(n)&&m.keys(n),u=(e||n).length,i=0;u>i;i++){var o=e?e[i]:i;if(t(n[o],o,n))return!0}return!1},m.contains=m.includes=m.include=function(n,t,r,e){return k(n)||(n=m.values(n)),("number"!=typeof r||e)&&(r=0),m.indexOf(n,t,r)>=0},m.invoke=function(n,t){var r=l.call(arguments,2),e=m.isFunction(t);return m.map(n,function(n){var u=e?t:n[t];return null==u?u:u.apply(n,r)})},m.pluck=function(n,t){return m.map(n,m.property(t))},m.where=function(n,t){return m.filter(n,m.matcher(t))},m.findWhere=function(n,t){return m.find(n,m.matcher(t))},m.max=function(n,t,r){var e,u,i=-1/0,o=-1/0;if(null==t&&null!=n){n=k(n)?n:m.values(n);for(var a=0,c=n.length;c>a;a++)e=n[a],e>i&&(i=e)}else t=x(t,r),m.each(n,function(n,r,e){u=t(n,r,e),(u>o||u===-1/0&&i===-1/0)&&(i=n,o=u)});return i},m.min=function(n,t,r){var e,u,i=1/0,o=1/0;if(null==t&&null!=n){n=k(n)?n:m.values(n);for(var a=0,c=n.length;c>a;a++)e=n[a],i>e&&(i=e)}else t=x(t,r),m.each(n,function(n,r,e){u=t(n,r,e),(o>u||1/0===u&&1/0===i)&&(i=n,o=u)});return i},m.shuffle=function(n){for(var t,r=k(n)?n:m.values(n),e=r.length,u=Array(e),i=0;e>i;i++)t=m.random(0,i),t!==i&&(u[i]=u[t]),u[t]=r[i];return u},m.sample=function(n,t,r){return null==t||r?(k(n)||(n=m.values(n)),n[m.random(n.length-1)]):m.shuffle(n).slice(0,Math.max(0,t))},m.sortBy=function(n,t,r){return t=x(t,r),m.pluck(m.map(n,function(n,r,e){return{value:n,index:r,criteria:t(n,r,e)}}).sort(function(n,t){var r=n.criteria,e=t.criteria;if(r!==e){if(r>e||void 0===r)return 1;if(e>r||void 0===e)return-1}return n.index-t.index}),"value")};var F=function(n){return function(t,r,e){var u={};return r=x(r,e),m.each(t,function(e,i){var o=r(e,i,t);n(u,e,o)}),u}};m.groupBy=F(function(n,t,r){m.has(n,r)?n[r].push(t):n[r]=[t]}),m.indexBy=F(function(n,t,r){n[r]=t}),m.countBy=F(function(n,t,r){m.has(n,r)?n[r]++:n[r]=1}),m.toArray=function(n){return n?m.isArray(n)?l.call(n):k(n)?m.map(n,m.identity):m.values(n):[]},m.size=function(n){return null==n?0:k(n)?n.length:m.keys(n).length},m.partition=function(n,t,r){t=x(t,r);var e=[],u=[];return m.each(n,function(n,r,i){(t(n,r,i)?e:u).push(n)}),[e,u]},m.first=m.head=m.take=function(n,t,r){return null==n?void 0:null==t||r?n[0]:m.initial(n,n.length-t)},m.initial=function(n,t,r){return l.call(n,0,Math.max(0,n.length-(null==t||r?1:t)))},m.last=function(n,t,r){return null==n?void 0:null==t||r?n[n.length-1]:m.rest(n,Math.max(0,n.length-t))},m.rest=m.tail=m.drop=function(n,t,r){return l.call(n,null==t||r?1:t)},m.compact=function(n){return m.filter(n,m.identity)};var S=function(n,t,r,e){for(var u=[],i=0,o=e||0,a=O(n);a>o;o++){var c=n[o];if(k(c)&&(m.isArray(c)||m.isArguments(c))){t||(c=S(c,t,r));var f=0,l=c.length;for(u.length+=l;l>f;)u[i++]=c[f++]}else r||(u[i++]=c)}return u};m.flatten=function(n,t){return S(n,t,!1)},m.without=function(n){return m.difference(n,l.call(arguments,1))},m.uniq=m.unique=function(n,t,r,e){m.isBoolean(t)||(e=r,r=t,t=!1),null!=r&&(r=x(r,e));for(var u=[],i=[],o=0,a=O(n);a>o;o++){var c=n[o],f=r?r(c,o,n):c;t?(o&&i===f||u.push(c),i=f):r?m.contains(i,f)||(i.push(f),u.push(c)):m.contains(u,c)||u.push(c)}return u},m.union=function(){return m.uniq(S(arguments,!0,!0))},m.intersection=function(n){for(var t=[],r=arguments.length,e=0,u=O(n);u>e;e++){var i=n[e];if(!m.contains(t,i)){for(var o=1;r>o&&m.contains(arguments[o],i);o++);o===r&&t.push(i)}}return t},m.difference=function(n){var t=S(arguments,!0,!0,1);return m.filter(n,function(n){return!m.contains(t,n)})},m.zip=function(){return m.unzip(arguments)},m.unzip=function(n){for(var t=n&&m.max(n,O).length||0,r=Array(t),e=0;t>e;e++)r[e]=m.pluck(n,e);return r},m.object=function(n,t){for(var r={},e=0,u=O(n);u>e;e++)t?r[n[e]]=t[e]:r[n[e][0]]=n[e][1];return r},m.findIndex=t(1),m.findLastIndex=t(-1),m.sortedIndex=function(n,t,r,e){r=x(r,e,1);for(var u=r(t),i=0,o=O(n);o>i;){var a=Math.floor((i+o)/2);r(n[a])<u?i=a+1:o=a}return i},m.indexOf=r(1,m.findIndex,m.sortedIndex),m.lastIndexOf=r(-1,m.findLastIndex),m.range=function(n,t,r){null==t&&(t=n||0,n=0),r=r||1;for(var e=Math.max(Math.ceil((t-n)/r),0),u=Array(e),i=0;e>i;i++,n+=r)u[i]=n;return u};var E=function(n,t,r,e,u){if(!(e instanceof t))return n.apply(r,u);var i=j(n.prototype),o=n.apply(i,u);return m.isObject(o)?o:i};m.bind=function(n,t){if(y&&n.bind===y)return y.apply(n,l.call(arguments,1));if(!m.isFunction(n))throw new TypeError("Bind must be called on a function");var r=l.call(arguments,2),e=function(){return E(n,e,t,this,r.concat(l.call(arguments)))};return e},m.partial=function(n){var t=l.call(arguments,1),r=function(){for(var e=0,u=t.length,i=Array(u),o=0;u>o;o++)i[o]=t[o]===m?arguments[e++]:t[o];for(;e<arguments.length;)i.push(arguments[e++]);return E(n,r,this,this,i)};return r},m.bindAll=function(n){var t,r,e=arguments.length;if(1>=e)throw new Error("bindAll must be passed function names");for(t=1;e>t;t++)r=arguments[t],n[r]=m.bind(n[r],n);return n},m.memoize=function(n,t){var r=function(e){var u=r.cache,i=""+(t?t.apply(this,arguments):e);return m.has(u,i)||(u[i]=n.apply(this,arguments)),u[i]};return r.cache={},r},m.delay=function(n,t){var r=l.call(arguments,2);return setTimeout(function(){return n.apply(null,r)},t)},m.defer=m.partial(m.delay,m,1),m.throttle=function(n,t,r){var e,u,i,o=null,a=0;r||(r={});var c=function(){a=r.leading===!1?0:m.now(),o=null,i=n.apply(e,u),o||(e=u=null)};return function(){var f=m.now();a||r.leading!==!1||(a=f);var l=t-(f-a);return e=this,u=arguments,0>=l||l>t?(o&&(clearTimeout(o),o=null),a=f,i=n.apply(e,u),o||(e=u=null)):o||r.trailing===!1||(o=setTimeout(c,l)),i}},m.debounce=function(n,t,r){var e,u,i,o,a,c=function(){var f=m.now()-o;t>f&&f>=0?e=setTimeout(c,t-f):(e=null,r||(a=n.apply(i,u),e||(i=u=null)))};return function(){i=this,u=arguments,o=m.now();var f=r&&!e;return e||(e=setTimeout(c,t)),f&&(a=n.apply(i,u),i=u=null),a}},m.wrap=function(n,t){return m.partial(t,n)},m.negate=function(n){return function(){return!n.apply(this,arguments)}},m.compose=function(){var n=arguments,t=n.length-1;return function(){for(var r=t,e=n[t].apply(this,arguments);r--;)e=n[r].call(this,e);return e}},m.after=function(n,t){return function(){return--n<1?t.apply(this,arguments):void 0}},m.before=function(n,t){var r;return function(){return--n>0&&(r=t.apply(this,arguments)),1>=n&&(t=null),r}},m.once=m.partial(m.before,2);var M=!{toString:null}.propertyIsEnumerable("toString"),I=["valueOf","isPrototypeOf","toString","propertyIsEnumerable","hasOwnProperty","toLocaleString"];m.keys=function(n){if(!m.isObject(n))return[];if(v)return v(n);var t=[];for(var r in n)m.has(n,r)&&t.push(r);return M&&e(n,t),t},m.allKeys=function(n){if(!m.isObject(n))return[];var t=[];for(var r in n)t.push(r);return M&&e(n,t),t},m.values=function(n){for(var t=m.keys(n),r=t.length,e=Array(r),u=0;r>u;u++)e[u]=n[t[u]];return e},m.mapObject=function(n,t,r){t=x(t,r);for(var e,u=m.keys(n),i=u.length,o={},a=0;i>a;a++)e=u[a],o[e]=t(n[e],e,n);return o},m.pairs=function(n){for(var t=m.keys(n),r=t.length,e=Array(r),u=0;r>u;u++)e[u]=[t[u],n[t[u]]];return e},m.invert=function(n){for(var t={},r=m.keys(n),e=0,u=r.length;u>e;e++)t[n[r[e]]]=r[e];return t},m.functions=m.methods=function(n){var t=[];for(var r in n)m.isFunction(n[r])&&t.push(r);return t.sort()},m.extend=_(m.allKeys),m.extendOwn=m.assign=_(m.keys),m.findKey=function(n,t,r){t=x(t,r);for(var e,u=m.keys(n),i=0,o=u.length;o>i;i++)if(e=u[i],t(n[e],e,n))return e},m.pick=function(n,t,r){var e,u,i={},o=n;if(null==o)return i;m.isFunction(t)?(u=m.allKeys(o),e=b(t,r)):(u=S(arguments,!1,!1,1),e=function(n,t,r){return t in r},o=Object(o));for(var a=0,c=u.length;c>a;a++){var f=u[a],l=o[f];e(l,f,o)&&(i[f]=l)}return i},m.omit=function(n,t,r){if(m.isFunction(t))t=m.negate(t);else{var e=m.map(S(arguments,!1,!1,1),String);t=function(n,t){return!m.contains(e,t)}}return m.pick(n,t,r)},m.defaults=_(m.allKeys,!0),m.create=function(n,t){var r=j(n);return t&&m.extendOwn(r,t),r},m.clone=function(n){return m.isObject(n)?m.isArray(n)?n.slice():m.extend({},n):n},m.tap=function(n,t){return t(n),n},m.isMatch=function(n,t){var r=m.keys(t),e=r.length;if(null==n)return!e;for(var u=Object(n),i=0;e>i;i++){var o=r[i];if(t[o]!==u[o]||!(o in u))return!1}return!0};var N=function(n,t,r,e){if(n===t)return 0!==n||1/n===1/t;if(null==n||null==t)return n===t;n instanceof m&&(n=n._wrapped),t instanceof m&&(t=t._wrapped);var u=s.call(n);if(u!==s.call(t))return!1;switch(u){case"[object RegExp]":case"[object String]":return""+n==""+t;case"[object Number]":return+n!==+n?+t!==+t:0===+n?1/+n===1/t:+n===+t;case"[object Date]":case"[object Boolean]":return+n===+t}var i="[object Array]"===u;if(!i){if("object"!=typeof n||"object"!=typeof t)return!1;var o=n.constructor,a=t.constructor;if(o!==a&&!(m.isFunction(o)&&o instanceof o&&m.isFunction(a)&&a instanceof a)&&"constructor"in n&&"constructor"in t)return!1}r=r||[],e=e||[];for(var c=r.length;c--;)if(r[c]===n)return e[c]===t;if(r.push(n),e.push(t),i){if(c=n.length,c!==t.length)return!1;for(;c--;)if(!N(n[c],t[c],r,e))return!1}else{var f,l=m.keys(n);if(c=l.length,m.keys(t).length!==c)return!1;for(;c--;)if(f=l[c],!m.has(t,f)||!N(n[f],t[f],r,e))return!1}return r.pop(),e.pop(),!0};m.isEqual=function(n,t){return N(n,t)},m.isEmpty=function(n){return null==n||(k(n)&&(m.isArray(n)||m.isString(n)||m.isArguments(n))?0===n.length:0===m.keys(n).length)},m.isElement=function(n){return!(!n||1!==n.nodeType)},m.isArray=h||function(n){return"[object Array]"===s.call(n)},m.isObject=function(n){var t=typeof n;return"function"===t||"object"===t&&!!n},m.each(["Arguments","Function","String","Number","Date","RegExp","Error"],function(n){m["is"+n]=function(t){return s.call(t)==="[object "+n+"]"}}),m.isArguments(arguments)||(m.isArguments=function(n){return m.has(n,"callee")}),"function"!=typeof/./&&"object"!=typeof Int8Array&&(m.isFunction=function(n){return"function"==typeof n||!1}),m.isFinite=function(n){return isFinite(n)&&!isNaN(parseFloat(n))},m.isNaN=function(n){return m.isNumber(n)&&n!==+n},m.isBoolean=function(n){return n===!0||n===!1||"[object Boolean]"===s.call(n)},m.isNull=function(n){return null===n},m.isUndefined=function(n){return void 0===n},m.has=function(n,t){return null!=n&&p.call(n,t)},m.noConflict=function(){return u._=i,this},m.identity=function(n){return n},m.constant=function(n){return function(){return n}},m.noop=function(){},m.property=w,m.propertyOf=function(n){return null==n?function(){}:function(t){return n[t]}},m.matcher=m.matches=function(n){return n=m.extendOwn({},n),function(t){return m.isMatch(t,n)}},m.times=function(n,t,r){var e=Array(Math.max(0,n));t=b(t,r,1);for(var u=0;n>u;u++)e[u]=t(u);return e},m.random=function(n,t){return null==t&&(t=n,n=0),n+Math.floor(Math.random()*(t-n+1))},m.now=Date.now||function(){return(new Date).getTime()};var B={"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#x27;","`":"&#x60;"},T=m.invert(B),R=function(n){var t=function(t){return n[t]},r="(?:"+m.keys(n).join("|")+")",e=RegExp(r),u=RegExp(r,"g");return function(n){return n=null==n?"":""+n,e.test(n)?n.replace(u,t):n}};m.escape=R(B),m.unescape=R(T),m.result=function(n,t,r){var e=null==n?void 0:n[t];return void 0===e&&(e=r),m.isFunction(e)?e.call(n):e};var q=0;m.uniqueId=function(n){var t=++q+"";return n?n+t:t},m.templateSettings={evaluate:new RegExp('<' + '%([\\s\\S]+?)%' + '>','g'),interpolate:new RegExp('<' + '%=([\\s\\S]+?)%' + '>','g'),escape:new RegExp('<' + '%-([\\s\\S]+?)%' + '>','g')};var K=/(.)^/,z={"'":"'","\\":"\\","\r":"r","\n":"n","\u2028":"u2028","\u2029":"u2029"},D=/\\|'|\r|\n|\u2028|\u2029/g,L=function(n){return"\\"+z[n]};m.template=function(n,t,r){!t&&r&&(t=r),t=m.defaults({},t,m.templateSettings);var e=RegExp([(t.escape||K).source,(t.interpolate||K).source,(t.evaluate||K).source].join("|")+"|$","g"),u=0,i="__p+='";n.replace(e,function(t,r,e,o,a){return i+=n.slice(u,a).replace(D,L),u=a+t.length,r?i+="'+\n((__t=("+r+"))==null?'':_.escape(__t))+\n'":e?i+="'+\n((__t=("+e+"))==null?'':__t)+\n'":o&&(i+="';\n"+o+"\n__p+='"),t}),i+="';\n",t.variable||(i="with(obj||{}){\n"+i+"}\n"),i="var __t,__p='',__j=Array.prototype.join,print=function(){__p+=__j.call(arguments,'');};\n"+i+"return __p;\n";try{var o=new Function(t.variable||"obj","_",i)}catch(a){throw a.source=i,a}var c=function(n){return o.call(this,n,m)},f=t.variable||"obj";return c.source="function("+f+"){\n"+i+"}",c},m.chain=function(n){var t=m(n);return t._chain=!0,t};var P=function(n,t){return n._chain?m(t).chain():t};m.mixin=function(n){m.each(m.functions(n),function(t){var r=m[t]=n[t];m.prototype[t]=function(){var n=[this._wrapped];return f.apply(n,arguments),P(this,r.apply(m,n))}})},m.mixin(m),m.each(["pop","push","reverse","shift","sort","splice","unshift"],function(n){var t=o[n];m.prototype[n]=function(){var r=this._wrapped;return t.apply(r,arguments),"shift"!==n&&"splice"!==n||0!==r.length||delete r[0],P(this,r)}}),m.each(["concat","join","slice"],function(n){var t=o[n];m.prototype[n]=function(){return P(this,t.apply(this._wrapped,arguments))}}),m.prototype.value=function(){return this._wrapped},m.prototype.valueOf=m.prototype.toJSON=m.prototype.value,m.prototype.toString=function(){return""+this._wrapped},"function"==typeof define&&define.amd&&define("underscore",[],function(){return m})}).call(this);
            var PublisherRouteAdapter=function(e){this.undefinedPageName=e};PublisherRouteAdapter.prototype.log=function(){},PublisherRouteAdapter.prototype.getBaseUrl=function(){return window.location.href.split("#")[0]},PublisherRouteAdapter.prototype.getEmbedUrl=function(e){switch(e){case"cover":return this.getBaseUrl().split("index.html")[0]+"files/assets/flash/page.html";case"spread":return this.getBaseUrl().split("index.html")[0]+"files/assets/flash/spread.html";default:return this.getBaseUrl()}},PublisherRouteAdapter.prototype.getLegacyMode=function(){return!0},PublisherRouteAdapter.prototype.getUndefinedPageName=function(){return this.undefinedPageName},PublisherRouteAdapter.prototype.translatePath=function(e){var t=e;t.indexOf("?")!==-1&&(t=t.substring(0,t.indexOf("?")));for(var r=!1;t.length&&"/\\$".indexOf(t[0])!=-1;)"$"===t[0]&&(r=!0),t=t.substring(1);var i={base:window.location.protocol+"//"+(r?this.viewer.bookModel.DataUrlNoSchemeDirect.replace("/data/","/metadata/"):this.viewer.bookModel.DataUrlNoSchemeDirect)+t,query:{}};i.query.dataVersion=this.viewer.bookModel.FilesVersion;var a=r?this._policies.Metadata:this._policies.Data;return i.query.Policy=a.Policy,i.query.Signature=a.Signature,i.query["Key-Pair-Id"]=a.KeyId,i},PublisherRouteAdapter.prototype.getCommonShareURL=function(e,t){return this.getBaseUrl()+e._buildHash(t?e.getPath():{})};
            !function(t,e){"use strict";if("undefined"!=typeof exports){var n=require("fb-html5/common/frameworks/underscore-min")._;t(global,exports,n)}else t(e,e,e._)}(function(t,e,n){"use strict";function a(t){this.callbacks=[],this.changing=!1,this.disabled=!1,this.adapter=t,this.legacyMode=t.getLegacyMode(),this.baseURL=this.adapter.getBaseUrl();var e=this;history&&history.pushState&&addEventListener("popstate",function(){e._urlChanged.call(e)}),"undefined"!=typeof addEventListener?addEventListener("hashchange",function(){e._urlChanged.call(e)}):attachEvent("onhashchange",function(){e._urlChanged.call(e)}),this.legacyMode&&this.callbacks.push(function(t){e.setPath(t)})}a.prototype.onChange=function(t){this.callbacks.push(t)},a.prototype._urlChanged=function(){if(!this.changing&&!this.disabled){var t=this.getPath();n.each(this.callbacks,function(e){e(t)})}},a.prototype._getPath=function(t,e){for(var a=e?t.substring(this.adapter.getBaseUrl().length):t,i=0;i<a.length;i++)if("/"!==a[i]||i===a.length-1){a=a.substring(i);break}"/"===a&&(a=""),a.indexOf("#")!==-1&&(a=a.substring(0,a.indexOf("#")));var o=null;a.indexOf("?")!==-1&&(o=a.substring(a.indexOf("?")+1),a=a.substring(0,a.indexOf("?")));var r=t.indexOf("#")!==-1?t.substring(t.indexOf("#")+1):"";if(this.legacyMode||r.length&&r.indexOf("&")===-1&&r.indexOf("=")===-1){var h=r.split("/");r="page="+encodeURIComponent(h[0]),h.length>1&&"z"!==h[1]&&(r+="&productID="+encodeURIComponent(h[1])),"z"===h[h.length-1]&&(r+="&zoom=z"),this.adapter.log("Legacy get path",r)}return o&&o.length?(o=n.object(n.map(o.split("&"),function(t){return n.map(t.split("="),decodeURIComponent)})),o={page:o.p,zoom:o.z&&"0"!==o.z?"z":void 0,search:o.search}):o={},r=r.length?n.object(n.map(r.split("&"),function(t){return n.map(t.split("="),decodeURIComponent)})):{},r=n.extend(o,r),r.page||(r.page=a),this.adapter.log("Get path",r),r},a.prototype.translatePath=function(t,e){var a=this;return n.isString(t)&&(t=[t]),n.chain(t).flatten().map(function(t){var i=a.adapter.translatePath(t);return e?i:i=i.base+"?"+n.map(i.query,function(t,e){return encodeURIComponent(e)+"="+encodeURIComponent(t)}).join("&")}).value()},a.prototype.getPath=function(){return this.disabled?-1:this._getPath(""+location,!0)},a.prototype.fireAll=function(){},a.prototype.getCommonShareUrl=function(t){return this.adapter.getCommonShareURL(this,t)},a.prototype.getEmbedUrl=function(t){return this.adapter.getEmbedUrl(t)},a.prototype.getFacebookShareUrl=function(t){var e=this.disabled?this.path:this.getPath(),n=[];t&&e.page&&n.push("p="+encodeURIComponent(e.page)),n.push("z="+("z"===e.zoom?1:0));var a=this.legacyMode?this.adapter.getBaseUrl():this._combinePath(this.adapter.getBaseUrl(),e.page?"/"+e.page:"");return a+"?"+n.join("&")},a.prototype._buildPath=function(t){var e=n.chain(t).pairs().filter(function(t){return"page"!==t[0]&&t[1]}).map(function(t){return encodeURIComponent(t[0])+"="+encodeURIComponent(t[1])}).value().join("&"),a=this._combinePath(this.adapter.getBaseUrl(),t.page||"")+(e.length?"#"+e:"");return a},a.prototype._buildHash=function(t){if(this.legacyMode){var e="";return t.productID&&(e+="/"+t.productID),t.zoom&&(e+="/z"),(e.length>0||t.page&&t.page!==this.adapter.getUndefinedPageName())&&(e="#"+(void 0===t.page?this.adapter.getUndefinedPageName():t.page)+e),e}return"#"+n.chain(t).pairs().filter(function(t){return t[1]}).map(function(t){return encodeURIComponent(t[0])+"="+encodeURIComponent(t[1])}).value().join("&")},a.prototype.setPath=function(t,e){if(e=e||!1,n.isArray(t)&&(t=t[0]),n.isString(t)&&(this.adapter.log("Set path call from legacy code with arg",t),t=this._getPath("#"+t,!1)),this.changing=!e,this.disabled)this.path=t;else{if(this.legacyMode)location.hash=this._buildHash(t);else if(history&&history.pushState){var a=this._buildPath(t);history.pushState(t,null,a),e&&this._urlChanged(),this.adapter.log("Set path/history",t,a)}else location.hash=this._buildHash(t),this.adapter.log("Set path/hash",t,location.hash);this.changing=!1}},a.prototype._combinePath=function(){var t=n.without(Array.prototype.slice.call(arguments),"");return 1===t.length?t[0]:n.map(t,function(t,e,a){if(n.isNumber(t))return t.toString(10);switch(e){case 0:return t.replace(/(\/$)/,"");case a.length-1:return t.replace(/(^\/)/,"");default:return t.replace(/(^\/|\/$)/,"")}}).join("/")},e.FbRoute=a},this);
            !function(e){"use strict";e.detectBrowser=function(){var e,i="undefined"!=typeof navigator?navigator.userAgent:"",o=function(e){var o=i.match(e);return o&&o.length>1&&o[1]||""},s=function(e){var o=i.match(e);return o&&o.length>2&&o[2]||""},t=o(/(ipod|iphone|ipad)/i).toLowerCase(),r=/like android/i.test(i),a=!r&&/android/i.test(i),n=/CrOS/.test(i),d=o(/edge\/(\d+(\.\d+)?)/i),m=o(/version\/(\d+(\.\d+)?)/i);/opera|opr/i.test(i)?e={name:"Opera",opera:!0,version:m||o(/(?:opera|opr)[\s\/](\d+(\.\d+)?)/i)}:/yabrowser/i.test(i)?e={name:"Yandex Browser",yandexbrowser:!0,version:m||o(/(?:yabrowser)[\s\/](\d+(\.\d+)?)/i)}:/windows phone/i.test(i)?(e={name:"Windows Phone",windowsphone:!0},d?(e.msedge=!0,e.version=d):(e.msie=!0,e.version=o(/iemobile\/(\d+(\.\d+)?)/i))):/msie|trident/i.test(i)?(e={name:"Internet Explorer",msie:!0,ie:!0,version:o(/(?:msie |rv:)(\d+(\.\d+)?)/i)},"7.0"===e.version&&/trident/i.test(i)&&(e.version="10.0")):n?e={name:"Chrome",chromeBook:!0,chrome:!0,version:o(/(?:chrome|crios|crmo)\/(\d+(\.\d+)?)/i)}:/chrome.+? edge/i.test(i)?e={name:"Microsoft Edge",msedge:!0,version:d}:/chrome|crios|crmo/i.test(i)?e={name:"Chrome",chrome:!0,version:o(/(?:chrome|crios|crmo)\/(\d+(\.\d+)?)/i)}:t?(e={name:"iphone"===t?"iPhone":"ipad"===t?"iPad":"iPod"},m&&(e.version=m)):/sailfish/i.test(i)?e={name:"Sailfish",sailfish:!0,version:o(/sailfish\s?browser\/(\d+(\.\d+)?)/i)}:/seamonkey\//i.test(i)?e={name:"SeaMonkey",seamonkey:!0,version:o(/seamonkey\/(\d+(\.\d+)?)/i)}:/firefox|iceweasel/i.test(i)?(e={name:"Firefox",firefox:!0,version:o(/(?:firefox|iceweasel)[ \/](\d+(\.\d+)?)/i)},/\((mobile|tablet);[^\)]*rv:[\d\.]+\)/i.test(i)&&(e.firefoxos=!0)):/silk/i.test(i)?e={name:"Amazon Silk",silk:!0,version:o(/silk\/(\d+(\.\d+)?)/i)}:a?e={name:"Android",version:m}:/phantom/i.test(i)?e={name:"PhantomJS",phantom:!0,version:o(/phantomjs\/(\d+(\.\d+)?)/i)}:/blackberry|\bbb\d+/i.test(i)||/rim\stablet/i.test(i)?e={name:"BlackBerry",blackberry:!0,version:m||o(/blackberry[\d]+\/(\d+(\.\d+)?)/i)}:/(web|hpw)os/i.test(i)?(e={name:"WebOS",webos:!0,version:m||o(/w(?:eb)?osbrowser\/(\d+(\.\d+)?)/i)},/touchpad\//i.test(i)&&(e.touchpad=!0)):e=/bada/i.test(i)?{name:"Bada",bada:!0,version:o(/dolfin\/(\d+(\.\d+)?)/i)}:/tizen/i.test(i)?{name:"Tizen",tizen:!0,version:o(/(?:tizen\s?)?browser\/(\d+(\.\d+)?)/i)||m}:/safari/i.test(i)?{name:"Safari",safari:!0,version:m}:{name:o(/^(.*)\/(.*) /),version:s(/^(.*)\/(.*) /)},e.windowsphone||e.msie||e.msedge||!/(apple)?webkit/i.test(i)?!e.opera&&/gecko\//i.test(i)&&(e.name=e.name||"Gecko",e.gecko=!0,e.version=e.version||o(/gecko\/(\d+(\.\d+)?)/i)):(e.name=e.name||"Webkit",e.webkit=!0,!e.version&&m&&(e.version=m)),e.windowsphone||e.msie||e.msedge||!a&&!e.silk?e.windowsphone||e.msie||e.msedge||!t||(e[t]=!0,e.ios=!0):e.android=!0;var h="";e.windowsphone?h=o(/windows phone (?:os)?\s?(\d+(\.\d+)*)/i):t?(h=o(/os (\d+([_\s]\d+)*) like mac os x/i),h=h.replace(/[_\s]/g,".")):a?h=o(/android[ \/-](\d+(\.\d+)*)/i):e.webos?h=o(/(?:web|hpw)os\/(\d+(\.\d+)*)/i):e.blackberry?h=o(/rim\stablet\sos\s(\d+(\.\d+)*)/i):e.bada?h=o(/bada\/(\d+(\.\d+)*)/i):e.tizen&&(h=o(/tizen[\/\s](\d+(\.\d+)*)/i)),h&&(e.osversion=h),this.browser=e,this.platform={},this.platform.name=i.match(/ip(?:ad|od|hone)/i)?"ios":i.match(/(?:msie 9)/i)?"wphone":(i.match(/(?:webos|silk|android|bada|symbian|palm|blackberry|bb10)/i)||window.navigator.platform.match(/mac|win|linux/i)||["other"])[0],this.platform.name&&(this.platform.name=this.platform.name.toLowerCase()),this.platform[this.platform.name]=!0,this.platform.version=0;var l;this.platform.mac?(l=i.match(/os\sx\s(\d+[\._]*\d*[\._]*\d*)/),this.platform.version="[object Array]"===Object.prototype.toString.call(l)&&l.length>1?l[1].split(/[\._]/):0):this.platform.ios?(l=i.match(/os\s(\d+_*\d*_*\d*)/),this.platform.version="[object Array]"===Object.prototype.toString.call(l)&&l.length>1?l[1].split("_"):0):this.platform.android&&(l=i.match(/android\s(\d+\.*\d*\.*\d*)/i),this.platform.version="[object Array]"===Object.prototype.toString.call(l)&&l.length>1?l[1].split("."):0),this.platform.bot=/(googlebot|bingbot|yandexbot|yahooseeker|duckduckbot)/i.test(i)}}(this);
			!function(e){function t(){if(window.XMLHttpRequest)return new XMLHttpRequest;try{return new ActiveXObject("MSXML2.XMLHTTP.6.0")}catch(e){try{return new ActiveXObject("MSXML2.XMLHTTP.3.0")}catch(e){return alert("This browser is not AJAX enabled."),null}}}function i(){"use strict";this.initialBody=e.document.body.innerHTML,this.initialBodyClass=e.document.body.getAttribute("class"),e.document.body.innerHTML="",e.document.body.setAttribute("class",""),this.isMobile=!1,this.isFlash=!1,this.isBasic=!1,this.ua=navigator.userAgent.toLowerCase();var t="undefined",i="object",o="Shockwave Flash",s="ShockwaveFlash.ShockwaveFlash",r="application/x-shockwave-flash",c=[0,0,0],l=navigator.platform.toLowerCase();this.ua.match(/(opera|ie|firefox|chrome|version)[\s\/:]([\w\d\.]+)?.*?(safari|version[\s\/:]([\w\d\.]+)|$)/)||[null,"unknown",0];if(typeof navigator.plugins!==t&&typeof navigator.plugins[o]===i){var p=navigator.plugins[o].description;if(p&&(typeof navigator.mimeTypes==t||!navigator.mimeTypes[r]||navigator.mimeTypes[r].enabledPlugin)){var d=!1;p=p.replace(/^.*\s+(\S+\s+\S+$)/,"$1"),c[0]=parseInt(p.replace(/^(.*)\..*$/,"$1"),10),c[1]=parseInt(p.replace(/^.*\.(.*)\s.*$/,"$1"),10),c[2]=/[a-zA-Z]/.test(p)?parseInt(p.replace(/^.*[a-zA-Z]+(.*)$/,"$1"),10):0}}else if(typeof window.ActiveXObject!==t)try{var h=new ActiveXObject(s);h&&(p=h.GetVariable("$version"),p&&(d=!0,p=p.split(" ")[1].split(","),c=[parseInt(p[0],10),parseInt(p[1],10),parseInt(p[2],10)]))}catch(u){}switch(0===c[0]&&0===c[1]&&0===c[2]?this.flash=!1:this.flash=!0,this.device={},this.device.name=this.ua.match(/ipad/)?"ipad":this.ua.match(/ipad/)?"ipad":this.ua.match(/iphone/)?"iphone":this.ua.match(/android/)?"android":l.match(/mac|win|linux/)?"pc":"other",this.device[this.device.name]=!0,this.device.version=this.platform.version[0],this.device.type=this.ua.match(/(mobile\ssafari)|iphone|ipod/)?"mobile":"tablet",n.v){case"basic":this.isBasic=!0;break;case"mobile":this.isMobile=!0;break;case"flash":this.isFlash=!0}var f=this.platform.ios&&a()===-1,m=a()===-1&&this.platform.android&&(parseInt(this.platform.version[0],10)>4||4===parseInt(this.platform.version[0],10)&&parseInt(this.platform.version[1],10)>=1),v=f&&this.browser.safari&&a()===-1,y=m&&this.browser.chrome&&a()===-1;this.isBasic||this.isMobile||this.isFlash||((f||m)&&"undefined"==typeof e.COMPATIBLE?this.isMobile=!0:v||y?this.isMobile=!0:this.flash&&this.device.pc&&(c[0]>10||10===c[0]&&c[1]>=3)?this.isFlash=!0:this.isBasic=!0),this._loadVersion()}function a(){var e=-1;if("Microsoft Internet Explorer"==navigator.appName){var t=navigator.userAgent,i=new RegExp("MSIE ([0-9]{1,}[.0-9]{0,})");null!=i.exec(t)&&(e=parseFloat(RegExp.$1))}else if("Netscape"==navigator.appName){var t=navigator.userAgent,i=new RegExp("Trident/.*rv:([0-9]{1,}[.0-9]{0,})");null!=i.exec(t)&&(e=parseFloat(RegExp.$1))}return e}var o=function(e){e=e||{};var i=e.type||"GET",a=e.url,o=e.data,n=t();try{n.open(i,a,!0),n.onreadystatechange=function(){var t=!1,i=n.responseText;if("json"===e.dataType)try{i=JSON.parse(i)}catch(a){t=!0}!t&&n.status>=200&&n.status<300?e.success&&e.success(i,n.statusText,n):e.error&&e.error(n)},n.onerror=n.onabort=function(){e.error&&e.error(n)},n.send(o)}catch(s){e.error&&e.error(n)}return n},n=function(){var e={},t=window.location.search.substring(1);if(""===t)return e;for(var i=t.split("&"),a=0;a<i.length;a++)if(""!==i[a]){var o=i[a].split("=");if("undefined"==typeof e[o[0]])e[o[0]]=o[1];else if("string"==typeof e[o[0]]){var n=[e[o[0]],o[1]];e[o[0]]=n}else e[o[0]].push(o[1])}return e}();i.prototype=new detectBrowser,i.prototype.isNaN=function(e){return this.isNumber(e)&&e!=+e},i.prototype.isNumber=function(e){return"[object Number]"==Object.prototype.toString.call(e)},i.prototype._getHash=function(){var t=e.location.href.match(/#(.*)$/);return t?t[1]:""},i.prototype._loadVersion=function(){var t=this._getHash(),i=/[^A-Za-z0-9\(\)\[\]@.,$€;`~! _-]/g,a=t.split("/"),s=decodeURIComponent(n.p||n.page||a[0]||e.BASIC_FIRST_PAGE);s.match(i)&&(s=e.BASIC_FIRST_PAGE);var r=function(e){return"z"==e||"zoomed"==e},c=n.z||n.zoomed||a.length>1&&r(a[1]),l=decodeURIComponent(n.id||(a.length>2?a[2]:a.length>1&&!r(a[1])?a[1]:""));if(""!==l&&l.match(i)&&(l=""),this.isBasic){if("undefined"!=typeof e.BASIC_DISABLED&&e.BASIC_DISABLED)e.document.body.innerHTML=this.initialBody,e.document.body.setAttribute("class",this.initialBodyClass);else if("undefined"!=typeof e.BASIC_URL){var p=e.BASIC_URL;if(s!=e.BASIC_FIRST_PAGE)var p=e.BASIC_URL.replace("page-"+e.BASIC_FIRST_PAGE,"page-"+s);"basic"===n.v&&(p+="?v=basic"),o({type:"OPTIONS",url:p,success:function(t,i,a){e.location=p},error:function(t){e.location=e.BASIC_URL}})}}else{if(this.isMobile&&"undefined"!=typeof e.MOBILE_DISABLED)return e.document.body.innerHTML='<p style="width: 100%; position: absolute; text-align: center; top: 49%; color: #888">Unfortunately, no mobile version is available for this publication.</p>',void e.document.body.setAttribute("class",this.initialBodyClass);delete n.p,delete n.page,delete n.z,delete n.zoomed,delete n.id;var t="";s&&(t="#"+encodeURIComponent(s),c&&(t+="/z"),l&&(t+="/"+encodeURIComponent(l)),"undefined"!=typeof e.BASIC_FIRST_PAGE&&t=="#"+e.BASIC_FIRST_PAGE&&(t=""));var d="";for(var h in n)d+=h+"="+n[h]+"&";""!==d&&(d="?"+d,"&"===d.slice(-1)&&(d=d.slice(0,-1))),(""!==window.location.search&&d!==window.location.search||""!==t)&&window.location.replace(e.location.protocol+"//"+e.location.host+e.location.pathname+d+t);var u=document.createElement("script");u.type="text/javascript",u.charset="utf-8",u.async=!1,u.src=this.isFlash?e.STATIC_FOLDER+"/common/loader/flash-init.js":this.isMobile?e.STATIC_FOLDER+"/common/loader/mobile-init.js":"";var f="undefined"!=typeof e.document.head?e.document.head:e.document.getElementsByTagName("head")[0];f.appendChild(u)}},e.detector=new i;var s=function(t,i){if("undefined"!=typeof e.unorm)i.call(i,unorm.nfc(t));else{var a=document.createElement("script");a.type="text/javascript",a.charset="utf-8",a.async=!1,a.addEventListener("load",function(){i.call(i,unorm.nfc(t))}),a.src=e.STATIC_FOLDER+"/common/loader/nfc.js";var o="undefined"!=typeof e.document.head?e.document.head:e.document.getElementsByTagName("head")[0];o.appendChild(a)}};e.searchNormalize=s}(this);
			this.fbRouter=new this.FbRoute(new PublisherRouteAdapter(this.BASIC_FIRST_PAGE));
		  ]]></xsl:text>
          <xsl:if test="hasYoutubeVideo">
              HAS_YOUTUBE_VIDEO = true;
          </xsl:if>
            <xsl:if test="hasVimeoVideo">
                HAS_VIMEO_VIDEO = true;
            </xsl:if>
        </script>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
