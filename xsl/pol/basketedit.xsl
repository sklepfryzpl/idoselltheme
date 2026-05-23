<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop"><!-- (envelope, 6847e5df5855c6.98698228.8)-->
	<iaixsl:variable name="priceTypeVat"><iaixsl:if test="(/shop/basket/@login and not(/shop/client_data/@uses_vat='false') or not(/shop/basket/@login)) and not(/shop/contact/owner/@vat_registered = 'false') and not(/shop/page/@price_type = 'hidden')">true</iaixsl:if></iaixsl:variable>
	<iaixsl:variable name="priceTypeText"><iaixsl:if test="not($priceTypeVat = '')"><iaixsl:choose><iaixsl:when test="/shop/page/@price_type = 'net'"> netto</iaixsl:when><iaixsl:when test="/shop/page/@price_type = 'gross'"> brutto</iaixsl:when></iaixsl:choose></iaixsl:if></iaixsl:variable>
	<iaixsl:variable name="meta_langcode_iso639">pol</iaixsl:variable>
	<iaixsl:variable name="html5_layout">1</iaixsl:variable>
	<iaixsl:variable name="asyncJS"/>
	<iaixsl:variable name="themeColor">#0090f6</iaixsl:variable>
	<iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
		<iaixsl:text disable-output-escaping="yes">&lt;html lang=&quot;</iaixsl:text><iaixsl:value-of select="/shop/language/option[@selected = 'true']/@name"/><iaixsl:text disable-output-escaping="yes">&quot;</iaixsl:text><iaixsl:text disable-output-escaping="yes"> class=&quot;</iaixsl:text><iaixsl:if test="(/shop/page/@type = 'prepaid' and /shop/page/prepaid/details/@msg = 'order') or /shop/page/@type = 'order-nonstandardized' or /shop/page/@type = 'order1' or /shop/page/@type = 'order2' or /shop/page/@type = 'pickup-sites' or /shop/page/@type = 'place-order' or (/shop/page/@type = 'login' and /shop/page/login/response/@type = 'no login') or /shop/page/@type = 'client-new' or /shop/page/@type = 'returns-open' or /shop/page/@type = 'rma-open' or (/shop/page/@type = 'return' and /shop/shopMfaSettings and contains(/shop/navigation/current/@curr_url, 'mfa'))"><iaixsl:text disable-output-escaping="yes">order_process </iaixsl:text></iaixsl:if><iaixsl:if test="/shop/page/@type = 'place-order'"> --place-order-page </iaixsl:if><iaixsl:if test="/shop/page/@type = 'return'"><iaixsl:value-of select="/shop/page/return/@type"/><iaixsl:text disable-output-escaping="yes"> </iaixsl:text></iaixsl:if><iaixsl:if test="/shop/basket/@toshippingfree != ''"><iaixsl:text disable-output-escaping="yes">--freeShipping </iaixsl:text></iaixsl:if><iaixsl:if test="/shop/rebatecode/@code"><iaixsl:text disable-output-escaping="yes">--rabateCode </iaixsl:text></iaixsl:if><iaixsl:if test="not($priceTypeVat = '')"><iaixsl:text disable-output-escaping="yes">--vat --</iaixsl:text><iaixsl:value-of select="/shop/page/@price_type"/><iaixsl:text disable-output-escaping="yes"> </iaixsl:text></iaixsl:if><iaixsl:if test="/shop/mask/prices/@hide_percentage_discounts = 'true'"><iaixsl:text disable-output-escaping="yes">--hide-percentage-discounts </iaixsl:text></iaixsl:if><iaixsl:text disable-output-escaping="yes">&quot;</iaixsl:text><iaixsl:text disable-output-escaping="yes"> &gt;</iaixsl:text>
		<iaixsl:if test="$meta_langcode_iso639"><iaixsl:attribute name="lang"><iaixsl:value-of select="$meta_langcode_iso639"/></iaixsl:attribute></iaixsl:if>
		<head>
			
			
			<iaixsl:if test="/shop/page/@type = 'main' and count(commercial_banner/link[not(html)]) &gt; 0">
				<iaixsl:choose>
					<iaixsl:when test="/shop/commercial_banner/link[1]/image">
						<link rel="preload" as="image" fetchpriority="high">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/commercial_banner/link[1]/image/@src"/></iaixsl:attribute>
						</link>
					</iaixsl:when>
					<iaixsl:otherwise>
						<link rel="preload" as="image" fetchpriority="high" media="(max-width: 756.9px)">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/commercial_banner/link[1]/image_mobile/@src"/></iaixsl:attribute>
						</link>
						<link rel="preload" as="image" fetchpriority="high" media="(min-width: 757px) and (max-width: 978.9px)">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/commercial_banner/link[1]/image_tablet/@src"/></iaixsl:attribute>
						</link>
						<link rel="preload" as="image" fetchpriority="high" media="(min-width: 979px)">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/commercial_banner/link[1]/image_desktop/@src"/></iaixsl:attribute>
						</link>
					</iaixsl:otherwise>
				</iaixsl:choose>
			</iaixsl:if>
			
			<iaixsl:if test="/shop/page/@type = 'search' and /shop/page/products/display_mode/@active = 'normal' and /shop/page/products/product">
				<link rel="preload" as="image" fetchpriority="high" media="(max-width: 420px)">
					<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/products/product[1]/icon_small"/></iaixsl:attribute>
				</link>
				<link rel="preload" as="image" fetchpriority="high" media="(min-width: 420.1px)">
					<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/products/product[1]/icon"/></iaixsl:attribute>
				</link>
				<iaixsl:if test="/shop/page/products/product[2]">
					<link rel="preload" as="image" fetchpriority="high" media="(max-width: 420px)">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/products/product[2]/icon_small"/></iaixsl:attribute>
					</link>
					<link rel="preload" as="image" fetchpriority="high" media="(min-width: 420.1px)">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/products/product[2]/icon"/></iaixsl:attribute>
					</link>
				</iaixsl:if>
			</iaixsl:if>
			
			<iaixsl:if test="/shop/page/@type = 'projector'">
				<link rel="preload" as="image" fetchpriority="high">
					<iaixsl:choose>
						<iaixsl:when test="count(/shop/page/projector/product/enclosures/images/enclosure) &gt; 0">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[1]/@medium"/></iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]/enclosures/images/enclosure[1]/@medium"/></iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/icon"/></iaixsl:attribute>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</link>
			</iaixsl:if>
			<meta name="viewport" content="initial-scale = 1.0, maximum-scale = 5.0, width=device-width, viewport-fit=cover"/>
			<meta name="format-detection" content="telephone=no"/>
			<iaixsl:variable name="meta_breadcrumb">
				<iaixsl:if test="(page/@type='search') or (page/@type='navigation') or (page/@type='projector')">
					<iaixsl:choose>
						<iaixsl:when test="page/@type='navigation'">
							<iaixsl:for-each select="bc/item"><iaixsl:value-of select="@title"/> | </iaixsl:for-each>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:for-each select="bc/item[not(position() = last())]"><iaixsl:value-of select="@title"/> | </iaixsl:for-each>
						</iaixsl:otherwise>
					</iaixsl:choose>
					
				</iaixsl:if>
			</iaixsl:variable>
			<iaixsl:variable name="meta_breadcrumb_full">
				<iaixsl:if test="(page/@type='search') or (page/@type='navigation') or (page/@type='projector')">
					<iaixsl:for-each select="bc/item"><iaixsl:value-of select="@title"/> | </iaixsl:for-each>
					
				</iaixsl:if>
			</iaixsl:variable>
			<iaixsl:variable name="meta_subcategories">
				<iaixsl:if test="((page/@type='search') or (page/@type='navigation') or (page/@type='projector')) and (/shop/navigation/current/@ni)">
					<iaixsl:for-each select="navigation/descendant-or-self::item[@ni=/shop/navigation/current/@ni]/item"><iaixsl:value-of select="@name"/>, </iaixsl:for-each>
				</iaixsl:if>
			</iaixsl:variable>
			<iaixsl:variable name="meta_variable_emulate_ie">IE=edge</iaixsl:variable>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
			<iaixsl:if test="$meta_variable_emulate_ie">
				<meta http-equiv="X-UA-Compatible"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_emulate_ie"/></iaixsl:attribute></meta>
			</iaixsl:if>
			<iaixsl:choose>
				<iaixsl:when test="page/@search_title">
					<title><iaixsl:value-of select="page/@search_title" disable-output-escaping="yes"/></title>
				</iaixsl:when>
				<iaixsl:when test="page/@projector_title">
					<title><iaixsl:value-of select="page/@projector_title" disable-output-escaping="yes"/> | <iaixsl:value-of select="$meta_breadcrumb_full" disable-output-escaping="yes"/><iaixsl:value-of select="page/@title" disable-output-escaping="yes"/></title>
				</iaixsl:when>
				<iaixsl:otherwise>
					<title><iaixsl:value-of select="$meta_breadcrumb" disable-output-escaping="yes"/><iaixsl:value-of select="page/@title" disable-output-escaping="yes"/><iaixsl:if test="page/@title2"> | <iaixsl:value-of select="page/@title2" disable-output-escaping="yes"/></iaixsl:if></title>
				</iaixsl:otherwise>
			</iaixsl:choose>
			<iaixsl:choose>
				<iaixsl:when test="page/@search_keywords">
					<meta name="keywords"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@search_keywords"/></iaixsl:attribute></meta>
				</iaixsl:when>
				<iaixsl:when test="page/@projector_keywords">
					<meta name="keywords"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@projector_keywords"/> | <iaixsl:value-of select="$meta_breadcrumb_full"/><iaixsl:value-of select="$meta_subcategories"/><iaixsl:value-of select="page/@keywords"/></iaixsl:attribute></meta>
				</iaixsl:when>
				<iaixsl:when test="not(page/@keywords='')">
					<meta name="keywords">
						<iaixsl:attribute name="content">
							<iaixsl:value-of select="$meta_breadcrumb_full"/>
							<iaixsl:value-of select="$meta_subcategories"/>
							<iaixsl:choose>
								<iaixsl:when test="not(page/@keywords='') ">
									<iaixsl:value-of select="page/@keywords"/>
								</iaixsl:when>
								<iaixsl:otherwise>

								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:attribute>
					</meta>
				</iaixsl:when>
				<iaixsl:otherwise>
				</iaixsl:otherwise>
			</iaixsl:choose>
			<iaixsl:choose>
				<iaixsl:when test="page/@search_description">
					<meta name="description"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@search_description"/></iaixsl:attribute></meta>
				</iaixsl:when>
				<iaixsl:when test="page/@projector_description">
					<meta name="description"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@projector_description"/> | <iaixsl:value-of select="$meta_breadcrumb_full"/><iaixsl:value-of select="$meta_subcategories"/><iaixsl:value-of select="page/@description"/></iaixsl:attribute></meta>
				</iaixsl:when>
				<iaixsl:otherwise>
					<meta name="description"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_breadcrumb"/><iaixsl:value-of select="$meta_subcategories"/><iaixsl:value-of select="page/@description"/></iaixsl:attribute></meta>
				</iaixsl:otherwise>
			</iaixsl:choose>

			<link rel="shortcut icon" href="/gfx/pol/favicon.ico" />
			<iaixsl:choose>
				<iaixsl:when test="/shop/mask/@scheme_color">
					<meta name="theme-color"><iaixsl:attribute name="content"><iaixsl:value-of select="/shop/mask/@scheme_color"/></iaixsl:attribute></meta>
					<meta name="msapplication-navbutton-color"><iaixsl:attribute name="content"><iaixsl:value-of select="/shop/mask/@scheme_color"/></iaixsl:attribute></meta>
					<meta name="apple-mobile-web-app-status-bar-style"><iaixsl:attribute name="content"><iaixsl:value-of select="/shop/mask/@scheme_color"/></iaixsl:attribute></meta>
				</iaixsl:when>
				<iaixsl:when test="$themeColor">
					<meta name="theme-color"><iaixsl:attribute name="content"><iaixsl:value-of select="$themeColor"/></iaixsl:attribute></meta>
					<meta name="msapplication-navbutton-color"><iaixsl:attribute name="content"><iaixsl:value-of select="$themeColor"/></iaixsl:attribute></meta>
					<meta name="apple-mobile-web-app-status-bar-style"><iaixsl:attribute name="content"><iaixsl:value-of select="$themeColor"/></iaixsl:attribute></meta>
				</iaixsl:when>
			</iaixsl:choose>

			<iaixsl:choose>
				<iaixsl:when test="$asyncJS">
					<iaixsl:choose>
						<iaixsl:when test="/shop/@preview &gt; 0">
							<link rel="preload stylesheet" as="style"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
						</iaixsl:when>
						<iaixsl:otherwise>
							
						</iaixsl:otherwise>
					</iaixsl:choose>
				</iaixsl:when>
				<iaixsl:otherwise>
					<iaixsl:choose>
						<iaixsl:when test="/shop/@preview &gt; 0">
							<link rel="preload stylesheet" as="style"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
						</iaixsl:when>
						<iaixsl:otherwise>
							
						</iaixsl:otherwise>
					</iaixsl:choose>
				</iaixsl:otherwise>
			</iaixsl:choose>

      
      
<iaixsl:choose>
    <iaixsl:when test="/shop/@preview &gt; 0"><link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/common_style.css?r=779111371</iaixsl:attribute></link></iaixsl:when>
    <iaixsl:otherwise><link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/common_style.css.gzip?r=779111371</iaixsl:attribute></link></iaixsl:otherwise>
</iaixsl:choose>


			
			<iaixsl:if test="/shop/page/@type = 'projector' and (count(/shop/page/projector/product/enclosures/images/enclosure) &gt; 0 or /shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon])">
				<style>
					<iaixsl:choose>
						<iaixsl:when test="count(/shop/page/projector/product/enclosures/images/enclosure) &gt; 0">
							#photos_slider[data-skeleton] .photos__link:before {
								padding-top: calc(min((<iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[1]/@medium_height"/>/<iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[1]/@medium_width"/> * 100%), <iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[1]/@medium_height"/>px));
							}
							@media (min-width: 979px) {.photos__slider[data-skeleton] .photos__figure:not(.--nav):first-child .photos__link {
								max-height: <iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[1]/@medium_height"/>px;
							}}
						</iaixsl:when>
						<iaixsl:when test="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
							#photos_slider[data-skeleton] .photos__link:before {
								padding-top: calc(min(<iaixsl:value-of select="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]/enclosures/images/enclosure[1]/@medium_height"/>/<iaixsl:value-of select="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]/enclosures/images/enclosure[1]/@medium_width"/> * 100%), <iaixsl:value-of select="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]/enclosures/images/enclosure[1]/@medium_height"/>px));
							}
							@media (min-width: 979px) {.photos__slider[data-skeleton] .photos__figure:not(.--nav):first-child .photos__link {
								max-height: <iaixsl:value-of select="/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]/enclosures/images/enclosure[1]/@medium_height"/>px;
							}}
						</iaixsl:when>
					</iaixsl:choose>
				</style>
			</iaixsl:if>
			<script>var app_shop={urls:{prefix:&apos;data=&quot;/gfx/&apos;.replace(&apos;data=&quot;&apos;, &apos;&apos;)+&apos;<iaixsl:value-of select="language/@id"/>/&apos;,graphql:&apos;/graphql/v1/&apos;},vars:{meta:{viewportContent:&apos;initial-scale = 1.0, maximum-scale = 5.0, width=device-width, viewport-fit=cover&apos;},priceType:&apos;<iaixsl:choose><iaixsl:when test="/shop/page/@price_type = 'hidden'">gross</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="/shop/page/@price_type"/></iaixsl:otherwise></iaixsl:choose>&apos;,priceTypeVat:<iaixsl:choose><iaixsl:when test="not($priceTypeVat = '')">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,productDeliveryTimeAndAvailabilityWithBasket:false,geoipCountryCode:&apos;<iaixsl:value-of select="/shop/@geoip_country_code"/>&apos;,fairShopLogo: { enabled: <iaixsl:choose><iaixsl:when test="/shop/@trust_level = '1'">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>, image: &apos;<iaixsl:choose><iaixsl:when test="/shop/@trust_level = '1'">/gfx/standards/superfair_light.svg</iaixsl:when><iaixsl:otherwise>/gfx/standards/safe_light.svg</iaixsl:otherwise></iaixsl:choose>&apos;},currency:{id:&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@id"/>&apos;,symbol:&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>&apos;,country:&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@country"/>&apos;,format:&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_format"/>&apos;,beforeValue:<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_before_value"/>,space:<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_space"/>,decimalSeparator:&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_decimal_separator"/>&apos;,groupingSeparator:&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_grouping_separator"/>&apos;},language:{id:&apos;<iaixsl:value-of select="/shop/language/option[@selected='true']/@id"/>&apos;,symbol:&apos;<iaixsl:value-of select="/shop/language/option[@selected='true']/@name"/>&apos;,name:&apos;<iaixsl:value-of select="/shop/language/@name"/>&apos;},omnibus:{enabled:<iaixsl:choose><iaixsl:when test="/shop/@omnibus = 1">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,rebateCodeActivate:<iaixsl:choose><iaixsl:when test="/shop/rebatecode/@activate_omnibus = 'true'">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,hidePercentageDiscounts:<iaixsl:choose><iaixsl:when test="/shop/mask/prices/@hide_percentage_discounts = 'true'">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,},},txt:{priceTypeText:&apos;<iaixsl:value-of select="$priceTypeText"/>&apos;,},fn:{},fnrun:{},files:[],graphql:{}};const getCookieByName=(name)=&gt;{const value=`; ${document.cookie}`;const parts = value.split(`; ${name}=`);if(parts.length === 2) return parts.pop().split(&apos;;&apos;).shift();return false;};if(getCookieByName(&apos;freeeshipping_clicked&apos;)){document.documentElement.classList.remove(&apos;--freeShipping&apos;);}if(getCookieByName(&apos;rabateCode_clicked&apos;)){document.documentElement.classList.remove(&apos;--rabateCode&apos;);}function hideClosedBars(){const closedBarsArray=JSON.parse(localStorage.getItem(&apos;closedBars&apos;))||[];if(closedBarsArray.length){const styleElement=document.createElement(&apos;style&apos;);styleElement.textContent=`${closedBarsArray.map((el)=&gt;`#${el}`).join(&apos;,&apos;)}{display:none !important;}`;document.head.appendChild(styleElement);}}hideClosedBars();</script>
			<iaixsl:variable name="projector_script_bottom">true</iaixsl:variable>
			<iaixsl:if test="not(/shop/page/@type = 'main') and not(/shop/page/@type = 'search') and not(/shop/page/@type = 'place-order') and not(/shop/page/@type = 'noproduct') and not($projector_script_bottom and /shop/page/@type = 'projector')">
				<script src="/gfx/pol/jquery.js.gzip?r=1778592114"></script>
				<iaixsl:choose>
					<iaixsl:when test="/shop/@preview &gt; 0">
						<script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
					</iaixsl:when>
					<iaixsl:otherwise>
						
					</iaixsl:otherwise>
				</iaixsl:choose>
				
				
<iaixsl:choose>
    <iaixsl:when test="/shop/@preview &gt; 0"><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/common_shop.js?r=1778592114</iaixsl:attribute></script></iaixsl:when>
    <iaixsl:otherwise><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/common_shop.js.gzip?r=1778592114</iaixsl:attribute></script></iaixsl:otherwise>
</iaixsl:choose>

				
				
			</iaixsl:if>
			
			
			<iaixsl:text disable-output-escaping="yes"></iaixsl:text>
			<iaixsl:variable name="meta_variable_expires">never</iaixsl:variable>
			<iaixsl:variable name="meta_variable_distribution">global</iaixsl:variable>
			<iaixsl:variable name="meta_variable_rating">general</iaixsl:variable>
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/@meta_robots">
					<meta name="robots">
						<iaixsl:attribute name="content"><iaixsl:value-of select="/shop/page/@meta_robots"/></iaixsl:attribute>
					</meta>
				</iaixsl:when>
				<iaixsl:otherwise>
					<meta name="robots">
						<iaixsl:attribute name="content">INDEX,FOLLOW</iaixsl:attribute>
					</meta>
				</iaixsl:otherwise>
			</iaixsl:choose>
			<iaixsl:if test="not($html5_layout)">
				<iaixsl:if test="$meta_variable_expires">
					<meta name="expires"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_expires"/></iaixsl:attribute></meta>
				</iaixsl:if>
				<iaixsl:if test="$meta_variable_distribution">
					<meta name="distribution"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_distribution"/></iaixsl:attribute></meta>
				</iaixsl:if>
			</iaixsl:if>
			<iaixsl:if test="$meta_variable_rating">
				<meta name="rating"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_rating"/></iaixsl:attribute></meta>
			</iaixsl:if>
			<iaixsl:if test="/shop/iai/@meta_author">
				<meta name="Author">
					<iaixsl:attribute name="content"><iaixsl:value-of select="/shop/iai/@meta_author"/></iaixsl:attribute>
				</meta>
			</iaixsl:if>
			<iaixsl:if test="page/facebook_comments">
				<meta property="fb:admins">
					<iaixsl:attribute name="content"><iaixsl:value-of select="/shop/page/facebook_comments/@admin_id"/></iaixsl:attribute>
				</meta>
				<meta property="fb:app_id">
					<iaixsl:attribute name="content"><iaixsl:value-of select="/shop/page/facebook_comments/@app_id"/></iaixsl:attribute>
				</meta>
			</iaixsl:if>
			<iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_meta_tags')"/>
		</head>
		<iaixsl:variable name="meta_body_id"/>
		<iaixsl:text disable-output-escaping="yes">&lt;body</iaixsl:text><iaixsl:if test="action/set_render/item/@name = 'popup'"><iaixsl:text disable-output-escaping="yes"> class=&quot;popup&quot; </iaixsl:text></iaixsl:if><iaixsl:text disable-output-escaping="yes">&gt;</iaixsl:text>

		<iaixsl:if test="$meta_body_id">
			<iaixsl:attribute name="id"><iaixsl:value-of select="$meta_body_id"/></iaixsl:attribute>
		</iaixsl:if>
		<iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_top_scripts')"/>
	</iaixsl:if>
	<iaixsl:variable name="valuepricedesc">Cena dla Ciebie</iaixsl:variable>
	<iaixsl:variable name="discountpricedesc">Promocja!</iaixsl:variable>
	<iaixsl:variable name="promopricedesc">Super Cena!</iaixsl:variable>
	<iaixsl:variable name="detalpricedesc">Cena detaliczna</iaixsl:variable>
	<iaixsl:variable name="rebatepricedesc">Rabat</iaixsl:variable>
	<iaixsl:variable name="nettopricedesc">Cena netto</iaixsl:variable>
	<iaixsl:variable name="signbeforeprice">false</iaixsl:variable>
	<iaixsl:variable name="signbetweenpricecurrency"> </iaixsl:variable>
	<iaixsl:variable name="showcomparelink">1</iaixsl:variable>

	<!-- (layout, 6842f4db17e1f3.74318533.3)-->
	<div id="container">
		<iaixsl:attribute name="class"><iaixsl:value-of select="page/@type"/>_page <iaixsl:if test="/shop/page/login/@shop_registration = 'true'">registration_page </iaixsl:if>container max-width-1200</iaixsl:attribute>

		<iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'head')">
			<header>
				<iaixsl:attribute name="class"><iaixsl:if test="count(commercial_banner/link) &gt; 0"> commercial_banner</iaixsl:if></iaixsl:attribute>
				<!-- (menu_javascript, 60dd8e8cd12ec2.99578279.38)-->
  <script class="ajaxLoad">app_shop.vars.vat_registered=&quot;<iaixsl:value-of select="/shop/contact/owner/@vat_registered"/>&quot;;app_shop.vars.currency_format=&quot;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_format"/>&quot;;<iaixsl:if test="/shop/currency/option[@selected='true']/@currency_before_value">app_shop.vars.currency_before_value=<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_before_value"/>;</iaixsl:if><iaixsl:if test="/shop/currency/option[@selected='true']/@currency_space">app_shop.vars.currency_space=<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_space"/>;</iaixsl:if>app_shop.vars.symbol=&quot;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>&quot;;app_shop.vars.id=&quot;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@id"/>&quot;;app_shop.vars.baseurl=&quot;<iaixsl:value-of select="/shop/@baseurl"/>&quot;;app_shop.vars.sslurl=&quot;<iaixsl:value-of select="/shop/@sslurl"/>&quot;;app_shop.vars.curr_url=&quot;<iaixsl:value-of select="/shop/navigation/current/@curr_url"/>&quot;;<iaixsl:if test="/shop/basket/@login">app_shop.vars.logged=1;</iaixsl:if>var currency_decimal_separator=&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_decimal_separator"/>&apos;;var currency_grouping_separator=&apos;<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_grouping_separator"/>&apos;;<iaixsl:if test="/shop/form_data/upload_file/blacklist_extension/param">app_shop.vars.blacklist_extension=[<iaixsl:for-each select="/shop/form_data/upload_file/blacklist_extension/param"><iaixsl:if test="not(position()=1)">,</iaixsl:if>&quot;<iaixsl:value-of select="@type"/>&quot;</iaixsl:for-each>];</iaixsl:if><iaixsl:if test="/shop/form_data/upload_file/blacklist_mime/param">app_shop.vars.blacklist_mime=[<iaixsl:for-each select="/shop/form_data/upload_file/blacklist_mime/param"><iaixsl:if test="not(position()=1)">,</iaixsl:if>&quot;<iaixsl:value-of select="@type"/>&quot;</iaixsl:for-each>];</iaixsl:if><iaixsl:if test="/shop/contact/link/@url">app_shop.urls.contact=&quot;<iaixsl:value-of select="/shop/contact/link/@url"/>&quot;;</iaixsl:if></script>
  <div id="viewType" style="display:none"/>
<!-- (menu_suggested_shop_for_language, 60dd8e83bf9068.60920781.8)-->
	<iaixsl:if test="count(/shop/select_language/language/option) &gt; 1 and /shop/select_language/@show_select = 'true' and not(/shop/select_language/@country_first = 'true')">
		<div class="redirection">
		  <span class="redirection__close"/>
			<div class="redirection__suggestions row">
				<div class="redirection__wrapper --title col-12 col-md-6 ">
					<strong class="redirection__title"><span>Choose your language</span><span>and country</span></strong>
				</div>
				<div class="redirection__wrapper --configurator col-12 col-md-6">
					<div class="redirection__selector --language">
						<iaixsl:for-each select="/shop/select_language/language">
							<div class="redirection__language">
								<iaixsl:if test="option/@selected">
									<iaixsl:attribute name="class">redirection__language --active</iaixsl:attribute>
								</iaixsl:if>
								<strong>
									<span>
										<iaixsl:attribute name="class">flag flag_<iaixsl:value-of select="@id"/></iaixsl:attribute>
									</span>
									<span class="redirection__language_name"><iaixsl:value-of select="@name"/></span>
								</strong>
								<div class="redirection__selector --country">
									<iaixsl:if test="count(option) = 1 and option = ''">
										<iaixsl:attribute name="data-link"><iaixsl:value-of select="option/@site"/></iaixsl:attribute>
										<iaixsl:attribute name="class">redirection__selector --country --any</iaixsl:attribute>
									</iaixsl:if>
									<iaixsl:for-each select="option[not(. = '')]">
										<div class="f-group --radio --small">
											<input type="radio" name="shop_country" class="f-control">
												<iaixsl:attribute name="id"><iaixsl:value-of select="../@id"/>_<iaixsl:value-of select="."/></iaixsl:attribute>
												<iaixsl:attribute name="data-link"><iaixsl:value-of select="@site"/></iaixsl:attribute>
												<iaixsl:if test="@selected">
													<iaixsl:attribute name="checked">true</iaixsl:attribute>
												</iaixsl:if>
											</input>
											<label class="f-label">
												<iaixsl:attribute name="for"><iaixsl:value-of select="../@id"/>_<iaixsl:value-of select="."/></iaixsl:attribute>
												<iaixsl:value-of select="."/>
											</label>
										</div>
									</iaixsl:for-each>
								</div>
							</div>
						</iaixsl:for-each>
					</div>
					<form class="redirection__submit" action="" method="post">
					  <iaixsl:if test="/shop/select_language/language/option[@selected = 'true']">
							<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/select_language/language/option[@selected = 'true']/@site"/></iaixsl:attribute>
						</iaixsl:if>
					  <input type="hidden" name="redirection" value="redirected"/>
						<a class="redirection__button btn --medium --solid" href="#redirect">
							<iaixsl:attribute name="title">OK</iaixsl:attribute>
							OK
						</a>
					</form>
				</div>
			</div>
		</div>
	</iaixsl:if>

<!-- (menu_skip, 6810b4b52b7321.12194129.2)-->
	<div id="menu_skip" class="menu_skip">
		<a href="#layout" class="btn --outline --medium menu_skip__link --layout">Przejdź do zawartości strony</a>
		<a href="#menu_categories" class="btn --outline --medium menu_skip__link --menu">Przejdź do kategorii</a>
	</div>
<!-- (bars_top, 62e7a5fa10fd24.34671527.3)-->
	<iaixsl:if test="/shop/page/bars/bar[@position = 'top']">
		<div class="bars_top bars">
			<iaixsl:for-each select="/shop/page/bars/bar[@position = 'top']">
				<div class="bars__item">
					<iaixsl:attribute name="id">bar<iaixsl:value-of select="@id"/></iaixsl:attribute>
					<iaixsl:if test="@possibilityToClose = 'true'">
						<iaixsl:attribute name="data-close">true</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:if test="@fixed = 'true'">
						<iaixsl:attribute name="data-fixed">true</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:attribute name="style">--background-color:<iaixsl:value-of select="@backgroundColor"/>;--border-color:<iaixsl:value-of select="@borderColor"/>;--font-color:<iaixsl:value-of select="@fontColor"/>;</iaixsl:attribute>
					<div class="bars__wrapper">
						<div class="bars__content"><iaixsl:value-of disable-output-escaping="yes" select="."/></div>
						<iaixsl:if test="@possibilityToClose = 'true'">
							<a href="#closeBar" class="bars__close">
							  <iaixsl:attribute name="aria-label">Zamknij</iaixsl:attribute>
							</a>
						</iaixsl:if>
					</div>
				</div>
			</iaixsl:for-each>
		</div>
		<script>document.documentElement.style.setProperty(&apos;--bars-height&apos;,`${document.querySelector(&apos;.bars_top&apos;).offsetHeight}px`);</script>
	</iaixsl:if>
<!-- (menu_rebates_codes, 61b0b1afcdfdf5.19170359.4)-->
	<iaixsl:variable name="disableRebatesCodes"/>
	<iaixsl:if test="not($disableRebatesCodes) and /shop/rebatecode/@code">
		<div id="rabateCode" class="rabateCode">
			<span class="rabateCode__info">Aktywny kod rabatowy: </span>
			<strong>
				<span><iaixsl:value-of select="number(/shop/rebatecode/@value)"/></span>
				<span>
					<iaixsl:choose>
						<iaixsl:when test="/shop/rebatecode/@price_type = 'fixed_amount' or /shop/rebatecode/@price_type = 'c'"> <iaixsl:value-of select="/shop/currency/@name"/></iaixsl:when>
						<iaixsl:when test="/shop/rebatecode/@price_type = 'p'">%</iaixsl:when>
					</iaixsl:choose>
				</span>
			</strong>
			<a href="" class="rabateCode__close">
			  <iaixsl:attribute name="aria-label">Zamknij pasek informacyjny</iaixsl:attribute>
			</a>
		</div>
	</iaixsl:if>
<!-- (menu_delivery_cost, 60dd8f2ee8f533.38237884.8)-->
	<iaixsl:variable name="disableBar"/>
	<iaixsl:variable name="disableReturns"/>
	<iaixsl:if test="not($disableBar) and /shop/basket/@toshippingfree != ''">
		<div id="freeShipping" class="freeShipping">
			<iaixsl:if test="/shop/basket/@toshippingfree = 0">
				<iaixsl:attribute name="class">freeShipping --active</iaixsl:attribute>
			</iaixsl:if>
			<span class="freeShipping__info">Darmowa dostawa</span>
			<strong class="freeShipping__val">
				od 
				<iaixsl:value-of select="/shop/basket/@shippinglimitfree_formatted"/>
			</strong>
			
			<iaixsl:if test="not($disableReturns) and /shop/returns/@freereturnsactive='y'">
				<span class="freeShipping__return">
					dni
					<iaixsl:value-of select="/shop/returns/@days_to_return"/>
					i darmowy zwrot od 
				</span>
			</iaixsl:if>
			
			<a href="" class="freeShipping__close">
			  <iaixsl:attribute name="aria-label">Zamknij pasek informacyjny</iaixsl:attribute>
			</a>
		</div>
	</iaixsl:if>
<!-- (menu_top, 614c5cf22edf47.10818775.6)-->
	<div id="logo" class="d-flex align-items-center">
		<iaixsl:if test="mask/top2/link/image/@src and (mask/top2/link/image/@width&gt;1 or mask/top2/link/image/@height &gt; 1)"><iaixsl:attribute name="data-bg"><iaixsl:value-of select="mask/top2/link/image/@src"/></iaixsl:attribute></iaixsl:if>
		<a href="{/shop/mask/top/link/@href}" target="{/shop/mask/top/link/@target}">
			<iaixsl:attribute name="aria-label">Logo sklepu</iaixsl:attribute>
			<iaixsl:choose>
				<iaixsl:when test="/shop/mask/top/link/image_mobile/@src and /shop/mask/top/link/image_tablet/@src">
					<picture>
						<iaixsl:if test="/shop/mask/top/link/image/@src">
							<source media="(min-width:979px)" srcset="{/shop/mask/top/link/image/@src}" width="{/shop/mask/top/link/image/@width}" height="{/shop/mask/top/link/image/@height}"/>
						</iaixsl:if>
						<iaixsl:if test="/shop/mask/top/link/image_tablet/@src">
							<source media="(min-width:757px)" srcset="{/shop/mask/top/link/image_tablet/@src}" width="{/shop/mask/top/link/image_tablet/@width}" height="{/shop/mask/top/link/image_tablet/@height}"/>
						</iaixsl:if>
						<img src="{/shop/mask/top/link/image_mobile/@src}" alt="{/shop/mask/top/link/description}" width="{/shop/mask/top/link/image_mobile/@width}" height="{/shop/mask/top/link/image_mobile/@height}"/>
					</picture>
				</iaixsl:when>
				<iaixsl:otherwise>
					<img src="{/shop/mask/top/link/image/@src}" alt="{/shop/mask/top/link/description}" width="{/shop/mask/top/link/image/@width}" height="{/shop/mask/top/link/image/@height}"/>
				</iaixsl:otherwise>
			</iaixsl:choose>
		</a>
	</div>
	
	<iaixsl:if test="/shop/mask/@rwd_pc">
		<iaixsl:if test="/shop/mask/@rwd_tablet"/>
		<iaixsl:if test="/shop/mask/@rwd_smartphone"/>
	</iaixsl:if>
<!-- (menu_search, 614c5cebebd061.68349363.11)-->
	<form action="/search.php" method="get" id="menu_search" class="menu_search">
		<iaixsl:if test="/shop/action/search/@url"><iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/search/@url"/></iaixsl:attribute></iaixsl:if>
		<a href="#showSearchForm" class="menu_search__mobile">
		  <iaixsl:attribute name="aria-label">Szukaj</iaixsl:attribute>
		</a>

		<div class="menu_search__block">
			<div class="menu_search__item --input">
				<input class="menu_search__input" type="text" name="text" autocomplete="off">
					<iaixsl:attribute name="placeholder">Wpisz czego szukasz</iaixsl:attribute>
					<iaixsl:attribute name="aria-label">Wpisz czego szukasz</iaixsl:attribute>
					<iaixsl:if test="/shop/page/search_params/text">
						<iaixsl:attribute name="placeholder"><iaixsl:value-of select="/shop/page/search_params/text/@value"/></iaixsl:attribute>
						<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/search_params/text/@value"/></iaixsl:attribute>
					</iaixsl:if>
				</input>
				<button class="menu_search__submit" type="submit">
					<iaixsl:attribute name="aria-label">Szukaj</iaixsl:attribute>
				</button>
			</div>
			<div class="menu_search__item --results search_result"/>
		</div>
	</form>
<!-- (top_menu_wrapper, 6842f8d7025c13.22082096.7)-->
<div id="menu_top" class="menu_top">
	<iaixsl:if test="(((count(/shop/currency/option) &gt; 1) or (count(/shop/language/option) &gt; 1) or (count(/shop/countries/country) &gt; 1)) and not(/shop/select_language/@country_first = 'true')) or (count(/shop/select_language/language/option) &gt; 1 and /shop/select_language/@country_first = 'true')">
		<div id="menu_settings" class="align-items-center justify-content-center justify-content-lg-end">
			<iaixsl:if test="count(/shop/select_language/language/option) &gt; 1 and /shop/select_language/@country_first = 'true'">
				<iaixsl:attribute name="class">align-items-center justify-content-center justify-content-lg-end --select_language</iaixsl:attribute>
			</iaixsl:if>
			<iaixsl:if test="((count(/shop/currency/option) &gt; 1) or (count(/shop/language/option) &gt; 1) or (count(/shop/countries/country) &gt; 1)) and not(/shop/select_language/@country_first = 'true')">
			<div class="open_trigger hover__wrapper --hover_touch" tabindex="0">
				<iaixsl:attribute name="aria-label">Kliknij, aby zmienić <iaixsl:if test="count(/shop/language/option) &gt; 1">język<iaixsl:if test="count(/shop/currency/option) &gt; 1 or count(/shop/countries/country) &gt; 1">, </iaixsl:if></iaixsl:if><iaixsl:if test="count(/shop/currency/option) &gt; 1">walutę<iaixsl:if test="count(/shop/countries/country) &gt; 1">, </iaixsl:if></iaixsl:if><iaixsl:if test="count(/shop/countries/country) &gt; 1">kraj dostawy</iaixsl:if></iaixsl:attribute>
					<span>
						<iaixsl:choose>
							<iaixsl:when test="count(/shop/language/option) &gt; 1">
								<iaixsl:attribute name="class">d-none d-md-inline-block flag flag_<iaixsl:value-of select="/shop/language/option[@selected='true']/@id"/></iaixsl:attribute>
							</iaixsl:when>
							<iaixsl:when test="count(/shop/currency/option) &gt; 1">
								<iaixsl:attribute name="class">d-none d-md-inline-block flag_txt</iaixsl:attribute>
								<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>
							</iaixsl:when>
							<iaixsl:when test="count(/shop/countries/country) &gt; 1">
								<iaixsl:attribute name="class">d-none d-md-inline-block flag_txt</iaixsl:attribute>
								<i class="icon-truck"/>
							</iaixsl:when>
						</iaixsl:choose>
					</span>

					<i class="icon-angle-down d-none d-md-inline-block"/>

				<iaixsl:if test="(count(/shop/currency/option) &gt; 1) or (count(/shop/language/option) &gt; 1) or (count(/shop/countries/country) &gt; 1)">
					<form class="hover__element --right" action="/settings.php" method="post">
						<iaixsl:if test="/shop/action/settings/@url">
							<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:attribute>
						</iaixsl:if>

						<ul>
							
							<iaixsl:if test="count(/shop/language/option) &gt; 1">
								<li>
									<div class="form-group">
										<span class="menu_settings_lang_label">Język</span>

										<iaixsl:for-each select="/shop/language/option">
											<div class="radio">
												<label>
													<input type="radio" name="lang">
														<iaixsl:if test="@selected='true'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
														<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
													</input>
													<span>
														<iaixsl:attribute name="class">flag flag_<iaixsl:value-of select="@id"/></iaixsl:attribute>
													</span>
													<span><iaixsl:value-of select="@name"/></span>
												</label>
											</div>
										</iaixsl:for-each>
									</div>
								</li>
							</iaixsl:if>

							<iaixsl:if test="count(/shop/currency/option) &gt; 1 or count(/shop/countries/country) &gt; 1">
								<li>
									<iaixsl:if test="count(/shop/currency/option) &gt; 1">
										<div class="form-group">
											<span for="menu_settings_curr">Waluta</span>

											<div class="select-after">
												<select class="form-control" name="curr" id="menu_settings_curr">
													<iaixsl:attribute name="aria-label">Waluta</iaixsl:attribute>
													<iaixsl:for-each select="/shop/currency/option">
														<option>
															<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
															<iaixsl:choose>
																<iaixsl:when test="@selected='true'">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																	<iaixsl:value-of select="@symbol"/>
																</iaixsl:when>
																<iaixsl:otherwise>
																	<iaixsl:value-of select="@symbol"/> (1 <iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/> = <iaixsl:value-of select="@rate"/>  <iaixsl:value-of select="@symbol"/>)
																</iaixsl:otherwise>
															</iaixsl:choose>
														</option>
													</iaixsl:for-each>
												</select>
											</div>
										</div>
									</iaixsl:if>
									<iaixsl:if test="count(/shop/countries/country) &gt; 1">
										<div class="form-group">
											<span for="menu_settings_country">Dostawa do</span>

											<div class="select-after">
												<select class="form-control" name="country" id="menu_settings_country">
													<iaixsl:attribute name="aria-label">Dostawa do</iaixsl:attribute>
													<iaixsl:for-each select="/shop/countries/country">
														<option>
															<iaixsl:if test="@selected='true'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>
															<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
															<iaixsl:value-of select="@name"/>
														</option>
													</iaixsl:for-each>
												</select>
											</div>
										</div>
									</iaixsl:if>
								</li>
							</iaixsl:if>
							<li class="buttons">
								<button class="btn --solid --large" type="submit">
									Zastosuj zmiany
								</button>
							</li>
						</ul>
					</form>
				</iaixsl:if>
				</div>
			</iaixsl:if>

			<iaixsl:if test="count(/shop/select_language/language/option) &gt; 1 and /shop/select_language/@country_first = 'true'">
				<iaixsl:variable name="show_select_var"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true'] = /shop/select_language/language/option[@selected = 'true']">false</iaixsl:when><iaixsl:otherwise test="count(/shop/currency/option) &gt; 1"><iaixsl:value-of select="/shop/select_language/@show_select"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

				<iaixsl:variable name="is_recommended_country"><iaixsl:if test="/shop/select_language/language/option[@recommended = 'true'] and not(/shop/select_language/language/option[@selected = 'true']/@id = /shop/select_language/language/option[@recommended = 'true']/@id)">true</iaixsl:if></iaixsl:variable>
				<iaixsl:variable name="is_default_country"><iaixsl:if test="not(/shop/select_language/language/option[@recommended = 'true']) and /shop/select_language/language/option[@default = 'true'] and not(/shop/select_language/language/option[@selected = 'true']/@id = /shop/select_language/language/option[@default = 'true']/@id)">true</iaixsl:if></iaixsl:variable>
				<iaixsl:variable name="recommended_country_lang"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']/../@id = /shop/select_language/language[@recommended = 'true']/@id"><iaixsl:value-of select="/shop/select_language/language[@recommended = 'true']/@id"/></iaixsl:when><iaixsl:otherwise>eng</iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise>eng</iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

				<script>
					window.selectLanguageConfig = [<iaixsl:for-each select="/shop/select_language/language"><iaixsl:for-each select="option">{group:`<iaixsl:choose><iaixsl:when test="$is_recommended_country = 'true'"><iaixsl:value-of select="@recommended_group_name"/></iaixsl:when><iaixsl:when test="$is_default_country = 'true'"><iaixsl:value-of select="@default_group_name"/></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="@group"/></iaixsl:otherwise></iaixsl:choose>`,id:`<iaixsl:value-of select="@id"/>`,name: `<iaixsl:value-of select="text()"/>`,recommendedName: `<iaixsl:value-of select="@recommended_name"/>`,defaultName: `<iaixsl:value-of select="@default_name"/>`,selectedName: `<iaixsl:value-of select="@selected_name"/>`,currencyId: `<iaixsl:value-of select="@currency_id"/>`,currencySymbol: `<iaixsl:value-of select="@currency_symbol"/>`,<iaixsl:if test="@selected = 'true'">selected: true,</iaixsl:if><iaixsl:if test="@recommended = 'true'">recommended: true,</iaixsl:if><iaixsl:if test="@default = 'true'">default: true,</iaixsl:if>lang: [{site: `<iaixsl:value-of select="@site"/>`,name: `<iaixsl:value-of select="../@name"/>`,recommendedName:`<iaixsl:value-of select="../@recommended_name"/>`, defaultName:`<iaixsl:value-of select="../@default_name"/>`, id:`<iaixsl:value-of select="../@id"/>`, }]},</iaixsl:for-each></iaixsl:for-each>
					];
					window.selectLanguageParamsConfig = {show_select: &quot;<iaixsl:value-of select="$show_select_var"/>&quot;, recommended_lang: &quot;<iaixsl:value-of select="$recommended_country_lang"/>&quot;, is_recommended_country: &quot;<iaixsl:value-of select="$is_recommended_country"/>&quot;, is_default_country: &quot;<iaixsl:value-of select="$is_default_country"/>&quot;, country_first: &quot;<iaixsl:value-of select="/shop/select_language/@country_first"/>&quot;, selectedLangId: &quot;<iaixsl:for-each select="/shop/select_language/language"><iaixsl:if test="option[@selected = 'true']"><iaixsl:value-of select="@id"/></iaixsl:if></iaixsl:for-each>&quot;, };
				</script>

				<div class="select_language__open" tabindex="0"><iaixsl:attribute name="aria-label">Wybierz kraj dostawy i język</iaixsl:attribute><span><i class="icon-glob"/></span></div>

				<div id="select_language" class="select_language">
					<div class="select_language__header"><span data-txt="Wybierz kraj dostawy i język">Wybierz kraj dostawy i język</span></div>

					<div class="select_language__choose"/>
					<form class="select_language__form" action="" method="post">
						<iaixsl:if test="/shop/select_language/language/option[@selected = 'true']">
							<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/select_language/language/option[@selected = 'true']/@site"/></iaixsl:attribute>
						</iaixsl:if>
						<input type="hidden" name="redirection" value="redirected"/>
						<a class="select_language__submit btn --large --solid" href="#select_language" data-txt="Zastosuj zmiany" title="Zastosuj zmiany">
							<iaixsl:attribute name="title">Zastosuj zmiany</iaixsl:attribute>
							Zastosuj zmiany
						</a>
						<a class="select_language__back" href="#select_language" data-txt="Wróć" title="Wróć">
							<iaixsl:attribute name="title">Wróć</iaixsl:attribute>
							Wróć
						</a>
					</form>
				</div>

				<div class="select_language --recommended">
					<iaixsl:variable name="recommended_country"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']/../@id = /shop/select_language/language[@recommended = 'true']/@id"><iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/@recommended_name"/></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/@default_name"/></iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@default = 'true']/@default_name"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="recommended_country_id"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']"><iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/@id"/></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@default = 'true']/@id"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="recommended_language"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']/../@id = /shop/select_language/language[@recommended = 'true']/@id"><iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/../@recommended_name"/></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/../@default_name"/></iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@default = 'true']/../@default_name"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="recommended_currency_id"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']"><iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/@currency_id"/></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@default = 'true']/@currency_id"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="recommended_currency_symbol"><iaixsl:choose><iaixsl:when test="/shop/select_language/language/option[@recommended = 'true']"><iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/@currency_symbol"/></iaixsl:when><iaixsl:otherwise> <iaixsl:value-of select="/shop/select_language/language/option[@default = 'true']/@currency_symbol"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

					<div class="select_language__header">
						<span class="flag"><iaixsl:attribute name="data-flag"><iaixsl:value-of select="$recommended_country_id"/></iaixsl:attribute></span>
						<iaixsl:choose>
							<iaixsl:when test="$is_recommended_country = 'true'">
								<span>
									<span data-txt="Twój rekomendowany kraj dostawy to">Twój rekomendowany kraj dostawy to</span><iaixsl:text> </iaixsl:text><span><iaixsl:attribute name="data-default_txt"><iaixsl:value-of select="/shop/select_language/language/option[@id = $recommended_country_id]/@default_name "/></iaixsl:attribute><iaixsl:value-of select="$recommended_country"/></span>
								</span>
							</iaixsl:when>
							<iaixsl:otherwise>
								<span data-txt="Wybór dostawy do twojego kraju nie jest możliwy">Wybór dostawy do twojego kraju nie jest możliwy</span>
							</iaixsl:otherwise>
						</iaixsl:choose>
					</div>
					<ul class="select_language__info">
						<iaixsl:choose>
							<iaixsl:when test="$is_recommended_country = 'true'">
								<li class="select_language__recommended --currency"><span data-txt="Zrób zakupy w">Zrób zakupy w:</span><iaixsl:text> </iaixsl:text><strong><iaixsl:value-of select="$recommended_currency_id"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="$recommended_currency_symbol"/></strong></li>
								<li class="select_language__recommended --country"><span data-txt="Zamów do kraju">Zamów do kraju:</span><iaixsl:text> </iaixsl:text><strong><iaixsl:attribute name="data-default_txt"><iaixsl:value-of select="/shop/select_language/language/option[@id = $recommended_country_id]/@default_name "/></iaixsl:attribute><iaixsl:value-of select="$recommended_country"/></strong></li>
								<li class="select_language__recommended --language"><span data-txt="Język sklepu">Język sklepu:</span><iaixsl:text> </iaixsl:text><strong><iaixsl:attribute name="data-default_txt"><iaixsl:value-of select="/shop/select_language/language/option[@id = $recommended_country_id]/../@default_name "/></iaixsl:attribute><iaixsl:value-of select="$recommended_language"/></strong></li>
							</iaixsl:when>
							<iaixsl:otherwise>
								<li class="select_language__recommended --country"><span data-txt="Domyślny kraj dostawy">Domyślny kraj dostawy:</span><iaixsl:text> </iaixsl:text><strong><iaixsl:attribute name="data-default_txt"><iaixsl:value-of select="/shop/select_language/language/option[@id = $recommended_country_id]/@default_name "/></iaixsl:attribute><iaixsl:value-of select="$recommended_country"/></strong></li>
								<li class="select_language__recommended --currency"><span data-txt="Zrób zakupy w">Zrób zakupy w:</span><iaixsl:text> </iaixsl:text><strong><iaixsl:value-of select="$recommended_currency_id"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="$recommended_currency_symbol"/></strong></li>
								<li class="select_language__recommended --language"><span data-txt="Język sklepu">Język sklepu:</span><iaixsl:text> </iaixsl:text><strong><iaixsl:attribute name="data-default_txt"><iaixsl:value-of select="/shop/select_language/language/option[@id = $recommended_country_id]/../@default_name "/></iaixsl:attribute><iaixsl:value-of select="$recommended_language"/></strong></li>
							</iaixsl:otherwise>
						</iaixsl:choose>
					</ul>
					<form class="select_language__form" action="" method="post">
						<iaixsl:if test="/shop/select_language/language/option[@selected = 'true']">
							<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/select_language/language/option[@selected = 'true']/@site"/></iaixsl:attribute>
						</iaixsl:if>
						<input type="hidden" name="redirection" value="redirected"/>
						<a class="select_language__submit --recommended btn --large --solid" href="#select_language">
							<iaixsl:attribute name="title">Wybierz</iaixsl:attribute>
							<iaixsl:choose>
							<iaixsl:when test="$is_recommended_country = 'true'">
								<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/select_language/language/option[@recommended = 'true']/@site"/></iaixsl:attribute>
							</iaixsl:when>
							<iaixsl:otherwise>
								<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/select_language/language/option[@default = 'true']/@site"/></iaixsl:attribute>
							</iaixsl:otherwise>
						</iaixsl:choose>
            <span data-txt="Wybierz">Wybierz</span>
						</a>
          <a class="select_language__next btn --large --solid --outline" data-txt="Wybieram inny kraj" href="#select_language_open">
            <iaixsl:attribute name="title">Wybieram inny kraj</iaixsl:attribute>
            Wybieram inny kraj
						</a>
					</form>
				</div>
			</iaixsl:if>
		</div>
	</iaixsl:if>

	<div class="account_links">
		<a class="account_links__item">
			<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>
			<iaixsl:choose>
				<iaixsl:when test="basket/@login and not(basket/@login = '')">
					<span class="account_links__text --logged-in">Twoje konto</span>
				</iaixsl:when>
				<iaixsl:otherwise>
					<span class="account_links__text --logged-out">Moje Konto</span>
				</iaixsl:otherwise>
			</iaixsl:choose>
		</a>
	</div>

	<div class="shopping_list_top hover__wrapper" data-empty="false">
		<iaixsl:if test="not(/shop/shopping_lists/list)">
		  <iaixsl:attribute name="class">shopping_list_top hover__wrapper</iaixsl:attribute>
			<iaixsl:attribute name="data-empty">true</iaixsl:attribute>
		</iaixsl:if>
		<a href="/shoppinglist.php" class="wishlist_link slt_link"><iaixsl:if test="not(/shop/shopping_lists/list)"><iaixsl:attribute name="class">wishlist_link slt_link --empty</iaixsl:attribute></iaixsl:if><iaixsl:if test="/shop/action/shoppinglist"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shoppinglist/@url"/></iaixsl:attribute></iaixsl:if><iaixsl:attribute name="aria-label">Ulubione</iaixsl:attribute><span class="slt_link__text">Ulubione</span></a>
		<div class="slt_lists hover__element">
			<ul class="slt_lists__nav">
				<li class="slt_lists__nav_item" data-list_skeleton="true" data-list_id="true" data-shared="true">
					<a href="#" class="slt_lists__nav_link" data-list_href="true">
						<span class="slt_lists__nav_name" data-list_name="true"/>
						<span class="slt_lists__count" data-list_count="true">0</span>
					</a>
				</li>
				<iaixsl:if test="not(/shop/shopping_lists/list)">
					<li class="slt_lists__nav_item --empty">
						<a class="slt_lists__nav_link --empty">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shoppinglist/@url"/></iaixsl:attribute>
							<span class="slt_lists__nav_name" data-list_name="true">Lista zakupowa</span>
							<span class="slt_lists__count" data-list_count="true">0</span>
						</a>
					</li>
				</iaixsl:if>
				<iaixsl:for-each select="/shop/shopping_lists/list">
					<li class="slt_lists__nav_item">
						<iaixsl:attribute name="data-list_id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
						<iaixsl:if test="@id = /shop/page/list/@id">
							<iaixsl:attribute name="data-current">true</iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:if test="@shared = 'true'">
							<iaixsl:attribute name="data-shared">true</iaixsl:attribute>
						</iaixsl:if>
						<a class="slt_lists__nav_link">
							<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
							<span class="slt_lists__nav_name" data-list_name="true"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
							<span class="slt_lists__count" data-list_count="true"><iaixsl:value-of select="@count"/></span>
						</a>
					</li>
				</iaixsl:for-each>
			</ul>
		</div>
	</div>

  <iaixsl:variable name="basket_title">Przejdź do koszyka</iaixsl:variable>
  
	<iaixsl:variable name="BasketPrice"><iaixsl:choose>
		<iaixsl:when test="/shop/page/@price_type = 'net'"><iaixsl:value-of disable-output-escaping="yes" select="basket/@cost_net_formatted"/></iaixsl:when>
		<iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="basket/@cost_formatted"/></iaixsl:otherwise>
	</iaixsl:choose></iaixsl:variable>

		
		<iaixsl:variable name="BasketPoints"><iaixsl:if test="@points_used &gt; 0">+ <iaixsl:value-of disable-output-escaping="yes" select="basket/@points_used"/>PKT</iaixsl:if></iaixsl:variable>

  <div id="menu_basket" class="top_basket hover__wrapper --mobile_hide">
    <iaixsl:if test="not(basket/@count &gt; 0)">
      <iaixsl:attribute name="class">top_basket hover__wrapper --hide --mobile_hide</iaixsl:attribute>
    </iaixsl:if>
    <iaixsl:if test="/shop/page/@cache_html = 'true' ">
      <iaixsl:attribute name="class">top_basket hover__wrapper --skeleton --mobile_hide</iaixsl:attribute>
    </iaixsl:if>
    <a class="top_basket__sub">
      <iaixsl:if test="$basket_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$basket_title"/></iaixsl:attribute></iaixsl:if>
      <iaixsl:attribute name="href"><iaixsl:value-of select="basket/@link"/></iaixsl:attribute>
      <iaixsl:attribute name="aria-label">Wartość koszyka: <iaixsl:value-of select="$BasketPrice"/> <iaixsl:value-of select="$BasketPoints"/></iaixsl:attribute>

      <span class="badge badge-info"><iaixsl:if test="basket/@count &gt; 0"><iaixsl:value-of disable-output-escaping="yes" select="basket/@count"/></iaixsl:if></span>
      <strong class="top_basket__price">
        <iaixsl:value-of disable-output-escaping="yes" select="$BasketPrice"/>
        <iaixsl:if test="@points_used &gt; 0">
          <small><iaixsl:value-of disable-output-escaping="yes" select="$BasketPoints"/></small>
        </iaixsl:if>
      </strong>
    </a>

    <div class="top_basket__express_checkout_container">
      <express-checkout type="basket"/>
    </div>


    <iaixsl:if test="/shop/action/sites/@session_share_disabled">
      <script>
        app_shop.vars.session_share = &quot;<iaixsl:value-of select="/shop/action/sites/@session_share"/>&quot;;
        <iaixsl:if test="/shop/action/sites/site">
        app_shop.vars.sites = [<iaixsl:for-each select="/shop/action/sites/site"><iaixsl:if test="not(position()=1)">,</iaixsl:if>&quot;<iaixsl:value-of select="@url"/>&quot;</iaixsl:for-each>];
        </iaixsl:if>
      </script>
    </iaixsl:if>

    <iaixsl:if test="/shop/page/@cache_html = 'true' ">
      <script>
        app_shop.vars.cache_html = true;
      </script>
    </iaixsl:if>

    <iaixsl:if test="/shop/basket/product">
      <iaixsl:if test="/shop/page/@cache_basketwishes"> </iaixsl:if>
      <iaixsl:if test="/shop/page/@cache_basket"> </iaixsl:if>
    </iaixsl:if>

    <div class="top_basket__details hover__element --skeleton">
      <div class="top_basket__skeleton --name"/>
			<iaixsl:choose>
				<iaixsl:when test="count(/shop/basket/product) = 1">
					<div class="top_basket__skeleton --product --last"/>
				</iaixsl:when>
				<iaixsl:when test="count(/shop/basket/product) = 2">
					<div class="top_basket__skeleton --product"/>
					<div class="top_basket__skeleton --product --last"/>
				</iaixsl:when>
				<iaixsl:otherwise>
					<div class="top_basket__skeleton --product"/>
					<div class="top_basket__skeleton --product"/>
					<div class="top_basket__skeleton --product --last"/>
				</iaixsl:otherwise>
			</iaixsl:choose>
      <div class="top_basket__skeleton --sep"/>
      <div class="top_basket__skeleton --summary"/>
    </div>

  </div>
  <iaixsl:if test="wishes/@count"> </iaixsl:if>

  <template id="top_basket_product">
    <div class="top_basket__product">
      <a class="top_basket__img" title="">
        <picture>
          <source type="image/webp" srcset=""/>
          <img src="" alt=""/>
        </picture>
      </a>
      <a class="top_basket__link" title=""/>
      <div class="top_basket__prices">
        <span class="top_basket__price"/>
        <span class="top_basket__unit"/>
        <span class="top_basket__vat"/>
      </div>
    </div>
  </template>

  <template id="top_basket_summary">
    <div class="top_basket__summary_shipping_free">
      <span class="top_basket__summary_label --freeshipping_limit">Do darmowej dostawy brakuje <span class="top_basket__summary_value"/></span>
      <span class="progress_bar">
        <span class="progress_bar__value"/>
      </span>
    </div>
    <div class="top_basket__summary_item --worth">
      <span class="top_basket__summary_label">Wartość zamówienia:</span>
      <b class="top_basket__summary_value"/>
    </div>
    <div class="top_basket__summary_item --shipping">
      <span class="top_basket__summary_label">Koszt przesyłki:</span>
      <b class="top_basket__summary_value"/>
    </div>
    <div class="top_basket__buttons">
      <a class="btn --solid --large" data-ec-class="btn --outline --large">
        <iaixsl:if test="$basket_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$basket_title"/></iaixsl:attribute></iaixsl:if>
        <iaixsl:attribute name="href"><iaixsl:value-of select="basket/@link"/></iaixsl:attribute>
        Przejdź do koszyka
      </a>
      
      <div id="top_basket__express_checkout_placeholder"/>
    </div>
  </template>

  <template id="top_basket_details">
    <div class="top_basket__details hover__element">
      <div class="top_basket__details_sub">
        <div class="headline">
          <span class="headline__name">Twój koszyk (<span class="top_basket__count"/>)</span>
        </div>
        <div class="top_basket__products"/>
        <div class="top_basket__summary"/>
      </div>
    </div>
  </template>

</div>
<!-- (menu_categories, 614c5da3c43729.28726061.18)-->
	<iaixsl:variable name="dlmenu_showall">+ Pokaż wszystkie</iaixsl:variable>
	<iaixsl:variable name="dlmenu_extend">+ Rozwiń</iaixsl:variable>
	<iaixsl:variable name="dlmenu_hide">- Zwiń</iaixsl:variable>
	<iaixsl:variable name="gfx_2lvl_show">1</iaixsl:variable>
	<iaixsl:variable name="gfx_3lvl_show">1</iaixsl:variable>
	<iaixsl:variable name="menu_categories_label"/>
	<iaixsl:variable name="dlmenu_showmore">1</iaixsl:variable>
	<iaixsl:variable name="dlmenu_shownumber">10</iaixsl:variable>
	<iaixsl:variable name="dlmenu_showall_count">0</iaixsl:variable>
	<iaixsl:variable name="current_item"><iaixsl:value-of select="/shop/navigation/current/@ni"/></iaixsl:variable>

	<nav id="menu_categories" class="wide">
	  <iaixsl:attribute name="aria-label">Kategorie główne</iaixsl:attribute>
		<iaixsl:if test="$menu_categories_label and not($menu_categories_label = '')">
			<h2 class="big_label">
				<a href="/categories.php">
					<iaixsl:attribute name="title"/>
					<iaixsl:value-of select="$menu_categories_label"/>
				</a>
			</h2>
		</iaixsl:if>
		<button type="button" class="navbar-toggler">
		  <iaixsl:attribute name="aria-label">Menu</iaixsl:attribute>
			<i class="icon-reorder"/>
		</button>
		<div class="navbar-collapse" id="menu_navbar">
			<ul class="navbar-nav mx-md-n2">
				<iaixsl:for-each select="navigation/item">
					<li class="nav-item">
						<iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
							<iaixsl:attribute name="class">nav-item nav-open</iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:variable name="navLink">
							<iaixsl:choose>
								<iaixsl:when test="@link and @link != '##'">
									<iaixsl:text disable-output-escaping="yes">&lt;a  href=&quot;</iaixsl:text>
									<iaixsl:value-of select="@link"/><iaixsl:text disable-output-escaping="yes">&quot; target=&quot;</iaixsl:text><iaixsl:value-of select="@target"/>
									<iaixsl:text disable-output-escaping="yes">&quot; title=&quot;</iaixsl:text><iaixsl:value-of select="@name"/>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:text disable-output-escaping="yes">&lt;span</iaixsl:text>
									<iaixsl:text disable-output-escaping="yes"> title=&quot;</iaixsl:text>
									<iaixsl:value-of select="@name"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
							<iaixsl:text disable-output-escaping="yes">&quot; class=&quot;nav-link --l1</iaixsl:text>
							<iaixsl:if test="(@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)">
								<iaixsl:text disable-output-escaping="yes"> active</iaixsl:text>
							</iaixsl:if>
							<iaixsl:if test="@reload and @reload = 'y'">
								<iaixsl:text disable-output-escaping="yes"> noevent</iaixsl:text>
							</iaixsl:if>
							<iaixsl:if test="((@gfx_inactive_type = 'img' and @gfx) or (@gfx_inactive_type = 'img_rwd' and (@gfx_inactive_desktop or @gfx_inactive_tablet or @gfx_inactive_mobile))) or ((@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile)))">
								<iaixsl:text disable-output-escaping="yes"> nav-gfx</iaixsl:text>
								<iaixsl:if test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
									<iaixsl:text disable-output-escaping="yes"> nav-hover</iaixsl:text>
								</iaixsl:if>
							</iaixsl:if>
							<iaixsl:text disable-output-escaping="yes">&quot; &gt;</iaixsl:text>
							<iaixsl:choose>
								<iaixsl:when test="(@gfx_inactive_type = 'img' and @gfx) or (@gfx_inactive_type = 'img_rwd' and (@gfx_inactive_desktop or @gfx_inactive_tablet or @gfx_inactive_mobile))">
									<picture class="nav-picture --main --lvl1">
										<iaixsl:choose>
											<iaixsl:when test="@gfx_inactive_type = 'img_rwd'">
												<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_inactive_desktop}">
													<iaixsl:if test="@gfx_inactive_desktop_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_inactive_desktop_width"/></iaixsl:attribute></iaixsl:if>
													<iaixsl:if test="@gfx_inactive_desktop_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_inactive_desktop_height"/></iaixsl:attribute></iaixsl:if>
												</source>
												<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_inactive_tablet}">
													<iaixsl:if test="@gfx_inactive_tablet_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_inactive_tablet_width"/></iaixsl:attribute></iaixsl:if>
													<iaixsl:if test="@gfx_inactive_tablet_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_inactive_tablet_height"/></iaixsl:attribute></iaixsl:if>
												</source>
												<img alt="{@name}" title="{@name}" src="{@gfx_inactive_mobile}" loading="lazy">
													<iaixsl:if test="@gfx_inactive_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_inactive_mobile_width"/></iaixsl:attribute></iaixsl:if>
													<iaixsl:if test="@gfx_inactive_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_inactive_mobile_height"/></iaixsl:attribute></iaixsl:if>
												</img>
											</iaixsl:when>
											<iaixsl:otherwise>
												<img alt="{@name}" title="{@name}" src="{@gfx}" loading="lazy">
													<iaixsl:if test="@gfx_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_width"/></iaixsl:attribute></iaixsl:if>
													<iaixsl:if test="@gfx_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_height"/></iaixsl:attribute></iaixsl:if>
												</img>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</picture>
									<iaixsl:if test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
										<picture class="nav-picture --hover --lvl1">
											<iaixsl:choose>
												<iaixsl:when test="@gfx_omo_type = 'img_rwd'">
													<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_omo_desktop}"/>
													<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_omo_tablet}"/>
													<img alt="{@name}" title="{@name}" src="{@gfx_omo_mobile}" loading="lazy">
														<iaixsl:if test="@gfx_omo_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_omo_mobile_width"/></iaixsl:attribute></iaixsl:if>
														<iaixsl:if test="@gfx_omo_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_omo_mobile_height"/></iaixsl:attribute></iaixsl:if>
													</img>
												</iaixsl:when>
												<iaixsl:otherwise>
													<img alt="{@name}" title="{@name}" src="{@gfx_onmouseover}" loading="lazy">
														<iaixsl:if test="@gfx_onmouseover_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_onmouseover_width"/></iaixsl:attribute></iaixsl:if>
														<iaixsl:if test="@gfx_onmouseover_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_onmouseover_height"/></iaixsl:attribute></iaixsl:if>
													</img>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</picture>
									</iaixsl:if>
									<span class="gfx_lvl_1 d-none"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
								</iaixsl:when>
								<iaixsl:when test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
									<span class="gfx_lvl_1 --omo"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
									<picture class="nav-picture --hover --lvl1">
										<iaixsl:choose>
											<iaixsl:when test="@gfx_omo_type = 'img_rwd'">
												<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_omo_desktop}"/>
												<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_omo_tablet}"/>
												<img alt="{@name}" title="{@name}" src="{@gfx_omo_mobile}" loading="lazy">
													<iaixsl:if test="@gfx_omo_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_omo_mobile_width"/></iaixsl:attribute></iaixsl:if>
													<iaixsl:if test="@gfx_omo_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_omo_mobile_height"/></iaixsl:attribute></iaixsl:if>
												</img>
											</iaixsl:when>
											<iaixsl:otherwise>
												<img alt="{@name}" title="{@name}" src="{@gfx_onmouseover}" loading="lazy">
													<iaixsl:if test="@gfx_onmouseover_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_onmouseover_width"/></iaixsl:attribute></iaixsl:if>
													<iaixsl:if test="@gfx_onmouseover_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_onmouseover_height"/></iaixsl:attribute></iaixsl:if>
												</img>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</picture>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
							<iaixsl:choose>
								<iaixsl:when test="@link and @link != '##'">
									<iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:variable>
						<span class="nav-link-wrapper">
							<iaixsl:copy-of select="$navLink"/>
							<iaixsl:if test="item">
								<button class="nav-link-expand" type="button">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of disable-output-escaping="yes" select="@name"/>, Menu</iaixsl:attribute>
								</button>
							</iaixsl:if>
						</span>
						<iaixsl:if test="item">
							<ul class="navbar-subnav">
								<li class="nav-header">
									<a href="#backLink" class="nav-header__backLink"><i class="icon-angle-left"/></a>
									<iaixsl:copy-of select="$navLink"/>
								</li>
								<iaixsl:for-each select="item">
									<li class="nav-item">
										<iaixsl:if test="((count(item) = 0) and $dlmenu_showmore)">
											<iaixsl:attribute name="class">nav-item empty</iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
											<iaixsl:attribute name="class">nav-item nav-open</iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) ) and ((count(item) = 0) and $dlmenu_showmore)">
											<iaixsl:attribute name="class">nav-item nav-open empty</iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:variable name="navLinkSub">
											<iaixsl:choose>
												<iaixsl:when test="@link and @link != '##'">
													<iaixsl:text disable-output-escaping="yes">&lt;a  href=&quot;</iaixsl:text>
													<iaixsl:value-of select="@link"/><iaixsl:text disable-output-escaping="yes">&quot; target=&quot;</iaixsl:text><iaixsl:value-of select="@target"/>
													<iaixsl:text disable-output-escaping="yes">&quot; title=&quot;</iaixsl:text><iaixsl:value-of select="@name"/>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:text disable-output-escaping="yes">&lt;span</iaixsl:text>
													<iaixsl:text disable-output-escaping="yes"> title=&quot;</iaixsl:text>
													<iaixsl:value-of select="@name"/>
												</iaixsl:otherwise>
											</iaixsl:choose>
											<iaixsl:text disable-output-escaping="yes">&quot; class=&quot;nav-link --l2</iaixsl:text>
											<iaixsl:if test="(@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)">
												<iaixsl:text disable-output-escaping="yes"> active</iaixsl:text>
											</iaixsl:if>
											<iaixsl:if test="(((@gfx_inactive_type = 'img' and @gfx) or (@gfx_inactive_type = 'img_rwd' and (@gfx_inactive_desktop or @gfx_inactive_tablet or @gfx_inactive_mobile))) or ((@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile)))) and $gfx_2lvl_show">
												<iaixsl:text disable-output-escaping="yes"> nav-gfx</iaixsl:text>
												<iaixsl:if test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
													<iaixsl:text disable-output-escaping="yes"> nav-hover</iaixsl:text>
												</iaixsl:if>
											</iaixsl:if>

											<iaixsl:text disable-output-escaping="yes">&quot; &gt;</iaixsl:text>

											<iaixsl:choose>
												<iaixsl:when test="((@gfx_inactive_type = 'img' and @gfx) or (@gfx_inactive_type = 'img_rwd' and (@gfx_inactive_desktop or @gfx_inactive_tablet or @gfx_inactive_mobile))) and $gfx_2lvl_show">
													<picture class="nav-picture --main --lvl2">
														<iaixsl:choose>
															<iaixsl:when test="@gfx_inactive_type = 'img_rwd'">
																<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_inactive_desktop}"/>
																<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_inactive_tablet}"/>
																<img alt="{@name}" title="{@name}" src="{@gfx_inactive_mobile}" loading="lazy">
																	<iaixsl:if test="@gfx_inactive_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_inactive_mobile_width"/></iaixsl:attribute></iaixsl:if>
																	<iaixsl:if test="@gfx_inactive_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_inactive_mobile_height"/></iaixsl:attribute></iaixsl:if>
																</img>
															</iaixsl:when>
															<iaixsl:otherwise>
																<img alt="{@name}" title="{@name}" src="{@gfx}" loading="lazy">
																	<iaixsl:if test="@gfx_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_width"/></iaixsl:attribute></iaixsl:if>
																	<iaixsl:if test="@gfx_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_height"/></iaixsl:attribute></iaixsl:if>
																</img>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</picture>
													<iaixsl:if test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
														<picture class="nav-picture --hover --lvl2">
															<iaixsl:choose>
																<iaixsl:when test="@gfx_omo_type = 'img_rwd'">
																	<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_omo_desktop}"/>
																	<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_omo_tablet}"/>
																	<img alt="{@name}" title="{@name}" src="{@gfx_omo_mobile}" loading="lazy">
																		<iaixsl:if test="@gfx_omo_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_omo_mobile_width"/></iaixsl:attribute></iaixsl:if>
																		<iaixsl:if test="@gfx_omo_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_omo_mobile_height"/></iaixsl:attribute></iaixsl:if>
																	</img>
																</iaixsl:when>
																<iaixsl:otherwise>
																	<img alt="{@name}" title="{@name}" src="{@gfx_onmouseover}" loading="lazy">
																		<iaixsl:if test="@gfx_onmouseover_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_onmouseover_width"/></iaixsl:attribute></iaixsl:if>
																		<iaixsl:if test="@gfx_onmouseover_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_onmouseover_height"/></iaixsl:attribute></iaixsl:if>
																	</img>
																</iaixsl:otherwise>
															</iaixsl:choose>
														</picture>
													</iaixsl:if>
													<span class="gfx_lvl_2 d-none"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
												</iaixsl:when>
												<iaixsl:when test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
													<span class="gfx_lvl_2 --omo"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
													<picture class="nav-picture --hover --lvl2">
														<iaixsl:choose>
															<iaixsl:when test="@gfx_omo_type = 'img_rwd'">
																<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_omo_desktop}"/>
																<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_omo_tablet}"/>
																<img alt="{@name}" title="{@name}" src="{@gfx_omo_mobile}" loading="lazy">
																	<iaixsl:if test="@gfx_omo_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_omo_mobile_width"/></iaixsl:attribute></iaixsl:if>
																	<iaixsl:if test="@gfx_omo_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_omo_mobile_height"/></iaixsl:attribute></iaixsl:if>
																</img>
															</iaixsl:when>
															<iaixsl:otherwise>
																<img alt="{@name}" title="{@name}" src="{@gfx_onmouseover}" loading="lazy">
																	<iaixsl:if test="@gfx_onmouseover_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_onmouseover_width"/></iaixsl:attribute></iaixsl:if>
																	<iaixsl:if test="@gfx_onmouseover_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_onmouseover_height"/></iaixsl:attribute></iaixsl:if>
																</img>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</picture>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
												</iaixsl:otherwise>
											</iaixsl:choose>
											<iaixsl:choose>
												<iaixsl:when test="@link and @link != '##'">
													<iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</iaixsl:variable>
										<iaixsl:copy-of select="$navLinkSub"/>
										<iaixsl:if test="item">
											<ul class="navbar-subsubnav">
												<iaixsl:if test="((count(item) &gt; $dlmenu_shownumber) and $dlmenu_showmore)">
													<iaixsl:attribute name="class">navbar-subsubnav more</iaixsl:attribute>
												</iaixsl:if>
												<li class="nav-header">
													<a href="#backLink" class="nav-header__backLink"><i class="icon-angle-left"/></a>
													<iaixsl:copy-of select="$navLinkSub"/>
												</li>
												<iaixsl:for-each select="item">
													<li class="nav-item">
														<iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
															<iaixsl:attribute name="class">nav-item nav-open</iaixsl:attribute>
														</iaixsl:if>
														<iaixsl:choose>
															<iaixsl:when test="@link and @link != '##'">
																<iaixsl:text disable-output-escaping="yes">&lt;a  href=&quot;</iaixsl:text>
																<iaixsl:value-of select="@link"/><iaixsl:text disable-output-escaping="yes">&quot; target=&quot;</iaixsl:text><iaixsl:value-of select="@target"/>
																<iaixsl:text disable-output-escaping="yes">&quot; title=&quot;</iaixsl:text><iaixsl:value-of select="@name"/>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:text disable-output-escaping="yes">&lt;span</iaixsl:text>
																<iaixsl:text disable-output-escaping="yes"> title=&quot;</iaixsl:text>
																<iaixsl:value-of select="@name"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
														<iaixsl:text disable-output-escaping="yes">&quot; class=&quot;nav-link --l3</iaixsl:text>
														<iaixsl:if test="(@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)">
															<iaixsl:text disable-output-escaping="yes"> active</iaixsl:text>
														</iaixsl:if>
														<iaixsl:if test="(((@gfx_inactive_type = 'img' and @gfx) or (@gfx_inactive_type = 'img_rwd' and (@gfx_inactive_desktop or @gfx_inactive_tablet or @gfx_inactive_mobile))) or ((@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile)))) and $gfx_3lvl_show">
															<iaixsl:text disable-output-escaping="yes"> nav-gfx</iaixsl:text>
															<iaixsl:if test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
																<iaixsl:text disable-output-escaping="yes"> nav-hover</iaixsl:text>
															</iaixsl:if>
														</iaixsl:if>

														<iaixsl:text disable-output-escaping="yes">&quot; &gt;</iaixsl:text>

														<iaixsl:choose>
															<iaixsl:when test="((@gfx_inactive_type = 'img' and @gfx) or (@gfx_inactive_type = 'img_rwd' and (@gfx_inactive_desktop or @gfx_inactive_tablet or @gfx_inactive_mobile))) and $gfx_3lvl_show">
																<picture class="nav-picture --main --lvl3">
																	<iaixsl:choose>
																		<iaixsl:when test="@gfx_inactive_type = 'img_rwd'">
																			<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_inactive_desktop}"/>
																			<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_inactive_tablet}"/>
																			<img alt="{@name}" title="{@name}" src="{@gfx_inactive_mobile}" loading="lazy">
																				<iaixsl:if test="@gfx_inactive_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_inactive_mobile_width"/></iaixsl:attribute></iaixsl:if>
																				<iaixsl:if test="@gfx_inactive_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_inactive_mobile_height"/></iaixsl:attribute></iaixsl:if>
																			</img>
																		</iaixsl:when>
																		<iaixsl:otherwise>
																			<img alt="{@name}" title="{@name}" src="{@gfx}" loading="lazy">
																				<iaixsl:if test="@gfx_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_width"/></iaixsl:attribute></iaixsl:if>
																				<iaixsl:if test="@gfx_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_height"/></iaixsl:attribute></iaixsl:if>
																			</img>
																		</iaixsl:otherwise>
																	</iaixsl:choose>
																</picture>
																<iaixsl:if test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
																	<picture class="nav-picture --hover --lvl3">
																		<iaixsl:choose>
																			<iaixsl:when test="@gfx_omo_type = 'img_rwd'">
																				<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_omo_desktop}"/>
																				<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_omo_tablet}"/>
																				<img alt="{@name}" title="{@name}" src="{@gfx_omo_mobile}" loading="lazy">
																					<iaixsl:if test="@gfx_omo_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_omo_mobile_width"/></iaixsl:attribute></iaixsl:if>
																					<iaixsl:if test="@gfx_omo_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_omo_mobile_height"/></iaixsl:attribute></iaixsl:if>
																				</img>
																			</iaixsl:when>
																			<iaixsl:otherwise>
																				<img alt="{@name}" title="{@name}" src="{@gfx_onmouseover}" loading="lazy">
																					<iaixsl:if test="@gfx_onmouseover_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_onmouseover_width"/></iaixsl:attribute></iaixsl:if>
																					<iaixsl:if test="@gfx_onmouseover_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_onmouseover_height"/></iaixsl:attribute></iaixsl:if>
																				</img>
																			</iaixsl:otherwise>
																		</iaixsl:choose>
																	</picture>
																</iaixsl:if>
																<span class="gfx_lvl_3 d-none"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
															</iaixsl:when>
															<iaixsl:when test="(@gfx_omo_type = 'img' and @gfx_onmouseover) or (@gfx_omo_type = 'img_rwd' and (@gfx_omo_desktop or @gfx_omo_tablet or @gfx_omo_mobile))">
																<span class="gfx_lvl_3 --omo"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
																<picture class="nav-picture --hover --lvl3">
																	<iaixsl:choose>
																		<iaixsl:when test="@gfx_omo_type = 'img_rwd'">
																			<source media="(min-width: 979px)" type="image/jpeg" srcset="{@gfx_omo_desktop}"/>
																			<source media="(min-width: 757px)" type="image/jpeg" srcset="{@gfx_omo_tablet}"/>
																			<img alt="{@name}" title="{@name}" src="{@gfx_omo_mobile}" loading="lazy">
																				<iaixsl:if test="@gfx_omo_mobile_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_omo_mobile_width"/></iaixsl:attribute></iaixsl:if>
																				<iaixsl:if test="@gfx_omo_mobile_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_omo_mobile_height"/></iaixsl:attribute></iaixsl:if>
																			</img>
																		</iaixsl:when>
																		<iaixsl:otherwise>
																			<img alt="{@name}" title="{@name}" src="{@gfx_onmouseover}" loading="lazy">
																				<iaixsl:if test="@gfx_onmouseover_width"><iaixsl:attribute name="width"><iaixsl:value-of select="@gfx_onmouseover_width"/></iaixsl:attribute></iaixsl:if>
																				<iaixsl:if test="@gfx_onmouseover_height"><iaixsl:attribute name="height"><iaixsl:value-of select="@gfx_onmouseover_height"/></iaixsl:attribute></iaixsl:if>
																			</img>
																		</iaixsl:otherwise>
																	</iaixsl:choose>
																</picture>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
													<iaixsl:choose>
														<iaixsl:when test="@link and @link != '##'">
															<iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
														</iaixsl:otherwise>
													</iaixsl:choose>
													</li>
												</iaixsl:for-each>
												<iaixsl:if test="(count(item) &gt; $dlmenu_showall_count) and @link and @display_all = 'y' and $dlmenu_showall">
													<li class="nav-item --all">
														<a class="nav-link --l3">
															<iaixsl:attribute name="href">
																<iaixsl:choose>
																	<iaixsl:when test="@display_all_link">
																		<iaixsl:value-of select="@display_all_link"/>
																	</iaixsl:when>
																	<iaixsl:otherwise>
																		<iaixsl:value-of select="@link"/>
																	</iaixsl:otherwise>
																</iaixsl:choose>
															</iaixsl:attribute>
															<iaixsl:value-of select="$dlmenu_showall"/>
														</a>
													</li>
												</iaixsl:if>
												<iaixsl:if test="(count(item) &gt; $dlmenu_shownumber) and $dlmenu_showmore">
													<li class="nav-item --extend">
														<a href="" class="nav-link --l3">
															<iaixsl:attribute name="txt_alt"><iaixsl:value-of select="$dlmenu_hide"/></iaixsl:attribute>
															<iaixsl:value-of select="$dlmenu_extend"/>
														</a>
													</li>
												</iaixsl:if>
											</ul>
										</iaixsl:if>
									</li>
								</iaixsl:for-each>
								<iaixsl:if test="(count(item) &gt; $dlmenu_showall_count) and @link and @display_all = 'y' and $dlmenu_showall">
									<li class="nav-item --all empty">
										<a class="nav-link --l2">
											<iaixsl:attribute name="href">
												<iaixsl:choose>
													<iaixsl:when test="@display_all_link">
														<iaixsl:value-of select="@display_all_link"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="@link"/>
													</iaixsl:otherwise>
												</iaixsl:choose>
											</iaixsl:attribute>
											<iaixsl:value-of select="$dlmenu_showall"/>
										</a>
									</li>
								</iaixsl:if>
							</ul>
						</iaixsl:if>
					</li>
				</iaixsl:for-each>
			</ul>
		</div>
	</nav>
	<iaixsl:if test="/shop/page/navigation/item/@gfx_active_desktop"> </iaixsl:if>
<!-- (projector_stepper, 60dd8f83ac0552.84329940.11)-->
  <iaixsl:variable name="searchResults_title"/>
  <iaixsl:variable name="breadcrumbs_label">Jesteś tutaj:  </iaixsl:variable>
  <div id="breadcrumbs" class="breadcrumbs">
    <div class="back_button">
      <iaixsl:attribute name="class">back_button</iaixsl:attribute>
      <button id="back_button"><i class="icon-angle-left"/> Wstecz</button>
    </div>
    <nav class="list_wrapper">
			<iaixsl:attribute name="aria-label">Nawigacja okruszkowa</iaixsl:attribute>
      <ol>
        <iaixsl:if test="$breadcrumbs_label">
          <li>
            <span><iaixsl:value-of select="$breadcrumbs_label"/></span>
          </li>
        </iaixsl:if>
        <li class="bc-main">
          <span><a href="/">Strona główna</a></span>
        </li>
        <iaixsl:choose>
          <iaixsl:when test="page/@type = 'main'">
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'wishesedit' or page/@type = 'shoppinglist'">
            <li>
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Ulubione</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'basketedit'">
            <li>
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Koszyk</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'product-stocks'">
            <li>
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Dostępność produktu w sklepach</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'blog-list'">
            <iaixsl:choose>
              <iaixsl:when test="page/navigation/bycategories/item[@current='active']">
                <li>
                  <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <a href="/blog-list.php">
                    <iaixsl:if test="/shop/action/blogList/@url">
                      <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/blogList/@url"/></iaixsl:attribute>
                    </iaixsl:if>
                    Blog
                  </a>
                </li>
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span><iaixsl:value-of select="page/navigation/bycategories/item[@current='active']/@value"/></span>
                </li>
              </iaixsl:when>
              <iaixsl:otherwise>
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span>Blog</span>
                </li>
              </iaixsl:otherwise>
            </iaixsl:choose>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'blog-item'">
            <li>
              <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <a href="/blog-list.php">
                <iaixsl:if test="/shop/action/blogList/@url">
                  <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/blogList/@url"/></iaixsl:attribute>
                </iaixsl:if>
                Blog
              </a>
            </li>
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span><iaixsl:value-of select="page/blogitem/title/text()"/></span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'opinions-photos'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Opinie</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'opinions-shop'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Opinie o sklepie</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'categories-list'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Lista kategorii</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order-payment'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Płatności</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order-newpayment'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Płatności</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order-wrappers'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Wybierz opakowanie</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'news'">
            <iaixsl:choose>
              <iaixsl:when test="/shop/page/news/title">
                <li>
                  <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <a>
                    <iaixsl:attribute name="href">/news.php</iaixsl:attribute>
                    Aktualności
                  </a>
                </li>
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/news/title"/></span>
                </li>
              </iaixsl:when>
              <iaixsl:otherwise>
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span>Aktualności</span>
                </li>
              </iaixsl:otherwise>
            </iaixsl:choose>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'client-rebates'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Twoje rabaty</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'sitemap'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Mapa strony</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'client-save'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Logowanie</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="((page/@type = 'client-new') and not(page/client-data/@register='true') and not(page/client-data/@edit='true'))">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Rejestracja</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="((page/@type = 'client-new') and (page/client-data/@register='true'))">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Rejestracja</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="((page/@type = 'client-new') and (page/client-data/@edit='true'))">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Edycja danych</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order-nonstandardized'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Zamówienie niestandardowe</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'pickup-sites'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Wybierz punkt odbioru</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'contact'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Kontakt</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'links'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Linki</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'login'">
            <iaixsl:if test="page/login/response/@type = 'give login'">
              <li aria-current="page">
                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                <span>Przypomnij hasło</span>
              </li>
            </iaixsl:if>
            <iaixsl:if test="not(page/login/response/@type = 'give login')">
              <iaixsl:choose>
                <iaixsl:when test="/shop/basket/@login">
                  <li aria-current="page">
                    <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                    <span>Twoje konto</span>
                  </li>
                </iaixsl:when>
                <iaixsl:when test="page/login/response/@type = 'no login'">
                  <li aria-current="page">
                    <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                    <span>Logowanie</span>
                  </li>
                </iaixsl:when>
              </iaixsl:choose>
            </iaixsl:if>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'rma-add'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Dodaj reklamację</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'rma_products'">
            <iaixsl:choose>
              <iaixsl:when test="page/@display = 'confirmation'">
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span/>
                </li>
              </iaixsl:when>
              <iaixsl:when test="page/@display = 'details'">
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span/>
                </li>
              </iaixsl:when>
              <iaixsl:when test="page/@display = 'add'">
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span/>
                </li>
              </iaixsl:when>
              <iaixsl:when test="page/@display = 'stock'">
                <li aria-current="page">
                  <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                  <span/>
                </li>
              </iaixsl:when>
            </iaixsl:choose>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'rma-list'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Lista reklamacji</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'stock'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Punkt odbioru</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order1'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Dostawa i płatności</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order2'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Potwierdzenie danych</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'prepaid'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Podsumowanie zamówienia</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'producers-list'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Marki</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'searching'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Szukaj</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'text'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span><iaixsl:value-of select="page/text/@name"/></span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'return'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Uwaga</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'client-orders'">
            <li>
              <iaixsl:attribute name="class">bc-active bc-login</iaixsl:attribute>
              <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>Twoje konto</a>
            </li>
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Twoje zamówienia</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'order-open'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Status zamówienia</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'product-compare'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Porównywarka</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'products-bought'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Lista zakupionych produktów</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'return_products'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Zwrot zamówienia</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'client-cards'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Karty stałego klienta</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'navigation' or page/@type = 'search'">
            <iaixsl:choose>
              <iaixsl:when test="bc/item">
                <iaixsl:for-each select="bc/item">
                  <iaixsl:variable name="current_ni"><iaixsl:value-of select="@ni"/></iaixsl:variable>
                  
                    <iaixsl:variable name="current_navi">
                      <iaixsl:choose>
                        <iaixsl:when test="( count(/shop/navigation//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation</iaixsl:when>
                        <iaixsl:when test="( count(/shop/navigation2//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation2</iaixsl:when>
                        <iaixsl:when test="( count(/shop/navigation3//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation3</iaixsl:when>
                        <iaixsl:when test="( count(/shop/navigation4//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation4</iaixsl:when>
                        <iaixsl:when test="( count(/shop/navigation5//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation5</iaixsl:when>
                        <iaixsl:otherwise>0</iaixsl:otherwise>
                      </iaixsl:choose>
                    </iaixsl:variable>
                  <li>
                    <iaixsl:attribute name="class">bc-item-<iaixsl:value-of select="position()"/><iaixsl:if test="position() = last()"> bc-active</iaixsl:if><iaixsl:if test="count(/shop/*[name()=$current_navi]//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last())"> --more</iaixsl:if></iaixsl:attribute>
										<iaixsl:if test="position() = last()">
											<iaixsl:attribute name="aria-current">page</iaixsl:attribute>
										</iaixsl:if>
                    <iaixsl:choose>
                      <iaixsl:when test="not(position() = last()) and /shop/navigation//item[@ni = $current_ni]/@link">
                        <a>
                          <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                          <iaixsl:value-of disable-output-escaping="yes" select="@title"/>
                        </a>
                      </iaixsl:when>
                      <iaixsl:otherwise>
                        <span>
                          <iaixsl:value-of disable-output-escaping="yes" select="@title"/>
                        </span>
                      </iaixsl:otherwise>
                    </iaixsl:choose>

                    
                    <iaixsl:if test="$current_navi != 0">
                      <ul class="breadcrumbs__sub">
                        <iaixsl:for-each select="/shop/*[name()=$current_navi]//item[@ni = $current_ni]/item">
                          <li class="breadcrumbs__item">
                            <iaixsl:choose>
                              <iaixsl:when test="@link and @link != '##'">
                                <a class="breadcrumbs__link --link">
                                  <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                  <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                </a>
                              </iaixsl:when>
                              <iaixsl:otherwise>
                                <span class="breadcrumbs__link"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
                              </iaixsl:otherwise>
                            </iaixsl:choose>
                          </li>
                        </iaixsl:for-each>
                      </ul>
                    </iaixsl:if>
                  </li>
                </iaixsl:for-each>
              </iaixsl:when>
              <iaixsl:otherwise>
                <iaixsl:if test="$searchResults_title">
                  <li>
                    <span>
                      <iaixsl:value-of select="$searchResults_title"/>
                      <iaixsl:if test="page/search_params/text/@value and not(page/search_params/text/@value='')">
                        <iaixsl:value-of select="page/search_params/text/@value"/>
                      </iaixsl:if>
                    </span>
                  </li>
                </iaixsl:if>
              </iaixsl:otherwise>
            </iaixsl:choose>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'projector'">
            <iaixsl:for-each select="bc/item">
              <iaixsl:variable name="current_ni"><iaixsl:value-of select="@ni"/></iaixsl:variable>
              
              <iaixsl:variable name="current_navi">
                <iaixsl:choose>
                  <iaixsl:when test="( count(/shop/navigation//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation</iaixsl:when>
                  <iaixsl:when test="( count(/shop/navigation2//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation2</iaixsl:when>
                  <iaixsl:when test="( count(/shop/navigation3//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation3</iaixsl:when>
                  <iaixsl:when test="( count(/shop/navigation4//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation4</iaixsl:when>
                  <iaixsl:when test="( count(/shop/navigation5//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last()) )">navigation5</iaixsl:when>
                  <iaixsl:otherwise>0</iaixsl:otherwise>
                </iaixsl:choose>
              </iaixsl:variable>
              <li>
                <iaixsl:attribute name="class">category bc-item-<iaixsl:value-of select="position()"/><iaixsl:if test="position() = last()"> bc-active</iaixsl:if><iaixsl:if test="count(/shop/*[name()=$current_navi]//item[@ni = $current_ni]/item) &gt; 1 and not(position() = last())"> --more</iaixsl:if></iaixsl:attribute>
								<iaixsl:if test="position() = last()">
									<iaixsl:attribute name="aria-current">page</iaixsl:attribute>
								</iaixsl:if>
                <iaixsl:choose>
                  <iaixsl:when test="/shop/navigation//item[@ni = $current_ni]/@link">
                    <a>
                      <iaixsl:attribute name="class">category</iaixsl:attribute>
                      <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                      <iaixsl:value-of disable-output-escaping="yes" select="@title"/>
                    </a>
                  </iaixsl:when>
                  <iaixsl:otherwise>
                    <span>
                      <iaixsl:attribute name="class">category</iaixsl:attribute>
                      <iaixsl:value-of disable-output-escaping="yes" select="@title"/>
                    </span>
                  </iaixsl:otherwise>
                </iaixsl:choose>

                <iaixsl:if test="$current_navi != 0">
                  <ul class="breadcrumbs__sub">
                    <iaixsl:for-each select="/shop/*[name()=$current_navi]//item[@ni = $current_ni]/item">
                      <li class="breadcrumbs__item">
                        <iaixsl:choose>
                          <iaixsl:when test="@link and @link != '##'">
                            <a class="breadcrumbs__link --link">
                              <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                              <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                            </a>
                          </iaixsl:when>
                          <iaixsl:otherwise>
                            <span class="breadcrumbs__link"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
                          </iaixsl:otherwise>
                        </iaixsl:choose>
                      </li>
                    </iaixsl:for-each>
                  </ul>
                </iaixsl:if>
              </li>
            </iaixsl:for-each>
            <li class="bc-active bc-product-name" aria-current="page">
              <span><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/name"/></span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'place-order'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Jednokrokowy proces zakupowy</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'rma-open'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Reklamacja bez logowania</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'returns-open'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Zwrot bez logowania</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'opinions-add'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Dodawanie opinii</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'noproduct'">
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Brak produktu</span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'subscriptions'">
            <li>
              <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>Twoje konto</a>
            </li>
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span><iaixsl:choose><iaixsl:when test="/shop/page/subscriptions/@display = 'active'">Lista aktywnych subskrypcji</iaixsl:when><iaixsl:otherwise>Lista zakończonych subskrypcji</iaixsl:otherwise></iaixsl:choose></span>
            </li>
          </iaixsl:when>
          <iaixsl:when test="page/@type = 'subscription'">
            <li>
              <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>Twoje konto</a>
            </li>
            <li>
              <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <a><iaixsl:choose><iaixsl:when test="/shop/page/subscription/@status != 'finished'"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/subscriptions_active/@url"/></iaixsl:attribute>Lista aktywnych subskrypcji</iaixsl:when><iaixsl:otherwise><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/subscriptions_terminated/@url"/></iaixsl:attribute>Lista zakończonych subskrypcji</iaixsl:otherwise></iaixsl:choose></a>
            </li>
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span>Subskrypcja nr<iaixsl:text> </iaixsl:text><iaixsl:value-of select="/shop/page/subscription/@id"/></span>
            </li>
          </iaixsl:when>
          
          <iaixsl:otherwise>
            <li aria-current="page">
              <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
              <span><iaixsl:value-of select="page/@type"/></span>
            </li>
          </iaixsl:otherwise>
        </iaixsl:choose>
      </ol>
    </nav>
  </div>
<!-- (add_codes_to_basket, 6231adc3dffe23.45167554.9)-->
	<iaixsl:variable name="addCodesToBasketVariable">true</iaixsl:variable>
	<div id="addCodesToBasket" class="addCodesToBasket">
		<h3 class="big_label">Dodaj produkty podając kody</h3>
		<div class="addCodesToBasket__form">
			<div class="addCodesToBasket__input --file">
				<label>Wgraj pliki z kodami</label>
				<div class="f-group --file">
					<span><i class="icon-paperclip"/><span>Dodaj plik CSV</span></span>
					<label class="f-label" for="addCodesToBasket__file">Wybierz pliki</label>
					<input type="file" id="addCodesToBasket__file" class="f-control addCodesToBasket__file"/>
				</div>
			</div>
			<div class="addCodesToBasket__input --textarea">
				<label>Uzupełnij listę kodów</label>
				<div class="f-group">
				<textarea type="text" id="addCodesToBasket__textarea" placeholder="" class="f-control addCodesToBasket__textarea">
				  <iaixsl:attribute name="placeholder">Przykładowe kody produktów</iaixsl:attribute>
				</textarea>
				</div>
				<span>
					Wpisz kody produktów, które chcesz zbiorczo dodać do koszyka (po przecinku, ze spacją lub od nowej linijki). 
					Powtórzenie wielokrotnie kodu, doda ten towar tyle razy ile razy występuje.
				</span>
			</div>
			<div class="addCodesToBasket__buttons"><a class="btn --solid --large" id="addCodesToBasketSubmit">Dodaj do koszyka</a></div>
		</div>
	</div>

			</header>
		</iaixsl:if>
		<div id="layout">
			<iaixsl:attribute name="class">row clearfix</iaixsl:attribute>
			<iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'aside')">
				<aside class="span3">
					<iaixsl:choose>
						<iaixsl:when test="page/@type = 'projector'">
							<iaixsl:attribute name="class">col-3</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'search'">
							<iaixsl:attribute name="class">col-3 col-xl-2</iaixsl:attribute>
							<iaixsl:attribute name="aria-label">Kategorie i filtry</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'main'">
							<iaixsl:attribute name="class">col-3</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'blog-item'">
							<iaixsl:attribute name="class">col-3 col-xl-2</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'blog-list'">
							<iaixsl:attribute name="class">col-3 col-xl-2</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:attribute name="class">col-3</iaixsl:attribute>
						</iaixsl:otherwise>
					</iaixsl:choose>
					<!-- (menu_wishlist, 60dd8e8b0e7ae0.46829877.7)-->
	<section class="shopping_list_menu">
		<div class="shopping_list_menu__block --lists slm_lists" data-empty="false">
			<iaixsl:if test="not(/shop/shopping_lists/list)">
				<iaixsl:attribute name="data-empty">true</iaixsl:attribute>
			</iaixsl:if>
			<a href="#showShoppingLists" class="slm_lists__label">Ulubione</a>
			<ul class="slm_lists__nav">
				<li class="slm_lists__nav_item" data-list_skeleton="true" data-list_id="true" data-shared="true">
					<a href="#" class="slm_lists__nav_link" data-list_href="true">
						<span class="slm_lists__nav_name" data-list_name="true"/>
						<span class="slm_lists__count" data-list_count="true">0</span>
					</a>
				</li>
				<li class="slm_lists__nav_header">
					<a href="#hidehoppingLists" class="slm_lists__label"><span class="sr-only">Wróć</span>Ulubione</a>
				</li>
				<iaixsl:if test="not(/shop/shopping_lists/list)">
					<li class="slm_lists__nav_item --empty">
						<a class="slm_lists__nav_link --empty">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shoppinglist/@url"/></iaixsl:attribute>
							<span class="slm_lists__nav_name" data-list_name="true">Lista zakupowa</span>
							<span class="sr-only">ilość produktów: </span>
							<span class="slm_lists__count" data-list_count="true">0</span>
						</a>
					</li>
				</iaixsl:if>
				<iaixsl:for-each select="/shop/shopping_lists/list">
					<li class="slm_lists__nav_item">
						<iaixsl:attribute name="data-list_id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
						<iaixsl:if test="@id = /shop/page/list/@id">
							<iaixsl:attribute name="data-current">true</iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:if test="@shared = 'true'">
							<iaixsl:attribute name="data-shared">true</iaixsl:attribute>
						</iaixsl:if>
						<a class="slm_lists__nav_link">
							<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
							<span class="slm_lists__nav_name" data-list_name="true"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
							<span class="sr-only">ilość produktów: </span>
							<span class="slm_lists__count" data-list_count="true"><iaixsl:value-of select="@count"/></span>
							<iaixsl:if test="@shared = 'true'">
								<span class="sr-only">udostępniona</span>
							</iaixsl:if>
						</a>
					</li>
				</iaixsl:for-each>
			</ul>
			<a href="#manage" class="slm_lists__manage d-none align-items-center d-md-flex">Zarządzaj listami</a>
		</div>
		<div class="shopping_list_menu__block --bought slm_bought">
			<a class="slm_bought__link d-flex">
				<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/productsBought/@url"/></iaixsl:attribute>
				Lista dotychczas zamówionych produktów
			</a>
		</div>
		<div class="shopping_list_menu__block --info slm_info">
			<strong class="slm_info__label d-block mb-3">Jak działa lista zakupowa?</strong>
			<ul class="slm_info__list">
				<li class="slm_info__list_item d-flex mb-3">
					Po zalogowaniu możesz umieścić i przechowywać na liście ulubionych dowolną liczbę produktów nieskończenie długo.
				</li>
				<li class="slm_info__list_item d-flex mb-3">
					Dodanie produktu do listy ulubionych nie oznacza jego rezerwacji.
				</li>
				<li class="slm_info__list_item d-flex mb-3">
					Dla niezalogowanych klientów lista zakupowa przechowywana jest do momentu wygaśnięcia sesji (około 24h).
				</li>
			</ul>
		</div>
	</section>
<!-- (menu_additional1, 614c5ced7d3ae0.06165226.8)-->
            <iaixsl:variable name="SET_filters"/>
            <iaixsl:variable name="SET_categories">1</iaixsl:variable>
            <iaixsl:if test="$SET_categories and not($SET_categories = '')">
                <div id="mobileCategories" class="mobileCategories">
                    <div class="mobileCategories__item --menu">
                        <button type="button" class="mobileCategories__link --active">
                            <iaixsl:attribute name="data-ids">#menu_search,.shopping_list_menu,#menu_search,#menu_navbar,#menu_navbar3, #menu_blog</iaixsl:attribute>
                            Menu
                        </button>
                    </div>
                    <div class="mobileCategories__item --account">
                        <button type="button" class="mobileCategories__link">
                            <iaixsl:attribute name="data-ids">#menu_contact,#login_menu_block</iaixsl:attribute>
                            Konto
                        </button>
                    </div>
                    <iaixsl:if test="((count(/shop/currency/option) &gt; 1) or (count(/shop/language/option) &gt; 1) or (count(/shop/countries/country) &gt; 1)) and not(/shop/select_language/@country_first = 'true')">
                        <div class="mobileCategories__item --settings">
                            <button type="button" class="mobileCategories__link">
                                <iaixsl:attribute name="data-ids">#menu_settings</iaixsl:attribute>
                                Ustawienia
                            </button>
                        </div>
                    </iaixsl:if>
                    <iaixsl:if test="count(/shop/select_language/language/option) &gt; 1 and /shop/select_language/@country_first = 'true'">
                      <div class="mobileCategories__item --settings --select_language">
                          <button type="button" class="mobileCategories__link">
                              <iaixsl:attribute name="data-ids">#menu_settings</iaixsl:attribute>
                              <iaixsl:value-of select="/shop/select_language/language/option[@selected = 'true']/text()"/>
                          </button>
                      </div>
                    </iaixsl:if>
                </div>
            </iaixsl:if>
            <div class="setMobileGrid" data-item="#menu_navbar"/>
            <div class="setMobileGrid" data-item="#menu_navbar3">
				<iaixsl:if test="navigation/item">
					<iaixsl:attribute name="data-ismenu1">true</iaixsl:attribute>
				</iaixsl:if>
			</div>
            <div class="setMobileGrid" data-item="#menu_blog"/>
            <div class="login_menu_block d-lg-none" id="login_menu_block">
                <iaixsl:choose>
                    <iaixsl:when test="basket/@login">
                        <a class="your_account_link" href="/login.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-cog"/>  <span>Twoje konto</span>
                            
                        </a>
                        <a class="order_status_link" href="/order-open.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-globe"/>  <span>Sprawdź status zamówienia</span>
                            
                        </a>
                        <iaixsl:if test="(/shop/basket/@client_id_upc != '') ">
                            <a class="client_card_link" href="##">
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of disable-output-escaping="yes" select="action/login/@url"/>
                                </iaixsl:attribute>
                                 <i class="icon-barcode"/>  <span>Identyfikator stałego klienta</span>
                            </a>
                        </iaixsl:if>
                        <a class="rabates_link" href="/client-rebate.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <span class="font_icon">%</span> <span>Moje rabaty</span>
                            
                        </a>
                        <a class="logout_link" href="/login.php?operation=logout">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-off" style="color: #CC0000;"/>  <span>Wyloguj się</span>
                            
                        </a>
                        <iaixsl:if test="action/personalized_recommendations/@url">
                            <a class="recommendation_link">
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of disable-output-escaping="yes" select="action/personalized_recommendations/@url"/>
                                </iaixsl:attribute>

                                <i class="icon-thumbs-up" style="color: #0099D0;"/> <span>Rekomendowane dla Ciebie</span>
                                
                            </a>
                        </iaixsl:if>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <a class="sign_in_link" href="/login.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-user"/>  <span>Moje Konto</span>
                            
                        </a>
                        <a class="registration_link">
                            <iaixsl:choose>
              								<iaixsl:when test="count(/shop/action/registration_options/*) = 1">
              									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/registration_options/*/@registration_url"/></iaixsl:attribute>
              								</iaixsl:when>
              								<iaixsl:otherwise>
              									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/registration_options/retail/@registration_url"/></iaixsl:attribute>
              								</iaixsl:otherwise>
              							</iaixsl:choose>
                            <i class="icon-lock"/>  <span>Zarejestruj się</span>
                            
                        </a>
                        <a class="order_status_link" href="/order-open.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-globe"/>  <span>Sprawdź status zamówienia</span>
                            
                        </a>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </div>
            <div class="setMobileGrid" data-item="#menu_contact"/>
            <div class="setMobileGrid" data-item="#menu_settings"/>
            <iaixsl:if test="$SET_filters and not($SET_filters = '')">
                <div class="setMobileGrid">
                  <iaixsl:attribute name="data-item"><iaixsl:value-of select="$SET_filters"/></iaixsl:attribute>
                </div>
            </iaixsl:if>
        
				</aside>
			</iaixsl:if>
			

			
			<iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'content')">
				<main id="content" class="span9">
					<iaixsl:choose>
						<iaixsl:when test="page/@type = 'projector'">
							<iaixsl:attribute name="class">col-12</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'search'">
							<iaixsl:attribute name="class">col-xl-10 col-md-9 col-12</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'main'">
							<iaixsl:attribute name="class">col-12</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'navigation'">
							<iaixsl:attribute name="class">col-12</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'blog-list'">
							<iaixsl:attribute name="class">col-xl-10 col-md-9 col-12</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="page/@type = 'blog-item'">
							<iaixsl:attribute name="class">col-xl-10 col-md-9 col-12</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:attribute name="class">col-12</iaixsl:attribute>
						</iaixsl:otherwise>
					</iaixsl:choose>

					<!-- (menu_order_progress, 66e40439664030.36656168.5)-->
	
	<iaixsl:variable name="wholesalerPrice_order_progress"><iaixsl:if test="$priceTypeVat = ''">true</iaixsl:if></iaixsl:variable>
	<iaixsl:variable name="cop_global_label"/>

	<iaixsl:if test="not(/shop/page/client-data/@registerByExternalService = 'true')">
		<iaixsl:choose>
			
			<iaixsl:when test="page/@type = 'basketedit' and /shop/checkout/@type = 'oscop'">
				<iaixsl:if test="$cop_global_label">
					<span class="big_label cop_global_label">
						<iaixsl:value-of select="$cop_global_label"/>
					</span>
				</iaixsl:if>

				<section id="Progress" class="progress">
					
					<div class="progress__item --first --active --shopping-cart">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>1</strong>
									<span>/3</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Koszyk:</strong>
							<span class="progress__description"><iaixsl:choose><iaixsl:when test="not($wholesalerPrice_order_progress = '')"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
						</div>
					</div>
					
					<div class="progress__item --second --truck">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>2</strong>
									<span>/3</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Płatność i dostawa</strong>
						</div>
					</div>
					
					<div class="progress__item --fourth --ok">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>3</strong>
									<span>/3</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Zamówienie złożone</strong>
						</div>
					</div>
				</section>
			</iaixsl:when>		
			<iaixsl:when test="page/@type = 'place-order'">
				<iaixsl:if test="$cop_global_label">
					<span class="big_label cop_global_label">
						<iaixsl:value-of select="$cop_global_label"/>
					</span>
				</iaixsl:if>

				<section id="Progress" class="progress">
					
					<a class="progress__item --first --shopping-cart --link">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/></iaixsl:attribute>
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>1</strong>
									<span>/3</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Koszyk:</strong>
							<span class="progress__description"><iaixsl:choose><iaixsl:when test="not($wholesalerPrice_order_progress = '')"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
						</div>
					</a>
					
					<div class="progress__item --second --active --truck">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>2</strong>
									<span>/3</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<h1 class="progress__name">Płatność i dostawa</h1>
						</div>
					</div>
					
					<div class="progress__item --fourth --ok">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>3</strong>
									<span>/3</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Zamówienie złożone</strong>
						</div>
					</div>
				</section>
			</iaixsl:when>
			<iaixsl:when test="page/@type = 'basketedit'">
				<iaixsl:if test="$cop_global_label">
					<span class="big_label cop_global_label">
						<iaixsl:value-of select="$cop_global_label"/>
					</span>
				</iaixsl:if>

				<section id="Progress" class="progress">
					
					<div class="progress__item --first --active --shopping-cart">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>1</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Koszyk:</strong>
							<span class="progress__description"><iaixsl:choose><iaixsl:when test="not($wholesalerPrice_order_progress = '')"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
						</div>
					</div>

					
					<div class="progress__item --second --truck">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>2</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Płatność i dostawa</strong>
							
						</div>
					</div>
					
					<div class="progress__item --third --comment">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>3</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Weryfikacja danych</strong>
							
						</div>
					</div>
					
					<div class="progress__item --fourth --ok">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>4</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Zamówienie złożone</strong>
							
						</div>
					</div>
				</section>
			</iaixsl:when>
		</iaixsl:choose>
		<iaixsl:choose>
			
			<iaixsl:when test="page/@type='login' and page/login/onceorder/@display='y'">
				<iaixsl:if test="$cop_global_label">
					<span class="big_label cop_global_label">
						<iaixsl:value-of select="$cop_global_label"/>
					</span>
				</iaixsl:if>

				<section id="Progress" class="progress py-1 py-md-0">
					
					<a class="progress__item --first --shopping-cart --link">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/></iaixsl:attribute>
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>1</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Koszyk:</strong>
							<span class="progress__description"><iaixsl:choose><iaixsl:when test="not($wholesalerPrice_order_progress = '')"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
						</div>
					</a>
					
					<div class="progress__item --second --active --file-text">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>2</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Twoje dane</strong>
						</div>
					</div>
					
					<div class="progress__item --third --truck">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>3</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Płatność i dostawa</strong>
						</div>
					</div>
					
					<div class="progress__item --fourth --comment">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>4</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Weryfikacja danych</strong>
						</div>
					</div>
				</section>
			</iaixsl:when>
		</iaixsl:choose>
		<iaixsl:choose>
			
			<iaixsl:when test="((page/@type = 'client-new') and not(page/client-data/@edit = 'true') and (page/client-data/@afterlogin = 'order'))">
				<iaixsl:if test="$cop_global_label">
					<span class="big_label cop_global_label">
						<iaixsl:value-of select="$cop_global_label"/>
					</span>
				</iaixsl:if>

				<section id="Progress" class="progress py-1 py-md-0">
					
					<a class="progress__item --first --shopping-cart --link">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/></iaixsl:attribute>
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>1</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Koszyk:</strong>
							<span class="progress__description"><iaixsl:choose><iaixsl:when test="not($wholesalerPrice_order_progress = '')"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
						</div>
					</a>
					
					<div class="progress__item --second --active --file-text">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>2</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Twoje dane</strong>
						</div>
					</div>
					
					<div class="progress__item --third --truck">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>3</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Płatność i dostawa</strong>
						</div>
					</div>
					
					<div class="progress__item --fourth --comment">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>4</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Weryfikacja danych</strong>
						</div>
					</div>
				</section>
			</iaixsl:when>
		</iaixsl:choose>
		<iaixsl:choose>
			
			<iaixsl:when test="page/@type = 'order1'">
				<iaixsl:if test="$cop_global_label">
					<span class="big_label cop_global_label">
						<iaixsl:value-of select="$cop_global_label"/>
					</span>
				</iaixsl:if>

				<section id="Progress" class="progress py-1 py-md-0">
					
					<a class="progress__item --first --shopping-cart --link">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/></iaixsl:attribute>
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>1</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Koszyk:</strong>
							<span class="progress__description"><iaixsl:choose><iaixsl:when test="not($wholesalerPrice_order_progress = '')"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
						</div>
					</a>
					
					<div class="progress__item --second --active --truck">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>2</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<h1 class="progress__name">Płatność i dostawa</h1>
						</div>
					</div>
					
					<div class="progress__item --third --comment">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>3</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Weryfikacja danych</strong>
						</div>
					</div>

					
					<div class="progress__item --fourth --ok">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>4</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Zamówienie złożone</strong>
						</div>
					</div>

				</section>
			</iaixsl:when>
		</iaixsl:choose>
		<iaixsl:choose>
			
			<iaixsl:when test="page/@type = 'order-nonstandardized'">
				<iaixsl:if test="$cop_global_label">
					<span class="big_label cop_global_label">
						<iaixsl:value-of select="$cop_global_label"/>
					</span>
				</iaixsl:if>

				<section id="Progress" class="progress py-1 py-md-0">
					
					<a class="progress__item --first --shopping-cart --link">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/></iaixsl:attribute>
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>1</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Koszyk:</strong>
							<span class="progress__description"><iaixsl:choose><iaixsl:when test="not($wholesalerPrice_order_progress = '')"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
						</div>
					</a>
					
					<div class="progress__item --second --active --truck">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>2</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Płatność i dostawa</strong>
						</div>
					</div>
					
					<div class="progress__item --third --comment">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>3</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Weryfikacja danych</strong>
						</div>
					</div>

					<iaixsl:choose>
						<iaixsl:when test="not(basket/@login) and not(navigation/@order_express_mode='true')">
							
							<div class="progress__item --fourth --file-text">
								<div class="progress__icons">
									<div class="progress__icon --mobile d-md-none" aria-hidden="true">
										<span class="progress__step">
											<strong>4</strong>
											<span>/4</span>
										</span>
										<svg class="progress__svg">
											<circle class="progress__circle_back"/>
											<circle class="progress__circle"/>
										</svg>
									</div>
									<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
										<span class="progress__fontello"/>
									</div>
								</div>
								<div class="progress__text">
								  <span class="sr-only">Krok procesu zakupowego</span>
									<strong class="progress__name">Zapisanie danych</strong>
								</div>
							</div>
						</iaixsl:when>
						<iaixsl:otherwise>
							
							<div class="progress__item --fourth --ok">
								<div class="progress__icons">
									<div class="progress__icon --mobile d-md-none" aria-hidden="true">
										<span class="progress__step">
											<strong>4</strong>
											<span>/4</span>
										</span>
										<svg class="progress__svg">
											<circle class="progress__circle_back"/>
											<circle class="progress__circle"/>
										</svg>
									</div>
									<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
										<span class="progress__fontello"/>
									</div>
								</div>
								<div class="progress__text">
								  <span class="sr-only">Krok procesu zakupowego</span>
									<strong class="progress__name">Zamówienie złożone</strong>
								</div>
							</div>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</section>
			</iaixsl:when>
		</iaixsl:choose>
		<iaixsl:choose>
			
			<iaixsl:when test="page/@type = 'pickup-sites'">
				<iaixsl:if test="$cop_global_label">
					<span class="big_label cop_global_label">
						<iaixsl:value-of select="$cop_global_label"/>
					</span>
				</iaixsl:if>

				<section id="Progress" class="progress py-1 py-md-0">
					
					<a class="progress__item --first --shopping-cart --link">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/></iaixsl:attribute>
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>1</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Koszyk:</strong>
							<span class="progress__description"><iaixsl:choose><iaixsl:when test="not($wholesalerPrice_order_progress = '')"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
						</div>
					</a>
					
					<div class="progress__item --second --active --truck">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>2</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Płatność i dostawa</strong>
						</div>
					</div>
					
					<div class="progress__item --third --comment">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>3</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Weryfikacja danych</strong>
						</div>
					</div>

					<iaixsl:choose>
						<iaixsl:when test="not(basket/@login) and not(navigation/@order_express_mode='true')">
							
							<div class="progress__item --fourth --file-text">
								<div class="progress__icons">
									<div class="progress__icon --mobile d-md-none" aria-hidden="true">
										<span class="progress__step">
											<strong>4</strong>
											<span>/4</span>
										</span>
										<svg class="progress__svg">
											<circle class="progress__circle_back"/>
											<circle class="progress__circle"/>
										</svg>
									</div>
									<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
										<span class="progress__fontello"/>
									</div>
								</div>
								<div class="progress__text">
								  <span class="sr-only">Krok procesu zakupowego</span>
									<strong class="progress__name">Zapisanie danych</strong>
									<span class="progress__description">Zapamiętanie klienta</span>
								</div>
							</div>
						</iaixsl:when>
						<iaixsl:otherwise>
							
							<div class="progress__item --fourth --ok">
								<div class="progress__icons">
									<div class="progress__icon --mobile d-md-none" aria-hidden="true">
										<span class="progress__step">
											<strong>4</strong>
											<span>/4</span>
										</span>
										<svg class="progress__svg">
											<circle class="progress__circle_back"/>
											<circle class="progress__circle"/>
										</svg>
									</div>
									<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
										<span class="progress__fontello"/>
									</div>
								</div>
								<div class="progress__text">
								  <span class="sr-only">Krok procesu zakupowego</span>
									<strong class="progress__name">Zamówienie złożone</strong>
								</div>
							</div>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</section>
			</iaixsl:when>
		</iaixsl:choose>
		<iaixsl:choose>
			
			<iaixsl:when test="page/@type = 'order2'">
				<iaixsl:if test="$cop_global_label">
					<span class="big_label cop_global_label">
						<iaixsl:value-of select="$cop_global_label"/>
					</span>
				</iaixsl:if>

				<section id="Progress" class="progress py-1 py-md-0">
					
					<a class="progress__item --first --shopping-cart --link">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/></iaixsl:attribute>
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>1</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Koszyk:</strong>
							<span class="progress__description"><iaixsl:choose><iaixsl:when test="not($wholesalerPrice_order_progress = '')"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
						</div>
					</a>
					
					<a class="progress__item --second --truck --link">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order1/@url"/></iaixsl:attribute>
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>2</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Płatność i dostawa</strong>
						</div>
					</a>
					
					<div class="progress__item --third --active --comment">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>3</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<h1 class="progress__name">Weryfikacja danych</h1>
						</div>
					</div>

							
							<div class="progress__item --fourth --ok">
								<div class="progress__icons">
									<div class="progress__icon --mobile d-md-none" aria-hidden="true">
										<span class="progress__step">
											<strong>4</strong>
											<span>/4</span>
										</span>
										<svg class="progress__svg">
											<circle class="progress__circle_back"/>
											<circle class="progress__circle"/>
										</svg>
									</div>
									<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
										<span class="progress__fontello"/>
									</div>
								</div>
								<div class="progress__text">
								  <span class="sr-only">Krok procesu zakupowego</span>
									<strong class="progress__name">Zamówienie złożone</strong>
								</div>
							</div>

				</section>
			</iaixsl:when>
		</iaixsl:choose>
		<iaixsl:choose>
			
			<iaixsl:when test="page/@type = 'client-save'">
				<iaixsl:if test="$cop_global_label">
					<span class="big_label cop_global_label">
						<iaixsl:value-of select="$cop_global_label"/>
					</span>
				</iaixsl:if>

				<section id="Progress" class="progress py-1 py-md-0">
					
					<a class="progress__item --first --shopping-cart --link">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/></iaixsl:attribute>
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>1</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Koszyk:</strong>
							<span class="progress__description"><iaixsl:choose><iaixsl:when test="not($wholesalerPrice_order_progress = '')"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
						</div>
					</a>
					
					<a class="progress__item --second --comment --link">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order2/@url"/></iaixsl:attribute>
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>2</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Weryfikacja danych</strong>
						</div>
					</a>
					
					<div class="progress__item --third --active --file-text">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>3</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Zapisanie danych</strong>
							<span class="progress__description">Zapamiętanie klienta</span>
						</div>
					</div>
					
					<div class="progress__item --fourth --ok">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>4</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Zamówienie złożone</strong>
						</div>
					</div>
				</section>
			</iaixsl:when>
		</iaixsl:choose>
		<iaixsl:choose>
			
			<iaixsl:when test="page/@type = 'prepaid' and page/prepaid/details/@msg = 'order'">
				<iaixsl:if test="$cop_global_label">
					<span class="big_label cop_global_label">
						<iaixsl:value-of select="$cop_global_label"/>
					</span>
				</iaixsl:if>

				<section id="Progress" class="progress py-1 py-md-0">
					
					<div class="progress__item --first --shopping-cart">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>1</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Koszyk:</strong>
							<span class="progress__description"><iaixsl:choose><iaixsl:when test="not($wholesalerPrice_order_progress = '')"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
						</div>
					</div>
					
					<div class="progress__item --second --truck">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>2</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Płatność i dostawa</strong>
						</div>
					</div>
					
					<div class="progress__item --third --comment">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>3</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Weryfikacja danych</strong>
						</div>
					</div>
					
					<div class="progress__item --fourth --active --ok">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>4</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Zamówienie złożone</strong>
							<span class="progress__description">Status zamówienia: 
								<iaixsl:choose>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'n')">przyjęte</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 't')">wysłane</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'i')">odrzucone</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 's')">anulowane</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'o')">realizowane</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'p')">gotowe</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'h')">wstrzymane</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'w')">oczekujemy na wpłatę</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'd')">w trakcie realizacji</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'z')">zwrot</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'k')">anulowane</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'r')">reklamacja</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'j')">połączone</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'l')">zgubione</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'a')">realizowane</iaixsl:when>
									<iaixsl:when test="(page/prepaid/details/@wykonane = 'b')">pakowane</iaixsl:when>
								</iaixsl:choose>
							</span>
						</div>
					</div>
				</section>
			</iaixsl:when>
		</iaixsl:choose>
		<iaixsl:choose>
			
			<iaixsl:when test="(page/@type = 'order-payment') or (page/@type = 'order-newpayment')">
				<iaixsl:if test="$cop_global_label">
					<span class="big_label cop_global_label">
						<iaixsl:value-of select="$cop_global_label"/>
					</span>
				</iaixsl:if>

				<section id="Progress" class="progress py-1 py-md-0">
					
					<div class="progress__item --first --shopping-cart">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>1</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Koszyk:</strong>
							<span class="progress__description"><iaixsl:choose><iaixsl:when test="not($wholesalerPrice_order_progress = '')"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
						</div>
					</div>
					
					<div class="progress__item --second --truck">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>2</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Płatność i dostawa</strong>
						</div>
					</div>
					
					<div class="progress__item --third --comment">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>3</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Weryfikacja danych</strong>
						</div>
					</div>
					
					<div class="progress__item --fourth --active --ok">
						<div class="progress__icons">
							<div class="progress__icon --mobile d-md-none" aria-hidden="true">
								<span class="progress__step">
									<strong>4</strong>
									<span>/4</span>
								</span>
								<svg class="progress__svg">
									<circle class="progress__circle_back"/>
									<circle class="progress__circle"/>
								</svg>
							</div>
							<div class="progress__icon --desktop d-none d-md-flex" aria-hidden="true">
								<span class="progress__fontello"/>
							</div>
						</div>
						<div class="progress__text">
						  <span class="sr-only">Krok procesu zakupowego</span>
							<strong class="progress__name">Zamówienie złożone</strong>
						</div>
					</div>
				</section>
			</iaixsl:when>
		</iaixsl:choose>
	</iaixsl:if>
<!-- (menu_messages, 60dd8e79b18501.50382803.13)-->

        <iaixsl:variable name="rebates_code_used">Podany kod rabatowy został już wykorzystany.</iaixsl:variable>

        <iaixsl:variable name="change_success">Zmiany zostały zapisane.</iaixsl:variable>

        <iaixsl:variable name="change_success_despite_no_change">Formularz został zapisany, ale żadne dane nie zostały przez Ciebie zmienione. </iaixsl:variable>


        <iaixsl:if test="count(/shop/page/communicates/warning)">

            <div class="menu_messages_warning" id="menu_messages_warning">


            <iaixsl:choose>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'message'">
                    <iaixsl:attribute name="class">menu_messages_message</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'warning'">
                    <iaixsl:attribute name="class">menu_messages_warning</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'error'">
                    <iaixsl:attribute name="class">menu_messages_error</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'success'">
                    <iaixsl:attribute name="class">menu_messages_success
                      <iaixsl:if test="/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3)">
                        returnDetails__message
                      </iaixsl:if>
                    </iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:otherwise/>
            </iaixsl:choose>


                <div class="menu_messages_warning_sub">
                    <iaixsl:for-each select="/shop/page/communicates/warning">
                        <p><iaixsl:choose>


                                <iaixsl:when test="@type='file_upload_invalid_type'">Nie można wgrać pliku <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>, ponieważ załączanie plików tego typu jest niedozwolone.</iaixsl:when>
                                <iaixsl:when test="@type='file_upload_invalid_extension'">Nie można wgrać pliku <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>, ponieważ załączanie plików tego typu jest niedozwolone.</iaixsl:when>
                                <iaixsl:when test="@type='file_upload_size_exceeded'">Nie można wgrać pliku <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>, ponieważ przekracza maksymalny dozwolony rozmiar 10 MB.</iaixsl:when>
                                <iaixsl:when test="@type='file_uploaded_remove_fail'">Wystąpił bład podczas wgrywania pliku <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>.</iaixsl:when>


                                <iaixsl:when test="@type='rebates_code_expired'">Termin ważności podanego kodu rabatowego już upłynął i jest on nieaktywny.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_notbegun'">Podany kod rabatowy nie jest jeszcze aktywny. Ta promocja jeszcze się nie rozpoczęła.</iaixsl:when>

                               <iaixsl:when test="@type='order_minimal_wholesale_blocked'">Minimalna wartość zakupów hurtowych wynosi: <iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>
                                </iaixsl:when>

                            <iaixsl:when test="@type='order_minimal_wholesale_changed'">Mimo, że jesteś hurtownikiem, widzisz w podsumowaniu zamówienia ceny detaliczne. Wynika to z tego, że minimalna wartość dla zamówienia hurtowego nie została osiągnięta. Składając zamówienie w oparciu o aktualny koszyk złożysz zamówienie detaliczne.</iaixsl:when>




                                <iaixsl:when test="@type='openid_invalid_authorization'">Błąd autoryzacji.</iaixsl:when>
                                <iaixsl:when test="@type='suggest_sent'">Zaproszenie do odwiedzenia sklepu zostało wysłane do <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='search_to_many_products'">Znaleziono zbyt wiele produktów. Skorzystaj z wyszukiwarki aby zawęzić wyniki wyszukiwania.</iaixsl:when>
                                <iaixsl:when test="@type='search_products_not_found'">Szukany produkt nie został znaleziony. Skorzystaj z <a href="/searching.php" title="Kliknij, aby przejść do wyszukiwarki zaawansowanej">wyszukiwarki</a>.</iaixsl:when>
                                <iaixsl:when test="@type='search_text_to_short'">Podany tekst jest zbyt krótki. Spróbuj podać dłuższy tekst lub skorzystaj z wyszukiwarki.</iaixsl:when>
                                <iaixsl:when test="@type='login taken'">Podany login został już zarejestrowany przez innego klienta. Wybierz proszę inną nazwę lub zmodyfikuj tą dodając np. cyfry.</iaixsl:when>
                                <iaixsl:when test="@type='account_not_added'">Wystąpiły błędy i konto klienta nie zostało dodane - spróbuj ponownie później</iaixsl:when>
                                <iaixsl:when test="@type='exists such account'">Konto o podobnych danych już istnieje w naszym sklepie. Jeżeli zakładałeś wcześniej konto w naszym sklepie a nie pamiętasz hasła, skorzystaj z <a href="/password-recover.php">przypominania hasła</a></iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_not_deleted'">Wskazany adres dostawy nie może być usuniety.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_not_selected'">Wskazany adres dostawy nie może zostać adresem domyślnym.</iaixsl:when>
                                <iaixsl:when test="@type='no login'">Nie podałeś loginu.</iaixsl:when>
                                <iaixsl:when test="@type='incorect login'">Wybrany login jest niepoprawny. Login musi mieć minimum 3, a maksimum 40 znaków (tylko litery lub cyfry).</iaixsl:when>
                                <iaixsl:when test="@type='no password'">Nie podałeś hasła.</iaixsl:when>
                                <iaixsl:when test="@type='password to short'">Poprawne hasło musi składać się przynajmniej z 6 znaków i nie więcej niż 15 znaków.</iaixsl:when>


                                <iaixsl:when test="@type='password_to_long'">Poprawne hasło musi składać się przynajmniej z 6 znaków i nie więcej niż 15 znaków.</iaixsl:when>


                                <iaixsl:when test="@type='login equals password'">Poprawne hasło musi być różne od loginu.</iaixsl:when>
                                <iaixsl:when test="@type='not equal passwords'">Hasło i potwierdzenie hasła są różne.</iaixsl:when>
                                <iaixsl:when test="@type='no firstname'">Podane imię jest za krótkie.</iaixsl:when>
                                <iaixsl:when test="@type='no name'">Brakuje imienia lub nazwiska.</iaixsl:when>
                                <iaixsl:when test="@type='birth_date'">Data urodzenia zawiera nieprawidłowe wartości lub zapisana jest w nieprawidłowym formacie.</iaixsl:when>
                                <iaixsl:when test="@type='incorect email'">Adres e-mail jest błędny.</iaixsl:when>
                                <iaixsl:when test="@type='incorect nip'">Wpisując NIP upewnij się, że używasz odpowiedniego formatu dla wybranego kraju, np. XXXXXXXXXX dla NIP polskiego lub PLXXXXXXXXXX dla NIP EU.</iaixsl:when>

                                <iaixsl:when test="@type='no firmname'">Nazwa firmy nie została podana prawidłowo.</iaixsl:when>

                                <iaixsl:when test="@type='incorrect region'">Podany region jest błędny.</iaixsl:when>
                                <iaixsl:when test="@type='no city'">Podane miasto jest błędne.</iaixsl:when>
                                <iaixsl:when test="@type='no street'">Podany adres jest błędny.</iaixsl:when>

                               <iaixsl:when test="@type='no_street_number'">Podany adres jest błędny.</iaixsl:when>


                                <iaixsl:when test="@type='incorect phone'">Podany telefon jest błędny.</iaixsl:when>
                                <iaixsl:when test="@type='incorect spare phone'">Podany telefon zapasowy jest błędny.</iaixsl:when>
                                <iaixsl:when test="@type='incorect zipcode'">Niepoprawny kod pocztowy.</iaixsl:when>
                                <iaixsl:when test="@type='double_address_error'">Jeżeli adres dostawy ma być taki sam jak adres kupującego zaznacz odpowiednią opcję.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery firstname'">Podane imię odbiorcy jest za krótkie.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery lastname'">Podane nazwisko odbiorcy jest za krótkie.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery city'">Podane miasto odbiorcy jest błędne.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery street'">Podany adres odbiorcy jest błędny.</iaixsl:when>
                                <iaixsl:when test="@type='incorect delivery region'">Podany region odbiorcy jest błędny.</iaixsl:when>
                                <iaixsl:when test="@type='incorect delivery zipcode'">Niepoprawny kod pocztowy odbiorcy.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_hhtransfer_error'">Wystąpiły błędy płatności punktami.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_voucher_error'">Wystąpiły błędy płatności bonem.
                                    <iaixsl:if test="@value='v1'">W tym sklepie, ten bon jest nieważny.</iaixsl:if>
                                    <iaixsl:if test="@value='v2'">Numer bonu jest niepoprawny. Nie istnieje bon o takim identyfikatorze. Spróbuj wpisać identyfikator ponownie, upewniając się, że jest on poprawny.</iaixsl:if>
                                    <iaixsl:if test="@value='v3'">Ten bon jest zablokowany.</iaixsl:if>
                                    <iaixsl:if test="@value='v4'">Ten bon został już wykorzystany.</iaixsl:if>
                                    <iaixsl:if test="@value='v5'">Ten bon jest już nieważny - termin ważności minął.</iaixsl:if>
                                    <iaixsl:if test="@value='v7'">Bon o podanym identyfikatorze nie istnieje. Spróbuj wpisać identyfikator ponownie.</iaixsl:if>
                                    <iaixsl:if test="@value='v8'">Nie podano identyfikatora bonu.</iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_incorrect_paymentid'">Wystąpiły błędy - wybierz inną formę płatności.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_error'">Wystąpiły błędy płatności. Spróbuj ponownie opłacić zamówenie za chwilę.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_points_error'">Nie masz wystarczającej ilości punktów lojalnościowych aby opłacić to zamówienie- wybierz inną formę płatności.</iaixsl:when>

                                <iaixsl:when test="@type='filter_products_not_found'">Nie znaleziono produktów o zadanych kryteriach filtrowania. Zmień parametry filtrów.</iaixsl:when>
                                <iaixsl:when test="@type='questionnaire_error'">Wystąpił nieznany błąd. Ankieta nie została wysłana.</iaixsl:when>
                                <iaixsl:when test="@type='questionnaire_sent'">Ankieta została wysłana. Dziękujemy!</iaixsl:when>

                                <iaixsl:when test="@type='orderopen_not_found'">Podane przez Ciebie dane są nieprawidłowe. Postaraj się odszukać telefon lub e-mail który podałeś przy składaniu zamówienia lub sprawdź czy podawany identyfikator zamówienia jest poprawny. Jeżeli mimo kilku prób nie możesz otworzyć zamówienia poprzez tą stronę, prosimy o <a href="/contact.php">kontakt</a>.</iaixsl:when>

                                <iaixsl:when test="@type='order_nonstandard_inactive'">Przepraszamy, ale nie przewidzieliśmy kosztów dostawy dla Twojego zamówienia. Chcielibyśmy je jednak przyjąć. Dlatego prosimy Ciebie o kontakt z <a href="/contact.php">obsługą naszego sklepu</a> w celu ustalenia możliwości przyjęcia i realizacji zamówienia.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_inactive_worth'">Przepraszamy, ale nie przewidzieliśmy możliwości składania zamówienia z taką wartością zamówienia. Chcielibyśmy je jednak przyjąć. Dlatego prosimy Ciebie o kontakt z <a href="/contact.php">obsługą naszego sklepu</a> w celu ustalenia możliwości przyjęcia i realizacji zamówienia.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_inactive_weight'">Przepraszamy, ale nie przewidzieliśmy możliwości składania zamówienia z taką wagą zamówienia. Chcielibyśmy je jednak przyjąć. Dlatego prosimy Ciebie o kontakt z <a href="/contact.php">obsługą naszego sklepu</a> w celu ustalenia możliwości przyjęcia i realizacji zamówienia.</iaixsl:when>
                                

                                <iaixsl:when test="@type='no-auction-info'">
                                    Brak informacji o aukcji.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-auction-account'">
                                    Brak informacji o koncie.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-allegro-item'">
                                    Brak informacji o przedmiocie aukcji.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-buyer-info'">
                                    Brak informacji o kupującym.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-seller-info'">
                                    Brak informacji o sprzedającym.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-shipping'">
                                    Brak informacji o dostępnych przesyłkach.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-order'">
                                    Brak informacji o zamówieniu.
                                </iaixsl:when>
                                <iaixsl:when test="@type='less_del'">
                                    Usunięcie wszystkich sztuk nie jest możliwe. Zamówienie musi zawierać minimum tyle sztuk produktów ile zakupiłeś na aukcji. 
                                </iaixsl:when>
                                <iaixsl:when test="@type='cant_del'">
                                    Nie można usunąć produktów z zamówienia, gdyż ich ilość jest równa wylicytowanej.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_ok'">
                                    Podano poprawny kod rabatowy.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_undefined'">
                                    Podany kod rabatowy / numer karty rabatowej nie istnieje.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_deleted'">
                                    Usunięto kod rabatowy z koszyka.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_used' and $rebates_code_used">
                                     <iaixsl:value-of select="$rebates_code_used"/>
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_begins'">
                                    Promocja dla tego kodu rabatowego jeszcze się nie rozpoczeła.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_expires'">
                                    Promocja dla tego kodu rabatowego już się skończyła.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_undefined'">
                                    Podany numer karty jest nieprawidłowy. Spróbuj ponownie lub <a href="/contact.php">skontaktuj się z obsługą sklepu</a>.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_expires'">
                                    Termin ważności karty upłynął.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_blocked'">
                                    Ta karta została zablokowana. <a href="/contact.php">Skontaktuj się z obsługą sklepu</a>.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_ok'">
                                    Karta została aktywowana.
                                </iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_error'">
                                    Wystąpił błąd przy próbie rejestracji zgłoszenia.
                                </iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_registered'">
                                    Twoje konto zostało zarejestrowane jako hurtowe. Nie możesz złożyć kolejnego zgłoszenia.
                                </iaixsl:when>
                                <iaixsl:when test="@type='ordered_empty'">
                                    Twoja lista zakupionych produktów jest pusta.
                                </iaixsl:when>

                                <iaixsl:when test="@type='shipping_error'">
                                    Nie wysyłamy do twojego kraju.
                                </iaixsl:when>
                                <iaixsl:when test="@type='basket_empty'">
                                    Twój koszyk jest pusty.
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_minimum'">
                                    Za mała wartość zamówienia.
                                    <iaixsl:if test="@value&gt;0">
                                        Minimalna wartość zamówienia to 
                                        <iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>

                                        
                                    </iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_tomuch'">
                                    Wartość zamówienia jest zbyt duża.
                                    <iaixsl:if test="@value&gt;0">
                                        Maksymalna wartość zamówienia to                <iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>
                                    </iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='requiredPhoneAndEmail'">
                                    Wybrana opcja dostawy wymaga podania numeru telefonu oraz adresu e-mail. Aby uzupełnić te informacje skorzystaj z 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Kliknij, aby przejść do edycji danych i uzupełnić niezbędne informacje.</iaixsl:attribute>
                                        formularza edycji danych klienta
                                    </a>
                                    .
                                </iaixsl:when>
                                <iaixsl:when test="@type='noPickupSites'">
                                    Ten rodzaj dostawy nie jest aktualnie dostępny. Prosimy o 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Kliknij, aby wrócić do wyboru formy dostawy.</iaixsl:attribute>
                                        wybranie innej formy dostawy lub sposobu płatności.
                                    </a>
                                    .
                                </iaixsl:when>
                                <iaixsl:when test="@type='noPickupStocks'">
                                    Odbiór osobisty zamówienia jest w tej chwili niemożliwy. Prosimy o 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Kliknij, aby wrócić do wyboru formy dostawy.</iaixsl:attribute>
                                        wybranie innej formy dostawy lub sposobu płatności.
                                    </a>
                                    .
                                </iaixsl:when>

                                <iaixsl:when test="@type='rma_edit_error'">Wystąpił błąd podczas edycji reklamacji.</iaixsl:when>

                                <iaixsl:when test="@type='onlyHttps'">Dokonać płatności kartą kredytową można tylko przy użyciu szyfrowanego połączenia. Sprawdź czy adres sklepu poprzedzony jest protokołem HTTPS lub skontaktuj się z obsługą sklepu.</iaixsl:when>

                                <iaixsl:when test="@type='login_unavailable'">Nie można połączyć z podanym kontem z innego serwisu, ponieważ podane konto jest już połączone z innym kontem klienta w naszym sklepie. Możesz wylogować się z tego konta klienta i zalogować ponownie danymi z serwisu zewnętrznego<iaixsl:value-of select="@value"/>.</iaixsl:when>

                                <iaixsl:when test="@type='token_expired'">Link dostępu do Twoich danych stracił już ważność. Możesz zalogować się na inne konto lub wygenerować nowy link korzystając z opcji <a class="password_reminder_signin" href="#signin-form_radio2">Nie pamiętam loginu lub hasła.</a></iaixsl:when>

                                <iaixsl:otherwise>
                                    <iaixsl:value-of disable-output-escaping="yes" select="description"/>
                                </iaixsl:otherwise>

                        </iaixsl:choose></p>
                    </iaixsl:for-each>
                    <iaixsl:if test="/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3)">
                      <span>Nr zwrotu: <iaixsl:value-of select="/shop/page/details/@id"/></span>
                    </iaixsl:if>
            </div></div>
        </iaixsl:if>


        <iaixsl:if test="(count(/shop/page/communicates/message) and not(/shop/page/communicates/message/@type = 'login_connect')) or (/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3))">
            <div class="menu_messages_message" id="menu_messages_warning">


            <iaixsl:choose>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'message'">
                    <iaixsl:attribute name="class">menu_messages_message</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'warning'">
                    <iaixsl:attribute name="class">menu_messages_warning</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'error'">
                    <iaixsl:attribute name="class">menu_messages_error</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'success'">
                    <iaixsl:attribute name="class">menu_messages_success
                      <iaixsl:if test="/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3)">
                        returnDetails__message
                      </iaixsl:if>
                    </iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3)">
                  <iaixsl:attribute name="class">
                    <iaixsl:choose><iaixsl:when test="page/details/@status=1">menu_messages_message</iaixsl:when><iaixsl:when test="page/details/@status=2">menu_messages_success</iaixsl:when><iaixsl:when test="page/details/@status=3">menu_messages_error</iaixsl:when><iaixsl:when test="page/details/@status=13">menu_messages_error</iaixsl:when><iaixsl:when test="page/details/@status=14">menu_messages_error</iaixsl:when><iaixsl:when test="page/details/@status=15">menu_messages_message</iaixsl:when><iaixsl:when test="page/details/@status=16">menu_messages_error</iaixsl:when><iaixsl:when test="page/details/@status=17">menu_messages_success</iaixsl:when><iaixsl:when test="page/details/@status=18">menu_messages_success</iaixsl:when></iaixsl:choose>
                    returnDetails__message
                    </iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:otherwise/>
            </iaixsl:choose>


                <div class="menu_messages_message_sub">
                    <iaixsl:for-each select="/shop/page/communicates/message">
                        <p><iaixsl:choose>
                                <iaixsl:when test="@type='change_success' and $change_success">
                                     <iaixsl:value-of select="$change_success"/>
                                </iaixsl:when>
                                <iaixsl:when test="@type='change_success_despite_no_change' and $change_success_despite_no_change">
                                     <iaixsl:value-of select="$change_success_despite_no_change"/>
                                </iaixsl:when>

                                <iaixsl:when test="@type='affiliate_not_active'">Nie jesteś zalogowany lub sklep nie posiada aktywnego programu partnerskiego.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_deleted'">Wskazany adres dostawy został usunięty.</iaixsl:when>
                                <iaixsl:when test="@type='affiliate_off'">Nie masz aktywowanego programu partnerskiego. Jeżeli chcesz aktywować taką możliwość musisz skontaktować się z obsługą sklepu.</iaixsl:when>
                                <iaixsl:when test="@type='affiliate_blocked'">Twój program partnerski został zablokowany.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_selected'">Wskazany adres dostawy został ustawiony jako domyślny.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_ok'">Podano poprawny kod rabatowy.</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_added'">Zgłoszenie zostało zarejestrowane.</iaixsl:when>
                                <iaixsl:when test="@type='login_connected'">Pomyślnie połączono konto w sklepie z kontem w serwisie <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='login_disconnected'">Konto zostało rozłączone z <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='login_unavailable'">Nie można połączyć z podanym kontem z innego serwisu, ponieważ podane konto jest już połączone z innym kontem klienta w naszym sklepie. Możesz wylogować się z tego konta klienta i zalogować ponownie danymi z serwisu zewnętrznego<iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='openid_login_canceled'">Logowanie anulowane.</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_changed'">Zgłoszenie zostało zmienione.</iaixsl:when>
                                <iaixsl:when test="@type='wisheslist_empty'">Twoja lista zakupowa jest pusta.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_empty'">Twoja lista poszukiwanych produktów jest pusta.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_added'">Zgłoszenie poszukiwanego produktu zostało zarejestrowane. Otrzymasz odpowiedź e-mailem czy jest możliwe poszerzenie oferty o ten produkt.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_removed'">Zgłoszenie poszukiwanego produktu zostało usunięte.</iaixsl:when>
                                <iaixsl:when test="@type='rma_add'">Reklamacja została dodana.</iaixsl:when>
                                <iaixsl:when test="@type='return_add'"><iaixsl:choose>
                                  <iaixsl:when test="/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3)">
                                    Wygenerowałeś zwrot - wyślij go samodzielnie
                                  </iaixsl:when>
                                  <iaixsl:otherwise>
                                    Zgłoszenie zwrotu zostało dodane.
                                  </iaixsl:otherwise>
                                </iaixsl:choose></iaixsl:when>
                                <iaixsl:when test="@type='return_edit'">Zmiany w zwrocie zostały zapisane</iaixsl:when>
                                <iaixsl:when test="@type='rma_edit'">Zmiany w reklamacji zostały zapisane.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_deleted'">Usunięto kod rabatowy z koszyka.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason'">Przepraszamy, ale nie zdefiniowaliśmy standardowego kosztu dostawy dla Twojego zamówienia. Możesz kontynuować składanie zamówienia, jednak nie zostanie w tej chwili podany wiążący nas koszt dostawy. Zostanie on ustalony indywidualnie przez naszą obsługę po przyjęciu zamówienia, po czym skontaktujemy się z Tobą w celu jego potwierdzenia. Jeżeli takie rozwiązanie nie odpowiada Ci, <a href="/contact.php">skontaktuj się z nami</a> w celu uzyskania bardziej szczegółowych informacji na temat kosztu dostawy lub możliwości złożenia zamówienia indywidualnie.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason_worth'">Przepraszamy, ale nie zdefiniowaliśmy standardowego kosztu dostawy dla takiej wartości zamówienia. Możesz kontynuować składanie zamówienia, jednak nie zostanie w tej chwili podany wiążący nas koszt dostawy. Zostanie on ustalony indywidualnie przez naszą obsługę po przyjęciu zamówienia, po czym skontaktujemy się z Tobą w celu jego potwierdzenia. Jeżeli takie rozwiązanie nie odpowiada Ci, <a href="/contact.php">skontaktuj się z nami</a> w celu uzyskania bardziej szczegółowych informacji na temat kosztu dostawy lub możliwości złożenia zamówienia indywidualnie.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason_weight'">Przepraszamy, ale nie zdefiniowaliśmy standardowego kosztu dostawy dla takiej wagi zamówienia. Możesz kontynuować składanie zamówienia, jednak nie zostanie w tej chwili podany wiążący nas koszt dostawy. Zostanie on ustalony indywidualnie przez naszą obsługę po przyjęciu zamówienia, po czym skontaktujemy się z Tobą w celu jego potwierdzenia. Jeżeli takie rozwiązanie nie odpowiada Ci, <a href="/contact.php">skontaktuj się z nami</a> w celu uzyskania bardziej szczegółowych informacji na temat kosztu dostawy lub możliwości złożenia zamówienia indywidualnie.</iaixsl:when>
                                <iaixsl:when test="@type='mailing_addsuccess'">Adres e-mail został dodany do listy mailingowej.</iaixsl:when>
                                <iaixsl:when test="@type='mailing_removesuccess'">Adres e-mail został usunięty z listy mailingowej.</iaixsl:when>
                                <iaixsl:when test="@type = 'mailing_nosuchemail'">Nie znaleźliśmy podanego przez Ciebie adresu e-mail w naszej bazie mailingowej.</iaixsl:when>
                                <iaixsl:when test="@type = 'mailing_sendingconfirm'">Na podany adres e-mail wysłany został list z potwierdzeniem zmian w naszej liście mailingowej. Odbierz pocztę i podążaj za wskazówkami zawartymi w wiadomości.</iaixsl:when>
                                <iaixsl:otherwise>
                                        <iaixsl:value-of disable-output-escaping="yes" select="description"/>
                                </iaixsl:otherwise>
                        </iaixsl:choose></p>
                    </iaixsl:for-each>

                    <iaixsl:if test="not(count(/shop/page/communicates/message))">
                      <p>
                        <iaixsl:choose>
													<iaixsl:when test="page/details/@status_name != ''">
														<iaixsl:value-of disable-output-escaping="yes" select="page/details/@status_name"/>
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=1">
														Zwrot nieobsłużony
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=2">
														Zwrot rozpatrzony pozytywnie
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=3">
														Zwrot rozpatrzony negatywnie
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=13">
														Zwrot rozpatrzony pozytywnie - Wymiana produktu na inny
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=14">
														Zwrot nie dotarł
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=15">
														Zwrot wygenerowany
													</iaixsl:when>
													
													<iaixsl:when test="page/details/@status=16">
														Zaniechanie ponownej wysyłki zamówienia
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=17">
														Zwrot wygenerowany
													</iaixsl:when>
													<iaixsl:when test="page/details/@status=18">
														Zwrot wygenerowany
													</iaixsl:when>
												</iaixsl:choose>
											</p>
										</iaixsl:if>
                    <iaixsl:if test="/shop/page/@type='return_products' and /shop/page/details/@id and (/shop/action/smile/@returns_url and /shop/page/return_method/@id = 3)">
                      <span>Nr zwrotu: <iaixsl:value-of select="/shop/page/details/@id"/></span>
                    </iaixsl:if>
            </div></div>
        </iaixsl:if>


        <iaixsl:if test="/shop/order_edit/@order_number">
            <div class="menu_messages_message" id="menu_messages_warning">
                <div class="menu_messages_message_sub">
                    <p>
                        Edytujesz zamówienie numer <iaixsl:value-of select="/shop/order_edit/@order_number"/>. Dokonaj zmian w zamówieniu bądź 
                        <a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/order_edit/@cancel_lik"/></iaixsl:attribute>
                            wróć do szczegółów zamówienia</a>.
                    </p>
                </div>
            </div>
        </iaixsl:if>


         <iaixsl:if test="/shop/return_edit/@return_id">
            <div class="menu_messages_message" id="menu_messages_warning">
                <div class="menu_messages_message_sub">
                    <p>
                        Edytujesz zwrot numer <iaixsl:value-of select="/shop/return_edit/@return_id"/>. Dokonaj zmian w zwrocie bądź wróć do 
                        <a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/return_edit/@cancel_link"/></iaixsl:attribute>
                             szczegółów zwrotu</a>.
                    </p>
                </div>
            </div>
        </iaixsl:if>

        <!-- (basketedit_cms, 60dd8e7a80d4b7.91464999.9)-->
            <iaixsl:if test="page/basket-details/text/body">
                <div class="basket_cms cm">
                    <iaixsl:value-of disable-output-escaping="yes" select="page/basket-details/text/body"/>
                </div>
            </iaixsl:if>
        <!-- (basketedit_productslist, 66e2f312ebd906.16754394.11)-->

	
	<iaixsl:variable name="txt_50001_025a">Przed realizacją zamówienia z płatnością przy odbiorze wymagana jest zaliczka na ten towar: </iaixsl:variable>
	<iaixsl:variable name="txt_67332_am">Aktualnie mamy </iaixsl:variable>
	<iaixsl:variable name="txt_67332_wm"> w magazynie. Dodatkowa ilość znajduje się w magazynie naszego dostawcy.</iaixsl:variable>
	<iaixsl:variable name="setIconLarge"/>
	<iaixsl:variable name="nettoPriceBasketedit"><iaixsl:if test="/shop/page/@price_type = 'net'">true</iaixsl:if></iaixsl:variable>
	<iaixsl:variable name="grossPriceBasketedit"> brutto</iaixsl:variable>
	<iaixsl:variable name="basketedit_division">true</iaixsl:variable>
	
	<iaixsl:variable name="visibleProductsInGroup">2</iaixsl:variable>

	<iaixsl:if test="page/@type = 'basketedit'">

		<section id="Basket" class="basket">
			<iaixsl:if test="(page/@customs_duty_required) and /shop/adding_multiple_products_to_basket_api/@active = 'true'">
				<iaixsl:attribute name="data-add-codes">true</iaixsl:attribute>
			</iaixsl:if>
			<form class="basket__form" tabindex="0" action="/basketchange.php?type=multiproduct" method="post" enctype="multipart/form-data">
				<iaixsl:if test="count(/shop/page/basket-details/product) = 1">
					<iaixsl:attribute name="data-one-product">true</iaixsl:attribute>
				</iaixsl:if>
				<div class="basket__productslist">
          
          <iaixsl:if test="page/basket-details/product[@basket_group_id]">
            <iaixsl:attribute name="data-groups">true</iaixsl:attribute>
          </iaixsl:if>

					<div class="basket__block --labels">
						<h1 class="basket__label headline"><span class="headline__name">Koszyk</span>
						</h1>
						<iaixsl:if test="(page/@customs_duty_required) and /shop/adding_multiple_products_to_basket_api/@active = 'true'">
							<a href="#addCodesToBasket" data-href="/basketchange.php" class="addCodesToBasketLink">Dodaj produkty podając kody</a>
						</iaixsl:if>
					</div>
					
					<iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
						<div class="basket__unknown_delivery">
							<i class="icon-clockcountdown"/>
							<div>
								<b>W koszyku jest towar sprowadzany na zamówienie.</b> Aby oszacować czas przygotowania zamówienia do wysyłki,
								<a target="_blank">
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
									skontaktuj się z obsługą sklepu.
								</a>
							</div>
						</div>
					</iaixsl:if>

					
					<iaixsl:variable name="division_active">
						<iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes'and not(count(page/basket-details/product[@division='later']) = 0 or count(page/basket-details/product[@division='now']) = 0)">later</iaixsl:if>
					</iaixsl:variable>

					<iaixsl:for-each select="page/basket-details/product">
						<iaixsl:sort select="@division=$division_active"/>
							<div class="basket__block --product">
								<iaixsl:choose>
									<iaixsl:when test="price/@special_offer='true' and price/@special_offer_changeable_quantity='true'">
										<iaixsl:attribute name="class">basket__block --product --special --special_quantity</iaixsl:attribute>
										<iaixsl:if test="size/@amount = '0' and price/@special_offer='true'">
											<iaixsl:attribute name="class">basket__block --product --special --special_quantity --no_amount</iaixsl:attribute>
										</iaixsl:if>
									</iaixsl:when>
									<iaixsl:when test="/price/@special_offer='true' and not(/price/@special_offer_changeable_quantity='true')">
										<iaixsl:attribute name="class">basket__block --product --special</iaixsl:attribute>
										<iaixsl:if test="size/@amount = '0' and /price/@special_offer='true' and not(/price/@special_offer_changeable_quantity='true')">
											<iaixsl:attribute name="class">basket__block --product --special --no_amount</iaixsl:attribute>
										</iaixsl:if>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:attribute name="class">basket__block --product</iaixsl:attribute>
										<iaixsl:if test="size/@amount = '0'">
											<iaixsl:attribute name="class">basket__block --product --no_amount</iaixsl:attribute>
										</iaixsl:if>
									</iaixsl:otherwise>
								</iaixsl:choose>

								<iaixsl:attribute name="data-product-type"><iaixsl:value-of select="@product_type"/></iaixsl:attribute>
								<iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
								<iaixsl:attribute name="data-product-size"><iaixsl:value-of select="size/@type"/></iaixsl:attribute>
								<iaixsl:attribute name="data-product-checkbox-id"><iaixsl:value-of select="@id"/>_<iaixsl:value-of select="size/@type"/>_<iaixsl:value-of select="additional/@hash"/></iaixsl:attribute>
                
                <iaixsl:variable name="groupId"><iaixsl:value-of select="@basket_group_id"/></iaixsl:variable>
                
                <iaixsl:variable name="subscriptionGroup"><iaixsl:value-of select="/shop/basket/groups/group[@id = $groupId]/types/type[@value = 'subscription']/@value != ''"/></iaixsl:variable>
                
                <iaixsl:if test="@basket_group_id">
                  <iaixsl:attribute name="data-group"><iaixsl:for-each select="/shop/basket/groups/group[@id = $groupId]/types/type"><iaixsl:value-of select="@value"/><iaixsl:if test="position() != last()">;</iaixsl:if></iaixsl:for-each></iaixsl:attribute>
                  <iaixsl:attribute name="style">--group:<iaixsl:value-of select="$groupId"/>;</iaixsl:attribute>
                  <iaixsl:attribute name="data-group-id"><iaixsl:value-of select="$groupId"/></iaixsl:attribute>
                  <iaixsl:if test="not($groupId = preceding-sibling::product/@basket_group_id)">
                    <iaixsl:attribute name="data-first-in-group">true</iaixsl:attribute>
                    <iaixsl:if test="$subscriptionGroup = 'true'">
                      <iaixsl:attribute name="data-label-group">Subskrypcja</iaixsl:attribute>
                    </iaixsl:if>
                  </iaixsl:if>
                  <iaixsl:if test="not($groupId = following-sibling::product/@basket_group_id)">
                    <iaixsl:attribute name="data-last-in-group">true</iaixsl:attribute>
                  </iaixsl:if>
                  <iaixsl:if test="count(preceding-sibling::product[@basket_group_id = $groupId]) &gt;= $visibleProductsInGroup">
                    <iaixsl:attribute name="data-hide">true</iaixsl:attribute>
                  </iaixsl:if>
                  <iaixsl:if test="count(preceding-sibling::product[@basket_group_id = $groupId]) = $visibleProductsInGroup - 1 and $groupId = following-sibling::product/@basket_group_id">
                    <iaixsl:attribute name="data-last-visible">true</iaixsl:attribute>
                  </iaixsl:if>
                </iaixsl:if>

                
                <iaixsl:if test="count(preceding-sibling::product[@basket_group_id = $groupId]) = $visibleProductsInGroup - 1 and $groupId = following-sibling::product/@basket_group_id">
									<div class="basket__visible_in_group_wrapper --show">
                  	<a href="#showAllInGroup" class="basket__visible_in_group --show --event" data-event="toggleAllInGroup">+<iaixsl:value-of select="count(following-sibling::product[@basket_group_id = $groupId])"/> produkty w subskrypcji</a>
										<span>Produkty o tym samym okresie wysyłki zostały zgrupowane.  Aby mieć oddzielne subskrypcje, złóż zamówienia oddzielnie.</span>
									</div>
                </iaixsl:if>

                
                <iaixsl:if test="count(preceding-sibling::product[@basket_group_id = $groupId]) &gt;= $visibleProductsInGroup and not($groupId = following-sibling::product/@basket_group_id)">
									<div class="basket__visible_in_group_wrapper --hide">
                  	<a href="#hideAllInGroup" class="basket__visible_in_group --hide --event" data-event="toggleAllInGroup">Zwiń produkty</a>
										<span>Produkty o tym samym okresie wysyłki zostały zgrupowane.  Aby mieć oddzielne subskrypcje, złóż zamówienia oddzielnie.</span>
									</div>
                </iaixsl:if>

								
								<div class="basket__item --photo">
									
									<iaixsl:choose>
										<iaixsl:when test="@product_type = 'product_deposit'">
											<iaixsl:text disable-output-escaping="yes">&lt;span class=&quot;photo__link --span</iaixsl:text>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:text disable-output-escaping="yes">&lt;a class=&quot;photo__link&quot; href=&quot;</iaixsl:text>
											<iaixsl:value-of select="@link"/>
										</iaixsl:otherwise>
									</iaixsl:choose>
									<iaixsl:text disable-output-escaping="yes">&quot; &gt;</iaixsl:text>
									<iaixsl:choose>
										<iaixsl:when test="icon_src_second and not(icon_src_second = '' or icon_src_second = '/')">
											<picture>
												<source type="image/webp">
													<iaixsl:choose>
														<iaixsl:when test="$setIconLarge">
															<iaixsl:attribute name="srcset"><iaixsl:value-of select="icon"/></iaixsl:attribute>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:attribute name="srcset"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
														</iaixsl:otherwise>
													</iaixsl:choose>
													<img class="photo__image">
														<iaixsl:choose>
															<iaixsl:when test="$setIconLarge">
																<iaixsl:attribute name="src"><iaixsl:value-of select="icon_src_second"/></iaixsl:attribute>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall_second"/></iaixsl:attribute>
															</iaixsl:otherwise>
														</iaixsl:choose>
														<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:attribute>
													</img>
												</source>
											</picture>
										</iaixsl:when>
										<iaixsl:otherwise>
											<img class="photo__image">
												<iaixsl:choose>
													<iaixsl:when test="$setIconLarge">
														<iaixsl:attribute name="src"><iaixsl:value-of select="icon"/></iaixsl:attribute>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
													</iaixsl:otherwise>
												</iaixsl:choose>
												<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:attribute>
											</img>
										</iaixsl:otherwise>
									</iaixsl:choose>
									<iaixsl:choose>
										<iaixsl:when test="@product_type = 'product_deposit'">
											<iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</div>

								
								<iaixsl:if test="(@basket_group_id and not($groupId = preceding-sibling::product/@basket_group_id)) or price/@special_offer='true' or @product_type = 'product_virtual' or @product_type = 'product_service' or $division_active = 'later'">
									<div class="basket__item --badge basket__badge">
										<iaixsl:if test="price/@special_offer='true'">
											<span class="special_offer">Oferta specjalna</span>
										</iaixsl:if>
										<iaixsl:if test="@product_type = 'product_virtual'">
											<span class="virtual">Towar wirtualny</span>
										</iaixsl:if>
										<iaixsl:if test="@product_type = 'product_service'">
											<span class="service">Usługa</span>
										</iaixsl:if>
										<iaixsl:if test="@basket_group_id and not($groupId = preceding-sibling::product/@basket_group_id)">
											<span class="subscription">Subskrypcja</span>
										</iaixsl:if>
										<iaixsl:if test="$division_active = 'later'">
											<iaixsl:choose>
												<iaixsl:when test="@division='later'">
													<span class="division --later">Wysyłka <span class="basket__division_literal">za</span> <span class="basket__division_weeks"/></span>
												</iaixsl:when>
												<iaixsl:otherwise>
													<span class="division --now">Wysyłka <span class="basket__division_now"/></span>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</iaixsl:if>
									</div>
								</iaixsl:if>

								
								<div class="basket__item --name">

									<div class="basket__name">
										<h2>
											<iaixsl:choose>
												<iaixsl:when test="@product_type = 'product_deposit'">
													<span class="basket__name_link --span">
														<iaixsl:value-of disable-output-escaping="yes" select="name/text()"/>
													</span>
												</iaixsl:when>
												<iaixsl:otherwise>
													<a class="basket__name_link">
														<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
														<iaixsl:value-of disable-output-escaping="yes" select="name/text()"/>
													</a>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</h2>
									</div>

									<div class="basket__params --traits">
										
										<iaixsl:if test="not(@barcode ='')">
											<div class="basket__param --barcode">
												<span class="param__label">
													Symbol:
												</span>
												<span class="param__value">
													<iaixsl:value-of select="@barcode"/>
												</span>
											</div>
										</iaixsl:if>
										
										<iaixsl:if test="not(size/@type='uniw')">
											<div class="basket__param --size">
												<span class="param__label">
													Rozmiar:
												</span>
												<span class="param__value">
													<iaixsl:value-of select="size/@description"/>
												</span>
											</div>
										</iaixsl:if>
										
										<iaixsl:if test="(version) and (not(version/@product_name='')) and string-length(version/@product_name) &lt; 81">
											<div class="basket__param --version">
												<span class="param__label">
													<iaixsl:value-of select="version/@name"/>:
												</span>
												<span class="param__value">
													<iaixsl:value-of select="version/@product_name"/>
												</span>
											</div>
										</iaixsl:if>
									</div>

                   
                  <iaixsl:if test="$subscriptionGroup = 'true'">
                    <div class="basket__param --subscription --period">
                      <span class="param__label">
                        Wysyłka co:
                      </span>
                      <strong class="param__value">
                        <iaixsl:attribute name="data-change-literal-days"><iaixsl:value-of select="/shop/basket/groups/group[@id = $groupId]/details/subscription/@days_in_period"/></iaixsl:attribute>
                        <iaixsl:value-of select="/shop/basket/groups/group[@id = $groupId]/details/subscription/@days_in_period"/> dni
                      </strong>
                    </div>
                  </iaixsl:if>

                  
                  <iaixsl:if test="$subscriptionGroup = 'true'">
                    <div class="basket__param --subscription --next">
                      <span class="param__label">
                        Kolejna dostawa:
                      </span>
                      <strong class="param__value">
                        <iaixsl:variable name="next_order_week_day"><iaixsl:value-of select="/shop/basket/groups/group[@id = $groupId]/details/subscription/dates/@next_order_week_day"/></iaixsl:variable>
                        <span class="param__day_name">
                          <iaixsl:choose>
                            <iaixsl:when test="$next_order_week_day = 1">
                              Poniedziałek
                            </iaixsl:when>
                            <iaixsl:when test="$next_order_week_day = 2">
                              Wtorek
                            </iaixsl:when>
                            <iaixsl:when test="$next_order_week_day = 3">
                              Środa
                            </iaixsl:when>
                            <iaixsl:when test="$next_order_week_day = 4">
                              Czwartek
                            </iaixsl:when>
                            <iaixsl:when test="$next_order_week_day = 5">
                              Piątek
                            </iaixsl:when>
                            <iaixsl:when test="$next_order_week_day = 6">
                              Sobota
                            </iaixsl:when>
                            <iaixsl:when test="$next_order_week_day = 7">
                              Niedziela
                            </iaixsl:when>
                          </iaixsl:choose>
                        </span>
                        <iaixsl:variable name="next_order_time"><iaixsl:value-of select="/shop/basket/groups/group[@id = $groupId]/details/subscription/dates/@date_next_order"/></iaixsl:variable>
                        <iaixsl:variable name="next_order_time_month_day"><iaixsl:value-of select="substring($next_order_time, 6, 5)"/></iaixsl:variable>
                        <iaixsl:variable name="next_order_time_formatted"><iaixsl:value-of select="substring-after($next_order_time_month_day, '-')"/>.<iaixsl:value-of select="substring-before($next_order_time_month_day, '-')"/></iaixsl:variable>
                        <span class="param__date_wrapper"> (<span><iaixsl:value-of select="$next_order_time_formatted"/></span>)</span>
                      </strong>
                    </div>
                  </iaixsl:if>

									
									<iaixsl:if test="(version) and (not(version/@product_name='')) and string-length(version/@product_name) &gt; 80">
										<div class="basket__param --version">
											<span class="param__label">
												<iaixsl:value-of select="version/@name"/>:
											</span>
											<span class="param__value">
												<iaixsl:value-of select="version/@product_name"/>
											</span>
										</div>
									</iaixsl:if>

									
									<iaixsl:if test="price/priceformula/parameters">
										<iaixsl:for-each select="price/priceformula/parameters/parameter">
											<div class="basket__param --priceformula">
												<span class="param__label">
													<iaixsl:value-of select="name"/>:
												</span>
												<span class="param__value">
													<iaixsl:value-of select="values/value"/>
												</span>
											</div>
										</iaixsl:for-each>
									</iaixsl:if>

									
									<iaixsl:if test="@product_type = 'product_bundle'">
										<div class="basket__param --bundle">
											<iaixsl:if test="@collection = 'true'">
												<iaixsl:attribute name="class">basket__param --bundle --collection</iaixsl:attribute>
											</iaixsl:if>
											<span class="param__label">
                        <iaixsl:choose>
                          <iaixsl:when test="@collection">
                            Składowe kolekcji:
                          </iaixsl:when>
                          <iaixsl:otherwise>
														Składowe zestawu:
													</iaixsl:otherwise>
                        </iaixsl:choose>
											</span>
											<div class="param__wrapper">
												<iaixsl:for-each select="bundled/product">
													<span class="param__value">
														<iaixsl:if test="size/@ordered &gt; 1">
															<iaixsl:value-of select="size/@ordered"/>x 
														</iaixsl:if>

														<iaixsl:value-of select="name/text()"/>

														<iaixsl:if test="not(size/@type='uniw') or ((version) and (not(version/@product_name='')))">
															(<iaixsl:if test="not(size/@type='uniw')">Rozmiar: <b><iaixsl:value-of select="size/@description"/></b></iaixsl:if><iaixsl:if test="not(size/@type='uniw') and ((version) and (not(version/@product_name='')))">, </iaixsl:if><iaixsl:if test="(version) and (not(version/@product_name=''))"><iaixsl:value-of select="version/@name"/>: <b><iaixsl:value-of select="version/@product_name"/></b></iaixsl:if>)
														</iaixsl:if>

														<iaixsl:if test="@product_type = 'product_virtual'">
															<span class="param__virtual">Towar wirtualny</span>
														</iaixsl:if>

														<iaixsl:if test="@product_type = 'product_service'">
															<span class="param__service">Usługa</span>
														</iaixsl:if>
													</span>
												</iaixsl:for-each>
											</div>
										</div>
									</iaixsl:if>

									
									<iaixsl:choose>
										<iaixsl:when test="(size/@orderedsum) &gt; (size/@amount) and not(size/@amount = '0') and not(size/@amount = '-1')">
											<div class="basket__param --info">
												<span class="param__label">
													Nie mamy w tej chwili takiej ilości produktu. Zmniejsz zamawianą ilość do <iaixsl:value-of select="size/@amount"/>, lub wybierz inny produkt.
												</span>
											</div>
										</iaixsl:when>

										<iaixsl:when test="(size/@own_stocks_amount &gt; 0) and (size/@ordered &gt; size/@own_stocks_amount) and $txt_67332_am">
                      <div class="basket__param --info">
                        <span class="param__label">
                          <iaixsl:value-of disable-output-escaping="yes" select="$txt_67332_am"/>
                          <iaixsl:value-of select="size/@own_stocks_amount"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="size/@unit"/>
                          <iaixsl:value-of disable-output-escaping="yes" select="$txt_67332_wm"/>
                        </span>
                      </div>
                    </iaixsl:when>

										<iaixsl:when test="size/@amount = '0'">
											<div class="basket__param --info">
												<span class="param__label">
													Ten produkt właśnie się nam skończył. Wybierz inny produkt.
												</span>
											</div>
										</iaixsl:when>

										<iaixsl:when test="(size/@ordered_points) and not(/shop/basket/@client_points &gt;= 0)">
											<div class="basket__param --info">
												<span class="param__label">
													Masz za mało punktów lojalnościowych by kupić tyle produktów za punkty.
												</span>
											</div>
										</iaixsl:when>

										<iaixsl:when test="(/shop/page/rebates/code_details/@active = 'y') and ((/shop/rebate_code/shipping_cost_rebate/@active='n') and (price/@rebate_code_active='n'))">
											<div class="basket__param --info">
												<span class="param__label">
													Podany kod rabatowy nie obejmuje tego towaru.
												</span>
											</div>
										</iaixsl:when>

										<iaixsl:when test="(@product_type='product_virtual' and not(count(/shop/page/basket-details/product) = count(/shop/page/basket-details/product[@product_type='product_virtual']))) or (@product_type='product_bundle' and not(count(bundled/product[@product_type = 'product_virtual']) = 0) and not((count(/shop/page/basket-details/product) = count(/shop/page/basket-details/product[@product_type='product_bundle']))))">
											<div class="basket__param --info">
												<span class="param__label">
													Produkt będzie dostępny w sekcji
													<a class="param__link --link"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/client_files/@link_to_download"/></iaixsl:attribute>&quot;Moje pliki&quot;</a>
													po zrealizowaniu zamówienia.
												</span>
											</div>
										</iaixsl:when>
									</iaixsl:choose>

									<iaixsl:if test="(size/@to_little_for_gross = 'true') and not((size/@orderedsum) &gt; (size/@amount) and not(size/@amount = '0') and not(size/@amount = '-1'))">
										<div class="basket__param --info">
											<span class="param__label">
												Dysponujemy
												<iaixsl:value-of select="size/@amount_wholesale"/>
													szt. produktu w cenie hurtowej. W koszyku masz
												<iaixsl:value-of select="size/@ordered - size/@amount_wholesale"/>
													szt. produktu w cenie detalicznej.
											</span>
										</div>
									</iaixsl:if>

									
									<iaixsl:if test="$txt_50001_025a and (price/@advanceworth &gt; 0)">
										<div class="basket__param --advance">
											<span class="param__label">
												<iaixsl:choose>
													<iaixsl:when test="/shop/page/basket-details/summary/money/@advance_mode = 'default' or /shop/page/basket-details/summary/money/@advance_mode = 'none'">
														<iaixsl:choose>
															<iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'false'">
																Przed realizacją zamówienia z płatnością przy odbiorze wymagana jest zaliczka na ten towar: <iaixsl:value-of select="price/@advanceworth_formatted"/>
															</iaixsl:when>
															<iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'false' and /shop/page/basket-details/summary/money/@prepaid = 'true'">
																Przed realizacją zamówienia z płatnością za przedpłatą wymagana jest zaliczka na ten towar: <iaixsl:value-of select="price/@advanceworth_formatted"/>
															</iaixsl:when>
															<iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'true'">
																Przed realizacją zamówienia wymagana jest zaliczka na ten towar: <iaixsl:value-of select="price/@advanceworth_formatted"/>
															</iaixsl:when>
														</iaixsl:choose>
													</iaixsl:when>
													<iaixsl:when test="/shop/page/basket-details/summary/money/@advance_mode = 'total'">
														Przed realizacją zamówienia wymagana jest zaliczka na ten towar: <iaixsl:value-of select="price/@advanceworth_formatted"/>
													</iaixsl:when>
												</iaixsl:choose>
											</span>
										</div>
									</iaixsl:if>

									
									<iaixsl:if test="comment">
										<div class="basket__param --comment d-md-block">
											<a href="#editComment" class="param__label d-block --event" data-event="addComment">
											  <iaixsl:attribute name="aria-describedby">Komentarz</iaixsl:attribute>
												<iaixsl:value-of disable-output-escaping="yes" select="comment"/>
											</a>
										</div>
									</iaixsl:if>

									
									<iaixsl:if test="order_files/file">
										<div class="basket__param --files d-md-block">
											<iaixsl:for-each select="order_files/file">
												<div class="preview__wrapper">
													<a class="preview__button btn --icon-left --secondary icon-link --event" data-event="previewFile" href="#previewFile">
														<iaixsl:choose>
															<iaixsl:when test="@preview = 'true'">
																<iaixsl:attribute name="rel"><iaixsl:value-of select="@path"/></iaixsl:attribute>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:attribute name="href"><iaixsl:value-of select="@path"/></iaixsl:attribute>
																<iaixsl:attribute name="target">_blank</iaixsl:attribute>
															</iaixsl:otherwise>
														</iaixsl:choose>
														<span>
														  <iaixsl:attribute name="aria-describedby">Nazwa załącznika</iaixsl:attribute>
														  <iaixsl:value-of select="@file"/>
														</span>
													</a>
													<a class="preview__button --delete btn icon-remove">
														<iaixsl:attribute name="href"><iaixsl:value-of select="@delete_link"/></iaixsl:attribute>
														<iaixsl:attribute name="title">Usuń plik</iaixsl:attribute>
														<span/>
													</a>
												</div>
											</iaixsl:for-each>
										</div>
									</iaixsl:if>
									
									<iaixsl:if test="price/@special_offer='true'">
										<div class="basket__item --special basket__special d-none d-md-inline-block">
                      <b>Dzięki ofercie specjalnej oszczędzasz<iaixsl:text> </iaixsl:text><span><iaixsl:value-of select="price/@yousave_formatted"/></span><iaixsl:text>, </iaixsl:text></b><b class="--color">czyli<iaixsl:text> </iaixsl:text><iaixsl:value-of select="price/@yousave_percent"/>%<iaixsl:text> </iaixsl:text>wartości tego produktu.</b>
										</div>
									</iaixsl:if>
									<div class="basket__item --actions basket__actions d-none d-md-flex">
										
										<iaixsl:if test="/shop/basket/@product_comment_active = 'y' and count(/shop/page/basket-details/product/price[not(@special_offer='true')]) &gt; 0 and @product_type != 'product_deposit'">
											<div class="basket__action --comment">
												<a href="#addComment" class="basket__comment --event" data-event="addComment">
													<iaixsl:attribute name="title">kliknij aby, dodać komentarz</iaixsl:attribute>
													<iaixsl:choose><iaixsl:when test="comment or (order_files/file and not(count(order_files/file) = 0))">Zmień opis lub załącznik</iaixsl:when><iaixsl:otherwise>Dodaj uwagi lub załączniki</iaixsl:otherwise></iaixsl:choose>
												</a>
											</div>
										</iaixsl:if>
										
										<iaixsl:if test="@product_type != 'product_deposit'">
											<div class="basket__action --remove">
												<a href="#remove" class="basket__remove --event" data-event="remove">
													<iaixsl:if test="/shop/page/basket-details/@reduction_amount_disabled = 'true' and order_quantity_range/min_quantity_per_order/text()">
														<iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
													</iaixsl:if>
													<iaixsl:choose>
														<iaixsl:when test="removeall_points">
															<iaixsl:attribute name="data-href"><iaixsl:value-of select="removeall_points"/></iaixsl:attribute>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:attribute name="data-href"><iaixsl:value-of select="removeall"/></iaixsl:attribute>
														</iaixsl:otherwise>
													</iaixsl:choose>
													Usuń z koszyka
												</a>
											</div>
										</iaixsl:if>
									</div>
								</div>

								
								<iaixsl:if test="price/@special_offer='true'">
									<div class="basket__item --special basket__special d-md-none">
                    <b>Dzięki ofercie specjalnej oszczędzasz<iaixsl:text> </iaixsl:text><span><iaixsl:value-of select="price/@yousave_formatted"/></span><iaixsl:text>, </iaixsl:text></b><b class="--color">czyli<iaixsl:text> </iaixsl:text><iaixsl:value-of select="price/@yousave_percent"/>%<iaixsl:text> </iaixsl:text>wartości tego produktu.</b>
									</div>
								</iaixsl:if>
								<div class="basket__item --actions basket__actions d-md-none">
									
									<iaixsl:if test="/shop/basket/@product_comment_active = 'y' and count(/shop/page/basket-details/product/price[not(@special_offer='true')]) &gt; 0 and @product_type != 'product_deposit'">
										<div class="basket__action --comment">
											<a href="#addComment" class="basket__comment --event" data-event="addComment">
												<iaixsl:attribute name="title">kliknij aby, dodać komentarz</iaixsl:attribute>
												<iaixsl:choose><iaixsl:when test="comment or (order_files/file and not(count(order_files/file) = 0))">Zmień opis lub załącznik</iaixsl:when><iaixsl:otherwise>Dodaj uwagi lub załączniki</iaixsl:otherwise></iaixsl:choose>
											</a>
										</div>
									</iaixsl:if>
									
									<iaixsl:if test="@product_type != 'product_deposit'">
										<div class="basket__action --remove">
											<a href="#remove" class="basket__remove --event" data-event="remove">
												<iaixsl:if test="/shop/page/basket-details/@reduction_amount_disabled = 'true' and order_quantity_range/min_quantity_per_order/text()">
													<iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
												</iaixsl:if>
												<iaixsl:choose>
													<iaixsl:when test="removeall_points">
														<iaixsl:attribute name="data-href"><iaixsl:value-of select="removeall_points"/></iaixsl:attribute>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:attribute name="data-href"><iaixsl:value-of select="removeall"/></iaixsl:attribute>
													</iaixsl:otherwise>
												</iaixsl:choose>
												Usuń z koszyka
											</a>
										</div>
									</iaixsl:if>
								</div>


								
								<div class="basket__item --quantity">
									
									<div class="basket__quantity">

										<iaixsl:if test="@product_type='product_virtual' or (@product_type='product_bundle' and not(count(bundled/product[@product_type = 'product_virtual']) = 0))">
											<iaixsl:attribute name="class">basket__quantity --virtual</iaixsl:attribute>
										</iaixsl:if>

										<input type="hidden">
											<iaixsl:attribute name="name">product[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
											<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
											<iaixsl:if test="@product_type = 'product_deposit'">
												<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
											</iaixsl:if>
										</input>
										<input type="hidden">
											<iaixsl:attribute name="name">size[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
											<iaixsl:attribute name="value"><iaixsl:value-of select="size/@type"/></iaixsl:attribute>
											<iaixsl:if test="@product_type = 'product_deposit'">
												<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
											</iaixsl:if>
										</input>
										<iaixsl:if test="additional/@hash">
											<input type="hidden">
												<iaixsl:attribute name="name">additional[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
												<iaixsl:attribute name="value"><iaixsl:value-of select="additional/@hash"/></iaixsl:attribute>
												<iaixsl:if test="@product_type = 'product_deposit'">
													<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
												</iaixsl:if>
											</input>
										</iaixsl:if>
										<iaixsl:if test="size/@ordered_points">
											<input type="hidden" value="1">
												<iaixsl:attribute name="name">forpoints[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
												<iaixsl:if test="@product_type = 'product_deposit'">
													<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
												</iaixsl:if>
											</input>
										</iaixsl:if>

										<iaixsl:choose>
											<iaixsl:when test="@product_type='product_virtual' or (@product_type='product_bundle' and not(count(bundled/product[@product_type = 'product_virtual']) = 0))">
												<input class="quantity__input" type="hidden">
													<iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
													<iaixsl:choose>
														<iaixsl:when test="size/@ordered_points">
															<iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered_points"/></iaixsl:attribute>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered"/></iaixsl:attribute>
														</iaixsl:otherwise>
													</iaixsl:choose>
													<iaixsl:if test="@product_type = 'product_deposit'">
														<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
													</iaixsl:if>
												</input>
											</iaixsl:when>
											<iaixsl:otherwise>
												<div class="buy basket__quantity_select">

													<select class="buy__number f-select">
														<iaixsl:if test="page/projector/product/exchange/@exchange_id or @product_type = 'product_deposit'">
															<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
														</iaixsl:if>
														<option>
															<iaixsl:choose>
																<iaixsl:when test="size/@ordered_points = format-number(1 * size/@unit_sellby, '0.#####')">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:when>
																	<iaixsl:when test="size/@ordered = format-number(1 * size/@unit_sellby, '0.#####')">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:when>
															</iaixsl:choose>
															<iaixsl:attribute name="value"><iaixsl:value-of select="format-number(1 * size/@unit_sellby, '0.#####')"/></iaixsl:attribute>
															<iaixsl:value-of select="translate(format-number(1 * size/@unit_sellby, '0.#####'), '.', ',')"/>
														</option>
														<option>
															<iaixsl:choose>
																<iaixsl:when test="size/@ordered_points = format-number(2 * size/@unit_sellby, '0.#####')">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:when>
																	<iaixsl:when test="size/@ordered = format-number(2 * size/@unit_sellby, '0.#####')">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:when>
															</iaixsl:choose>
															<iaixsl:attribute name="value"><iaixsl:value-of select="format-number(2 * size/@unit_sellby, '0.#####')"/></iaixsl:attribute>
															<iaixsl:value-of select="translate(format-number(2 * size/@unit_sellby, '0.#####'), '.', ',')"/>
														</option>
														<option>
															<iaixsl:choose>
																<iaixsl:when test="size/@ordered_points = 3 * size/@unit_sellby">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:when>
																	<iaixsl:when test="size/@ordered = 3 * size/@unit_sellby">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:when>
															</iaixsl:choose>
															<iaixsl:attribute name="value"><iaixsl:value-of select="format-number(3 * size/@unit_sellby, '0.#####')"/></iaixsl:attribute>
															<iaixsl:value-of select="translate(format-number(3 * size/@unit_sellby, '0.#####'), '.', ',')"/>
														</option>
														<option>
															<iaixsl:choose>
																<iaixsl:when test="size/@ordered_points = format-number(4 * size/@unit_sellby, '0.#####')">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:when>
																	<iaixsl:when test="size/@ordered = format-number(4 * size/@unit_sellby, '0.#####')">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:when>
															</iaixsl:choose>
															<iaixsl:attribute name="value"><iaixsl:value-of select="format-number(4 * size/@unit_sellby, '0.#####')"/></iaixsl:attribute>
															<iaixsl:value-of select="translate(format-number(4 * size/@unit_sellby, '0.#####'), '.', ',')"/>
														</option>
														<option>
															<iaixsl:choose>
																<iaixsl:when test="size/@ordered_points = format-number(5 * size/@unit_sellby, '0.#####')">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:when>
																	<iaixsl:when test="size/@ordered = format-number(5 * size/@unit_sellby, '0.#####')">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:when>
															</iaixsl:choose>
															<iaixsl:attribute name="value"><iaixsl:value-of select="format-number(5 * size/@unit_sellby, '0.#####')"/></iaixsl:attribute>
															<iaixsl:value-of select="translate(format-number(5 * size/@unit_sellby, '0.#####'), '.', ',')"/>
														</option>
														<option>
															<iaixsl:choose>
																<iaixsl:when test="size/@ordered_points &gt; format-number(5 * size/@unit_sellby, '0.#####')">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:when>
																	<iaixsl:when test="size/@ordered &gt; format-number(5 * size/@unit_sellby, '0.#####')">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:when>
															</iaixsl:choose>
															<iaixsl:attribute name="data-more">true</iaixsl:attribute>
															więcej
														</option>
													</select>
                          <div class="buy__more">
													
													  <span class="buy__more_delete"/>
														<input class="buy__more_input quantity__input" type="number">
															<iaixsl:attribute name="id">InputQuantity<iaixsl:value-of select="position()"/></iaixsl:attribute>
															<iaixsl:attribute name="aria-label">Wpisz ilość</iaixsl:attribute>
															<iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
															<iaixsl:if test="@product_type = 'product_deposit'">
																<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
															</iaixsl:if>

															<iaixsl:choose>
																<iaixsl:when test="size/@ordered_points">
																	<iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered_points"/></iaixsl:attribute>
																	<iaixsl:attribute name="data-prev"><iaixsl:value-of select="size/@ordered_points"/></iaixsl:attribute>
																</iaixsl:when>
																<iaixsl:otherwise>
																	<iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered"/></iaixsl:attribute>
																	<iaixsl:attribute name="data-prev"><iaixsl:value-of select="size/@ordered"/></iaixsl:attribute>
																</iaixsl:otherwise>
															</iaixsl:choose>

															<iaixsl:attribute name="data-amount"><iaixsl:value-of select="size/@amount"/></iaixsl:attribute>
															<iaixsl:attribute name="data-unit_sellby"><iaixsl:value-of select="size/@unit_sellby"/></iaixsl:attribute>
															<iaixsl:attribute name="data-step"><iaixsl:value-of select="size/@unit_sellby"/></iaixsl:attribute>
															<iaixsl:attribute name="data-unit"><iaixsl:value-of select="size/@unit"/></iaixsl:attribute>
															<iaixsl:attribute name="data-unit_precision"><iaixsl:value-of select="size/@unit_precision"/></iaixsl:attribute>

															<iaixsl:if test="order_quantity_range/max_quantity_per_order">
																<iaixsl:attribute name="data-max_q"><iaixsl:value-of select="order_quantity_range/max_quantity_per_order"/></iaixsl:attribute>
															</iaixsl:if>
															<iaixsl:if test="order_quantity_range/max_size_quantity_per_order">
																<iaixsl:attribute name="data-max_s"><iaixsl:value-of select="order_quantity_range/max_size_quantity_per_order"/></iaixsl:attribute>
															</iaixsl:if>
															<iaixsl:if test="order_quantity_range/min_quantity_per_order">
																<iaixsl:attribute name="data-min_q"><iaixsl:value-of select="order_quantity_range/min_quantity_per_order"/></iaixsl:attribute>
															</iaixsl:if>
															<iaixsl:if test="order_quantity_range/min_size_quantity_per_order">
																<iaixsl:attribute name="data-min_s"><iaixsl:value-of select="order_quantity_range/min_size_quantity_per_order"/></iaixsl:attribute>
															</iaixsl:if>
														</input>
													</div>
												</div>

												
												<iaixsl:if test="not(size/@unit_sellby = '1')">
													<div class="basket__sellby">
														sprzedawane po
														<iaixsl:value-of select="size/@unit_sellby"/><iaixsl:text> </iaixsl:text>
														<iaixsl:choose>
															<iaixsl:when test="not(size/@ordered &gt; 1)">
																<iaixsl:value-of select="size/@unit_singular"/>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of select="size/@unit"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</div>
												</iaixsl:if>

											</iaixsl:otherwise>
										</iaixsl:choose>
									</div>
								</div>

								
								<div class="basket__item --sum">
									
									<div class="basket__prices">
										<iaixsl:choose>
											
											<iaixsl:when test="size/@ordered_points">
												 <del class="basket__max_price points">
													<iaixsl:choose>
														<iaixsl:when test="not($nettoPriceBasketedit = '') and not($priceTypeVat = '')">
															<span class="basket__max_price_net"><iaixsl:value-of select="price/@price_net_formatted"/><span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span></span>
															<span class="basket__max_price_gross gross_price">(<iaixsl:value-of select="price/@price_formatted"/><span class="price_vat"><iaixsl:value-of select="$grossPriceBasketedit"/></span>)</span>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:value-of select="price/@price_formatted"/>
														</iaixsl:otherwise>
													</iaixsl:choose>
												</del>
												<span class="basket__price --points">
													<iaixsl:value-of select="price/@points"/> pkt.
												</span>
											</iaixsl:when>
											
											<iaixsl:otherwise>
												 <iaixsl:if test="price/@beforerebate">
													<del class="basket__max_price">
														<iaixsl:choose>
															<iaixsl:when test="not($nettoPriceBasketedit = '') and not($priceTypeVat = '')">
																<span class="basket__max_price_net"><iaixsl:value-of select="price/@beforerebate_net_formatted"/><span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span></span>
																<span class="basket__max_price_gross gross_price">(<iaixsl:value-of select="price/@beforerebate_formatted"/><span class="price_vat"><iaixsl:value-of select="$grossPriceBasketedit"/></span>)</span>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of select="price/@beforerebate_formatted"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</del>
												</iaixsl:if>
												<span class="basket__price">
													<iaixsl:choose>
														<iaixsl:when test="not($nettoPriceBasketedit = '') and not($priceTypeVat = '')">
															<span class="basket__price_net"><iaixsl:value-of select="price/@price_net_formatted"/><span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span></span>
															<span class="basket__price_gross gross_price">(<iaixsl:value-of select="price/@price_formatted"/><span class="price_vat"><iaixsl:value-of select="$grossPriceBasketedit"/></span>)</span>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:value-of select="price/@price_formatted"/>
														</iaixsl:otherwise>
													</iaixsl:choose>
												</span>
											</iaixsl:otherwise>
										</iaixsl:choose>
										
										<span class="basket__unit">
											<iaixsl:choose>
												<iaixsl:when test="not(size/@ordered &gt; 1)">
													 / 
													<iaixsl:value-of select="size/@unit_singular"/>
												</iaixsl:when>
												<iaixsl:when test="size/@ordered_points">
													 / 
													<iaixsl:value-of select="size/@ordered_points"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="size/@unit"/>
												</iaixsl:when>
												<iaixsl:when test="not(size/@ordered &gt; 1)">
													 / 
													<iaixsl:value-of select="size/@unit_singular"/>
												</iaixsl:when>
												<iaixsl:otherwise>
													 / 
													<iaixsl:value-of select="@size/@ordered"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="size/@unit"/>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</span>
									</div>
									
									<div class="basket__sum">
										<div class="basket__sum_item">
											<iaixsl:if test="price/@special_offer='true'">
												<iaixsl:attribute name="class">basket__sum_item --color</iaixsl:attribute>
											</iaixsl:if>
											<iaixsl:choose>
												<iaixsl:when test="size/@ordered_points">
													<span class="--points">
														<iaixsl:value-of select="price/@points_sum"/> pkt.
													</span>
												</iaixsl:when>
												<iaixsl:otherwise>
													<span class="sum">
													  
													  
													  
														<iaixsl:choose>
															<iaixsl:when test="not($nettoPriceBasketedit = '') and not($priceTypeVat = '')">
																<span class="basket__price_net"><iaixsl:value-of select="price/@worth_net_formatted"/><span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span></span>
																<span class="basket__price_gross gross_price">(<iaixsl:value-of select="price/@worth_formatted"/><span class="price_vat"><iaixsl:value-of select="$grossPriceBasketedit"/></span>)</span>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of select="price/@worth_formatted"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</span>
												</iaixsl:otherwise>
											</iaixsl:choose>

											
											<span class="basket__unit">
												<iaixsl:choose>
													<iaixsl:when test="size/@ordered_points and not(size/@ordered_points &gt; 1)">
														 / 
														<iaixsl:value-of select="size/@unit_singular"/>
													</iaixsl:when>
													<iaixsl:when test="size/@ordered_points">
														 / 
														<iaixsl:value-of select="size/@ordered_points"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="size/@unit"/>
													</iaixsl:when>
													<iaixsl:when test="not(size/@ordered &gt; 1)">
														 / 
														<iaixsl:value-of select="size/@unit_singular"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														 / 
														<iaixsl:value-of select="size/@ordered"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="size/@unit"/>
													</iaixsl:otherwise>
												</iaixsl:choose>
											</span>
										</div>
									</div>

									
									<iaixsl:if test="price/rebateNumber and not(size/@ordered_points)">
										<small class="basket__tip">Kup więcej, zapłać mniej<i class="icon-question css_tip css_tip_small"/></small>
										<div class="basket__tip_content tooltipContent" aria-hidden="true">
											<iaixsl:for-each select="price/rebateNumber/rebate">
												<div>
													Od
													<strong>
														<iaixsl:value-of select="@threshold"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../../../size/@unit"/>
													</strong>
													cena
													<strong>
														<iaixsl:choose>
															<iaixsl:when test="not($nettoPriceBasketedit = '')">
																<iaixsl:value-of select="@price_net_formatted"/>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of select="@price_formatted"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</strong>
													- rabat
													<strong>
														<iaixsl:value-of select="@value"/>%
													</strong>
												</div>
											</iaixsl:for-each>
										</div>
										<div class="sr-only">
											<iaixsl:for-each select="price/rebateNumber/rebate">
												<div>
													Od
													<strong>
														<iaixsl:value-of select="@threshold"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../../../size/@unit"/>
													</strong>
													cena
													<strong>
														<iaixsl:choose>
															<iaixsl:when test="not($nettoPriceBasketedit = '')">
																<iaixsl:value-of select="@price_net_formatted"/>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of select="@price_formatted"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</strong>
													- rabat
													<strong>
														<iaixsl:value-of select="@value"/>%
													</strong>
												</div>
											</iaixsl:for-each>
										</div>
									</iaixsl:if>
								</div>

								<iaixsl:if test="/shop/rebatesLocal/rebate[@selected] and ((@promo = 'true' and /shop/rebatesLocal/@promo_excluded = 'true') or (@special = 'true' and /shop/rebatesLocal/@special_excluded = 'true') or (@discount = 'true' and /shop/rebatesLocal/@discount_excluded = 'true') or (@distinguished = 'true' and /shop/rebatesLocal/@distinguished_excluded = 'true') or (@bestseller = 'true' and /shop/rebatesLocal/@bestseller_excluded = 'true') or (@new = 'true' and /shop/rebatesLocal/@new_excluded = 'true'))">
									<div class="basket__item --excluded menu_messages_message --small">
										<p>Ten produkt nie podlega obniżce z osiągniętego progu rabatu</p>
									</div>
								</iaixsl:if>

								<div class="basket__item --add-comment">
									<div class="basket__add --comment">
										<label class="add__label">
										  <iaixsl:attribute name="for">add__comment_<iaixsl:value-of select="position()"/></iaixsl:attribute>
										  Wpisz komentarz
										</label>
										<textarea class="add__textarea --event" data-event_name="blur" data-event_list="focus, focusout, blurout" data-event="blurOnCommentTextarea">
										  <iaixsl:attribute name="id">add__comment_<iaixsl:value-of select="position()"/></iaixsl:attribute>
											<iaixsl:attribute name="name">comment[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
											<iaixsl:if test="@product_type = 'product_deposit'">
												<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
											</iaixsl:if>
											<iaixsl:if test="comment">
												<iaixsl:value-of select="comment"/>
											</iaixsl:if>
										</textarea>
									</div>
									<div class="basket__add --files">
										<label class="add__label">
										  <iaixsl:attribute name="for">add__file_<iaixsl:value-of select="position()"/></iaixsl:attribute>
										  Załącz plik do produktu
										</label>
										<div class="add__files">
											<input type="file">
											  <iaixsl:attribute name="id">add__file_<iaixsl:value-of select="position()"/></iaixsl:attribute>
												<iaixsl:if test="/shop/form_data/upload_file/max_filesize/@bytes">
													<iaixsl:attribute name="data-max_filesize"><iaixsl:value-of select="/shop/form_data/upload_file/max_filesize/@bytes"/></iaixsl:attribute>
												</iaixsl:if>
												<iaixsl:attribute name="name">comment_photo[<iaixsl:value-of select="@id"/>][<iaixsl:value-of select="size/@type"/>][<iaixsl:choose><iaixsl:when test="additional/@hash"><iaixsl:value-of select="additional/@hash"/></iaixsl:when><iaixsl:otherwise>0</iaixsl:otherwise></iaixsl:choose>][]</iaixsl:attribute>
												<iaixsl:if test="@product_type = 'product_deposit'">
													<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
												</iaixsl:if>
											</input>
										</div>
										<a href="#addMoreFile" class="add__file btn --icon-left icon-plus --event" data-event="addMoreFile">Dodaj kolejny plik</a>
									</div>
									<div class="basket__add --save">
										<a href="#save" class="add__save --submit --event" data-event="reload">
											<span class="save__button --desktop btn --solid">Zapisz opis i załącznik</span>
										</a>
									</div>
								</div>
							</div>



						
					</iaixsl:for-each>
		      
      		<div class="basket__recover_product">
					  <b>Usunięto z koszyka</b>
					  <a href="#recoverProduct" class="recover_product --event" data-event="recoverProduct" tabindex="0">
						  Przywróć
					  </a>
					  <a href="#recoverProductClose" class="recover_product__close --event" data-event="recoverProductClose"/>
					  <span class="progress_bar"><span class="progress_bar__value"/></span>
					</div>
				</div>

				
				<div class="basket__tools">
					<div class="basket__tools_wrappers">
						<a href="#addWrappers" class="tool__button --add-wrapper btn --event" data-event="showWrappers">Wybierz opakowanie</a>
					</div>
					<div class="basket__tools_remove">
						<a href="#addToFavorite" class="tool__button --add-to-favorite btn">Dodaj cały koszyk doulubionych</a>
						<a href="#removeAll" class="tool__button --remove-all btn --event" data-event="removeAll">Opróżnij koszyk </a>
					</div>
				</div>

				<input type="hidden" name="allow_division_order" value="no">
					<iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes' and not(count(page/basket-details/product[@division='later']) = 0 or count(page/basket-details/product[@division='now']) = 0)"><iaixsl:attribute name="value">yes</iaixsl:attribute></iaixsl:if>
				</input>

				
				<iaixsl:choose>
					<iaixsl:when test="/shop/page/basket-details/rebate_local/active/selected/product/@id = /shop/page/basket-details/rebate_local/active/products/product/@id">
						<div class="basket__gift_inputs d-none">
							<input type="hidden" name="product[0]" class="gift_input gift_product" value="1" disabled="disabled">
							  <iaixsl:if test="/shop/page/basket-details/rebate_local/active/selected/product/@id">
								  <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/basket-details/rebate_local/active/selected/product/@id"/></iaixsl:attribute>
								</iaixsl:if>
							</input>
							<input type="hidden" name="size[0]" class="gift_input gift_size" disabled="disabled">
								<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/basket-details/rebate_local/active/selected/product/@size"/></iaixsl:attribute>
							</input>
							<input type="hidden" name="set_quantity[0]" value="1" class="gift_input gift_quantity" disabled="disabled"/>
							<input type="hidden" name="gift[0]" value="1" class="gift_input gift" disabled="disabled"/>
						</div>
					</iaixsl:when>
					<iaixsl:otherwise>
						<div class="basket__gift_inputs d-none">
						  <iaixsl:if test="/shop/page/basket-details/rebate_local/selected/@product">
							  <iaixsl:attribute name="data-nogiftforyou">true</iaixsl:attribute>
							</iaixsl:if>
							<input type="hidden" name="product[0]" class="gift_input gift_product" value="1" disabled="disabled">
							  <iaixsl:if test="/shop/page/basket-details/rebate_local/selected/@product">
								  <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/basket-details/rebate_local/selected/@product"/></iaixsl:attribute>
								</iaixsl:if>
							</input>
							<input type="hidden" name="size[0]" class="gift_input gift_size" disabled="disabled">
								<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/basket-details/rebate_local/selected/@size"/></iaixsl:attribute>
							</input>
							<input type="hidden" name="set_quantity[0]" value="0" class="gift_input gift_quantity" disabled="disabled"/>
							<input type="hidden" name="gift[0]" value="1" class="gift_input gift" disabled="disabled"/>
						</div>
					</iaixsl:otherwise>
				</iaixsl:choose>

				<div class="remove_modal --all">
					<b>Czy na pewno chcesz usunąć wszystkie produkty z koszyka?</b>
					<a class="btn --solid --small --outline remove_modal__close" href="">
						<iaixsl:attribute name="title">Nie</iaixsl:attribute>
						Nie
					</a>
					<a class="btn --solid --small remove_modal__confirm" href="">
						<iaixsl:attribute name="title">Tak</iaixsl:attribute>
						Tak
					</a>
				</div>
				<div class="remove_modal">
					<b>Czy na pewno chcesz usunąć produkt z koszyka?</b>
					<a class="btn --solid --small --outline remove_modal__close" href="">
						<iaixsl:attribute name="title">Nie</iaixsl:attribute>
						Nie
					</a>
					<a class="btn --solid --small remove_modal__confirm" href="">
						<iaixsl:attribute name="title">Tak</iaixsl:attribute>
						Tak
					</a>
				</div>

			</form>

			
			<div class="basket__wrappers"/>

		</section>

		<iaixsl:if test="/shop/basket/shipping_time"> </iaixsl:if>
		<iaixsl:if test="/shop/page/basket-details/product/price/@detalprice_net_formatted"> </iaixsl:if>
		<iaixsl:if test="/shop/page/basket-details/product/price/@maxprice_formatted"> </iaixsl:if>
		<iaixsl:if test="/shop/page/basket-details/product/price/@maxprice_net_formatted"> </iaixsl:if>
		<iaixsl:if test="/shop/page/basket-details/product/@code"> </iaixsl:if>
		<iaixsl:if test="/shop/page/basket-details/product/price//price/@points"> </iaixsl:if>
		<iaixsl:if test="/shop/page/basket-details/product/size/@name"> </iaixsl:if>
		<iaixsl:if test="/shop/basket/@product_comment_active"> </iaixsl:if>
	</iaixsl:if>
<!-- (cop_modules_basketedit, 66e2fc4a27c219.70367335.12)-->
  <iaixsl:variable name="deliveryTime"><iaixsl:choose>
    <iaixsl:when test="/shop/allow_division_order/@turn_on = 'no' and /shop/basket/shipping_division_time/@days != '0'"><iaixsl:choose>
    <iaixsl:when test="/shop/basket/delivery_time_division/@today = 'true'">Dzisiaj</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 1">Poniedziałek</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 2">Wtorek</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 3">Środa</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 4">Czwartek</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 5">Piątek</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 6">Sobota</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 7">Niedziela</iaixsl:when>
  </iaixsl:choose><iaixsl:if test="not(/shop/basket/delivery_time_division/@week_amount = 0)">
    <iaixsl:variable name="delivery_time_division"><iaixsl:value-of select="/shop/basket/delivery_time_division/@time"/></iaixsl:variable>
    <iaixsl:variable name="delivery_time_division_month_day"><iaixsl:value-of select="substring($delivery_time_division, 6, 5)"/></iaixsl:variable>
    <iaixsl:variable name="dalivery_time_formatted"><iaixsl:value-of select="substring-after($delivery_time_division_month_day, '-')"/>.<iaixsl:value-of select="substring-before($delivery_time_division_month_day, '-')"/></iaixsl:variable> (<iaixsl:value-of select="$dalivery_time_formatted"/>)</iaixsl:if></iaixsl:when>
    <iaixsl:otherwise><iaixsl:choose>
    <iaixsl:when test="/shop/basket/delivery_time/@today = 'true'">Dzisiaj</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time/@week_day = 1">Poniedziałek</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time/@week_day = 2">Wtorek</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time/@week_day = 3">Środa</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time/@week_day = 4">Czwartek</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time/@week_day = 5">Piątek</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time/@week_day = 6">Sobota</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time/@week_day = 7">Niedziela</iaixsl:when>
  </iaixsl:choose><iaixsl:if test="not(/shop/basket/delivery_time/@week_amount = 0)">
    <iaixsl:variable name="delivery_time"><iaixsl:value-of select="/shop/basket/delivery_time/@time"/></iaixsl:variable>
    <iaixsl:variable name="delivery_time_month_day"><iaixsl:value-of select="substring($delivery_time, 6, 5)"/></iaixsl:variable>
    <iaixsl:variable name="dalivery_time_formatted"><iaixsl:value-of select="substring-after($delivery_time_month_day, '-')"/>.<iaixsl:value-of select="substring-before($delivery_time_month_day, '-')"/></iaixsl:variable> (<iaixsl:value-of select="$dalivery_time_formatted"/>)</iaixsl:if></iaixsl:otherwise>
  </iaixsl:choose></iaixsl:variable>
  <iaixsl:variable name="deliveryTimeDivision"><iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes'"><iaixsl:choose>
    <iaixsl:when test="/shop/basket/delivery_time_division/@today = 'true'">Dzisiaj</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 1">Poniedziałek</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 2">Wtorek</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 3">Środa</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 4">Czwartek</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 5">Piątek</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 6">Sobota</iaixsl:when>
    <iaixsl:when test="/shop/basket/delivery_time_division/@week_day = 7">Niedziela</iaixsl:when>
  </iaixsl:choose><iaixsl:if test="not(/shop/basket/delivery_time_division/@week_amount = 0)">
    <iaixsl:variable name="delivery_time_division"><iaixsl:value-of select="/shop/basket/delivery_time_division/@time"/></iaixsl:variable>
    <iaixsl:variable name="delivery_time_division_month_day"><iaixsl:value-of select="substring($delivery_time_division, 6, 5)"/></iaixsl:variable>
    <iaixsl:variable name="dalivery_time_formatted"><iaixsl:value-of select="substring-after($delivery_time_division_month_day, '-')"/>.<iaixsl:value-of select="substring-before($delivery_time_division_month_day, '-')"/></iaixsl:variable> (<iaixsl:value-of select="$dalivery_time_formatted"/>)</iaixsl:if></iaixsl:if></iaixsl:variable>
  <script class="ajaxLoad">
    window.COPModulesFormData = {
      delivery_time: &quot;<iaixsl:value-of select="$deliveryTime"/>&quot;,
      <iaixsl:if test="$deliveryTimeDivision != ''">
      delivery_time_division: &quot;<iaixsl:value-of select="$deliveryTimeDivision"/>&quot;,
      </iaixsl:if>
      basket_cost_worth: &quot;<iaixsl:value-of select="/shop/page/basket-details/summary/money/@beforerebate_formatted"/>&quot;,
      <iaixsl:if test="/shop/basket/@points_used and /shop/basket/@points_used != 0">
      basket_cost_worth_points: &quot;<iaixsl:value-of select="/shop/basket/@points_used"/>&quot;,
      </iaixsl:if>
      <iaixsl:if test="/shop/page/basket-details/summary/money/@total_rebate &gt; 0">
      basket_cost_rebate: &quot;<iaixsl:value-of select="/shop/page/basket-details/summary/money/@total_rebate_formatted"/>&quot;,
      </iaixsl:if>
      <iaixsl:if test="/shop/basket/shipping_cheapest_couriers/shipping_to_door_courier/@shippingCost">
      basket_cost_shipping_to_door: &quot;<iaixsl:value-of select="/shop/basket/shipping_cheapest_couriers/shipping_to_door_courier/@shippingCost"/>&quot;,
      </iaixsl:if>
      <iaixsl:if test="/shop/basket/shipping_cheapest_couriers/shipping_to_pickup_point_courier/@shippingCost">
      basket_cost_shipping_to_pickup: &quot;<iaixsl:value-of select="/shop/basket/shipping_cheapest_couriers/shipping_to_pickup_point_courier/@shippingCost"/>&quot;,
      </iaixsl:if>
      <iaixsl:if test="/shop/basket/shipping_cheapest_couriers/shipping_to_door_courier/@icon">
      basket_cost_shipping_to_door_icon: &quot;<iaixsl:value-of select="/shop/basket/shipping_cheapest_couriers/shipping_to_door_courier/@icon"/>&quot;,
      </iaixsl:if>
      <iaixsl:if test="/shop/basket/shipping_cheapest_couriers/shipping_to_pickup_point_courier/@icon">
      basket_cost_shipping_to_pickup_icon: &quot;<iaixsl:value-of select="/shop/basket/shipping_cheapest_couriers/shipping_to_pickup_point_courier/@icon"/>&quot;,
      </iaixsl:if>
      <iaixsl:if test="/shop/basket/@shipping_after_rebate &gt; '0'">
      basket_cost_shipping: &quot;<iaixsl:value-of select="/shop/basket/@shipping_after_rebate_formatted"/>&quot;,
      </iaixsl:if>
      <iaixsl:if test="/shop/page/basket-details/summary/money/@balance_to_pay != 0">
      basket_cost_balance: &quot;<iaixsl:choose><iaixsl:when test="/shop/page/basket-details/summary/money/@balance_to_pay &gt; 0"><iaixsl:value-of select="/shop/page/basket-details/summary/money/@balance_to_pay_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="substring-after(/shop/page/basket-details/summary/money/@balance_to_pay_formatted, '-')"/></iaixsl:otherwise></iaixsl:choose>&quot;,
      basket_cost_balance_type: &quot;<iaixsl:choose><iaixsl:when test="/shop/page/basket-details/summary/money/@balance_to_pay &gt; 0">overpayment</iaixsl:when><iaixsl:otherwise>underpayment</iaixsl:otherwise></iaixsl:choose>&quot;,
      </iaixsl:if>
      basket_cost_total: &quot;<iaixsl:value-of select="/shop/page/basket-details/summary/money/@to_pay_formatted"/>&quot;,
      <iaixsl:if test="/shop/basket/@points_used and /shop/basket/@points_used != 0">
      basket_cost_total_points: &quot;<iaixsl:value-of select="/shop/basket/@points_used"/>&quot;,
      </iaixsl:if>
      <iaixsl:if test="/shop/basket/groups/group[types/type/@value = 'subscription']">
      basket_cost_subscription: &quot;<iaixsl:value-of select="/shop/basket/groups/group[types/type/@value = 'subscription']/details/prices/@price_formatted"/>&quot;,
      </iaixsl:if>
      <iaixsl:if test="/shop/page/basket-details/summary/money/@advance &gt; 0">
      basket_cost_advance: &quot;<iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/>&quot;,
      basket_cost_advance_type: &quot;<iaixsl:choose><iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'true'">both</iaixsl:when><iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true'">dvp</iaixsl:when><iaixsl:otherwise>prepaid</iaixsl:otherwise></iaixsl:choose>&quot;,
      </iaixsl:if>
			<iaixsl:if test="/shop/page/basket-details/summary/money/@total_deposit &gt; 0">
			basket_cost_deposit: &quot;<iaixsl:value-of select="/shop/page/basket-details/summary/money/@total_deposit_formatted"/>&quot;,
			</iaixsl:if>
			orderMinimalWholesaleNotReached: <iaixsl:value-of select="/shop/page/communicates/warning/@type = 'order_minimal_wholesale_blocked'"/>,
    };
  </script>
  <div class="summary_wrapper">
  	<div class="cop__summary" data-skeleton="summary">
  		<div class="cop__skeleton"/>
  		<div class="cop__skeleton --content">
  		  <iaixsl:if test="/shop/page/@type = 'basketedit'">
				  <express-checkout type="basket"/>
				</iaixsl:if>
  		</div>
  	</div>
  </div>
	<div id="cop_modules_templates_wrapper">

	<div id="cop_menu_notice" class="menu_notice">
		<h2>Ostrzeżenie</h2>
		<p>Twoje zamówienie nie zostało jeszcze złożone. Dopiero przejście do kolejnego etapu zamówienia oznacza wysłanie go do realizacji. Pamiętaj, że wracając do zamówienia za jakiś czas niektóre z produktów lub cen mogą być już nieaktualne.</p>
		<div class="menu_notice__buttons">
			<a href="#continue" class="menu_notice__button --continue btn --solid">Kontynuuj składanie zamówienia</a>
			<a href="#stop" class="menu_notice__button --stop btn">Przerwij składanie zamówienia</a>
		</div>
	</div>

	
	<iaixsl:if test="/shop/page/rebates/@rebates_codes = 'y' or /shop/page/rebates_codes/@active = 'y'">
		<template id="cop_rebate_code_template">
			<div class="cop_rebate_code">
				<iaixsl:if test="/shop/rebatecode/@code">
					<iaixsl:attribute name="class">cop_rebate_code --filled</iaixsl:attribute>
					<iaixsl:attribute name="data-rebate-code"><iaixsl:value-of select="/shop/rebatecode/@code"/></iaixsl:attribute>
				</iaixsl:if>
				<div class="cop_rebate_code__label">
					<span class="cop_rebate_code__label_text">Kod rabatowy</span>
					<a href="#addRebateCode" class="cop_rebate_code__add" tabindex="0">Dodaj</a>
				</div>
				<div class="cop_rebate_code__field f-group --field" aria-hidden="true">
					<div class="cop_rebate_code__input_wrapper f-feedback">
						<input id="rebate_code_input" type="text" class="cop_rebate_code__input f-control" name="rebates_codes" disabled="disabled">
						  <iaixsl:attribute name="aria-label">Wpisz kod rabatowy</iaixsl:attribute>
							<iaixsl:if test="/shop/rebatecode/@code">
								<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/rebatecode/@code"/></iaixsl:attribute>
							</iaixsl:if>
						</input>
						<div class="f-message"/>
					</div>
					<button type="button" class="cop_rebate_code__save" disabled="disabled">
					  <iaixsl:attribute name="aria-label">Zatwierdź kod rabatowy</iaixsl:attribute>
  			  </button>
				</div>
				<div class="cop_rebate_code__message">
				  <iaixsl:if test="not(/shop/rebatecode/@code)">
					  <iaixsl:attribute name="aria-hidden">true</iaixsl:attribute>
					</iaixsl:if>
					<strong class="cop_rebate_code__text"><iaixsl:if test="/shop/rebatecode/@code"><iaixsl:value-of select="/shop/rebatecode/@code"/></iaixsl:if></strong>
					<div class="cop_rebate_code__links">
						<a href="#editRemarkMessage" class="cop_rebate_code__link --edit" tabindex="0">
  						<iaixsl:if test="not(/shop/rebatecode/@code)">
  						  <iaixsl:attribute name="tabindex">-1</iaixsl:attribute>
  						</iaixsl:if>
						  Edytuj
						</a>

						<a href="#removeRemarkMessage" class="cop_rebate_code__link --remove">
							<iaixsl:if test="not(/shop/rebatecode/@code)">
  						  <iaixsl:attribute name="tabindex">-1</iaixsl:attribute>
  						</iaixsl:if>
  						Usuń
						</a>
					</div>
				</div>
			</div>
		</template>
	</iaixsl:if>
	

	
	<template id="cop_summary_template">
		<div class="cop_summary">
			<div class="cop_summary__block --content">
				<div class="cop_summary__item --time cop_time">
					<div class="cop_time__item --now --active">
						<span class="cop_time__label">Przewidywana dostawa:</span>
						<strong class="cop_time__value"/>
					</div>
					<div class="cop_time__item --later">
						<span class="cop_time__label">Przewidywana dostawa produktów z dłuższym czasem oczekiwania:</span>
						<strong class="cop_time__value"/>
					</div>
				</div>
				<div class="cop_summary__item --costs cop_costs">
					
					<div class="cop_costs__item --worth">
						<span class="cop_costs__label">Wartość zamówienia:</span>
						<strong class="cop_costs__value"/>
					</div>
					
					<div class="cop_costs__item --deposit">
						<span class="cop_costs__label"><span class="cop_costs__label_deposit">W tym kaucja:</span></span>
						<strong class="cop_costs__value"/>
					</div>
					
					<div class="cop_costs__item --worth-points">
						<span class="cop_costs__label">Wartość zamówienia w punktach:</span>
						<strong class="cop_costs__value"/>
					</div>
					
					<div class="cop_costs__item --rebate">
						<span class="cop_costs__label">Rabat:</span>
						<strong class="cop_costs__value --minus"/>
					</div>
					
					<div class="cop_costs__item --paymentcost">
						<span class="cop_costs__label">Koszt płatności:</span>
						<strong class="cop_costs__value --plus"/>
					</div>
					
					<div class="cop_costs__item --shipping">
						<span class="cop_costs__label">Koszt przesyłki:</span>
						<strong class="cop_costs__value --plus"/>
					</div>
					
					<div class="cop_costs__item --shipping-to-pickup-point">
						<span class="cop_costs__label"><span class="cop_costs__img_wrapper"><img class="cop_costs__img" src="" alt=""/></span><span>Odbiór w punkcie od:</span></span>
						<strong class="cop_costs__value --plus"/>
					</div>
					
					<div class="cop_costs__item --shipping-to-door">
						<span class="cop_costs__label"><span class="cop_costs__img_wrapper"><img class="cop_costs__img" src="" alt=""/></span><span>Dostawa pod adres od:</span></span>
						<strong class="cop_costs__value --plus"/>
					</div>
					
					<div class="cop_costs__item --insurance">
						<span class="cop_costs__label">Koszt ubezpieczenia:</span>
						<strong class="cop_costs__value --plus"/>
					</div>
					
					<div class="cop_costs__item --balance">
						<span class="cop_costs__label">Opłacone z salda:<br/>(nadpłaty na koncie klienta)</span>
						<strong class="cop_costs__value --minus"><iaixsl:value-of select="/shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@currency_value_formatted"/></strong>
					</div>
          
					<div class="cop_costs__item --advance">
						<span class="cop_costs__label">Wymagana zaliczka:</span>
						<strong class="cop_costs__value"/>
					</div>
				</div>
				<div class="cop_summary__item --free-delivery cop_free_delivery">
					<iaixsl:if test="/shop/basket/@toshippingfree and /shop/basket/@toshippingfree &gt; 0">
						<iaixsl:attribute name="class">cop_summary__item --free-delivery cop_free_delivery --active</iaixsl:attribute>
					</iaixsl:if>
					<strong class="cop_free_delivery__label">
						<span class="cop_free_delivery__label_text">Do darmowej dostawy brakuje </span>
						<span class="cop_free_delivery__label_value"><iaixsl:value-of select="/shop/basket/@toshippingfree_formatted"/></span>
					</strong>
					<iaixsl:if test="/shop/page/basket-details/summary/smile">
						<div class="cop_free_delivery__progress_bar">
							<iaixsl:attribute name="style">--free-percent:<iaixsl:value-of select="1 - /shop/basket/@toshippingfree div /shop/basket/@shippinglimitfree"/>;</iaixsl:attribute>
							<span class="cop_free_delivery__progress_rate"/>
						</div>
					</iaixsl:if>
				</div>
				<div class="cop_summary__item --total cop_total">
					<div class="cop_total__item --value">
						<span class="cop_total__label">Do zapłaty:</span>
						<strong class="cop_total__value"/>
					</div>
					<div class="cop_total__item --points">
						<iaixsl:if test="(basket/@points_used) and (basket/@points_used != 0)">
							<iaixsl:attribute name="class">cop_total__item --points --active</iaixsl:attribute>
						</iaixsl:if>
						<strong class="cop_total__value --plus">
							<iaixsl:if test="(basket/@points_used) and (basket/@points_used != 0)">
								<iaixsl:value-of select="substring-before(basket/@points_used, '.')"/> pkt.
							</iaixsl:if>
						</strong>
					</div>
				</div>
				<iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')">
					<div class="cop_terms__item --vat f-group cop_vat --checkbox --hidden">
						<input type="checkbox" name="vat_company" class="f-control" id="cop_terms_vat_checkbox">
						  <iaixsl:if test="(/shop/page/client-data/invoice_data/@vat_company = 'n') or (/shop/page/client-data/invoice_data/@vat_company = 'p')">
								<iaixsl:attribute name="checked">checked</iaixsl:attribute>
							</iaixsl:if>
						</input>
						<label class="f-label" for="cop_terms_vat_checkbox">Jestem płatnikiem VAT EU. Zamawiam bez VAT i zobowiązuję się go rozliczyć na terenie swojego kraju.</label>
					</div>
			  </iaixsl:if>
				<div class="cop_summary__item --subscription-term cop_subscription_term">Będziemy obciążać twoją kartę płatniczą opłatą za subskrypcję zgodnie z wybranym cyklem wysyłki aż do zakończenia subskrypcji</div>
				<div class="cop_summary__item --clauses cop_clauses"/>
				<div class="cop_summary__item --terms cop_terms">
					<div class="cop_terms__item --agree f-group --checkbox">
						<input type="checkbox" name="terms_agree" class="f-control --validate" id="cop_terms_agree_checkbox" required="required"/>
						<label class="f-label" for="cop_terms_agree_checkbox"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/personal_data_processing_texts/personal_data"/></label>
					</div>
					<div class="cop_terms__item --virtual f-group --checkbox">
						<input type="checkbox" name="order_virtual" class="f-control --validate" id="cop_order_virtual_checkbox" required="required"/>
						<label class="f-label" for="cop_order_virtual_checkbox">Wyrażam zgodę i proszę zarazem o spełnienie świadczenia przed upływem terminu do odstąpienia od umowy. Jestem świadomy/a, że udzielając niniejszej zgody tracę moje prawo do odstąpienia od umowy wraz z momentem rozpoczęcia świadczenia.</label>
					</div>
					<div class="cop_terms__item --service f-group --checkbox">
						<input type="checkbox" name="order_service" class="f-control --validate" id="cop_order_service_checkbox" required="required"/>
						<label class="f-label" for="cop_order_service_checkbox">Wyrażam zgodę i proszę zarazem o rozpoczęcie świadczenia usługi przed upływem terminu do odstąpienia od umowy. Jestem świadomy/a, że w przypadku pełnego wykonania usługi tracę moje prawo do odstąpienia od umow.</label>
					</div>
					<div class="cop_terms__item --mailing f-group --checkbox">
						<input type="checkbox" name="client_mailing" class="f-control" id="cop_client_mailing_checkbox" value="1"/>
						<label class="f-label" for="cop_client_mailing_checkbox">Chcę otrzymywać E-mail Newsletter (możliwość późniejszej rezygnacji).</label>
					</div>
					<div class="cop_terms__item --sms f-group --checkbox">
						<input type="checkbox" name="client_sms" class="f-control" id="cop_client_sms_checkbox" value="1"/>
						<label class="f-label" for="cop_client_sms_checkbox">Chcę otrzymywać SMS Newsletter (możliwość późniejszej rezygnacji).</label>
					</div>
					<div class="cop_terms__item --email-processing f-group --checkbox">
						<input type="checkbox" name="order_email-processing" class="f-control" id="cop_order_email-processing_checkbox">
							<iaixsl:if test="/shop/page/personal_data_processing_texts/email/@checked = 'true'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
						</input>
						<label class="f-label" for="cop_order_email-processing_checkbox"><iaixsl:value-of select="/shop/page/personal_data_processing_texts/email"/></label>
					</div>
				</div>
				<div class="cop_summary__item --buttons cop_buttons">
					<span class="cop_buttons__verify">Sprawdź wszystkie dane i złóż zamówienie</span>
					<button type="submit" class="cop_buttons__button btn --solid --large --next">
					  <iaixsl:if test="/shop/expressCheckout/payment[@id = 'idoPay'] and /shop/page/@type = 'basketedit' and not(/shop/page/communicates/warning/@type = 'order_minimal_wholesale_blocked')"><iaixsl:attribute name="class">cop_buttons__button btn --outline --large --next</iaixsl:attribute></iaixsl:if>
					  <iaixsl:if test="/shop/page/@type = 'order1'">
  					  <iaixsl:attribute name="type">button</iaixsl:attribute>
  					</iaixsl:if>
					  Przejdź dalej
					</button>
					<iaixsl:if test="/shop/page/@type = 'basketedit'">
					  <express-checkout type="basket"/>
					</iaixsl:if>
					<button type="submit" class="cop_buttons__button btn --solid --large --buy"><span class="cop_buttons__button_text">Akceptuję, zamawiam i płacę</span><span class="cop_buttons__cost"/></button>
				</div>
				<iaixsl:if test="/shop/oneclick/payment or /shop/inpostCheckout/payment[@id = 'inpostPay']">
					<div class="cop_summary__item --oneclick cop_oneclick">
						<div class="cop_oneclick__label">Możesz kupić także poprzez:</div>
						<iaixsl:if test="/shop/inpostCheckout/payment[@id = 'inpostPay']">
							<div class="cop_oneclick__block --inpost cop_inpost_pay" id="copInpostPay" data-id="inpostPay"/>
						</iaixsl:if>
						<iaixsl:if test="/shop/oneclick/payment">
							<div class="cop_oneclick__block --oneclick cop_oneclick_pay" id="copOneclickPay">
								<iaixsl:attribute name="data-lang"><iaixsl:value-of select="/shop/language/option[@selected ='true']/@id"/></iaixsl:attribute>
								<div class="cop_oneclick_pay__items">
									<iaixsl:for-each select="/shop/oneclick/payment">
										<div>
											<iaixsl:attribute name="class">cop_oneclick_pay__item --<iaixsl:value-of select="@id"/><iaixsl:if test="@preloading"> --loading</iaixsl:if></iaixsl:attribute>
											<iaixsl:attribute name="title">Kliknij i kup bez potrzeby rejestracji z <iaixsl:value-of select="@name"/></iaixsl:attribute>
											<iaixsl:attribute name="id">oneclick_<iaixsl:value-of select="@id"/></iaixsl:attribute>
											<iaixsl:attribute name="data-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
											<iaixsl:if test="not(@basket_only = 'true')">
												<img class="basketedit_oneclick__icon">
													<iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
													<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
												</img>
											</iaixsl:if>
										</div>
									</iaixsl:for-each>
								</div>
							</div>
						</iaixsl:if>
					</div>
				</iaixsl:if>
			</div>
			<iaixsl:if test="/shop/client_data/client_balance/limit/@value &gt; '0'">
				<div class="cop_summary__block --limit cop_limit">
					<div class="cop_limit__item --limit">
						<span class="cop_limit__label">Limit zadłużenia:</span>
						<strong class="cop_limit__value"><iaixsl:value-of select="/shop/client_data/client_balance/limit/@value_formatted"/></strong>
					</div>
					<div class="cop_limit__item --to-use">
						<span class="cop_limit__label">Pozostały limit kredytowy:</span>
						<strong class="cop_limit__value"><iaixsl:value-of select="/shop/client_data/client_balance/limit/@to_use_formatted"/></strong>
					</div>
				</div>
			</iaixsl:if>
			<iaixsl:if test="/shop/page/basket-details/summary/points/@debit and /shop/page/basket-details/summary/points/@debit &gt; 0">
				<div class="cop_summary__block --points cop_points">
					Po opłaceniu tego zamówienia zyskasz 
					<b><iaixsl:value-of select="/shop/page/basket-details/summary/points/@debit"/><span> pkt.</span></b> w programie lojalnościowym.
					<iaixsl:if test="/shop/basket/@client_points != '0'">
						Obecnie na swoim koncie masz 
						<b><iaixsl:value-of select="/shop/basket/@client_points"/><span> pkt.</span></b>
					</iaixsl:if>
				</div>
			</iaixsl:if>
			<iaixsl:if test="/shop/iai/@button_src">
				<div class="cop_summary__block --safe cop_safe">
					<iaixsl:if test="/shop/@trust_level = '1'">
						<iaixsl:attribute name="class">cop_summary__block --safe cop_safe --super</iaixsl:attribute>
					</iaixsl:if>
					<div class="cop_safe__label">
						<iaixsl:choose>
							<iaixsl:when test="/shop/@trust_level = '1'">
								<strong class="cop_safe__title">SuperBezpieczne<sup>TM</sup> zakupy</strong>
								<div class="cop_safe__img"><img src="/gfx/standards/superfair_light.svg?r=1778592039" alt="SuperFair.Shop badge"/></div>
							</iaixsl:when>
							<iaixsl:otherwise>
								<strong class="cop_safe__title">Bezpieczne zakupy</strong>
								<div class="cop_safe__img"><img src="/gfx/standards/safe_light.svg?r=1778592039" alt="Idosell security badge"/></div>
							</iaixsl:otherwise>
						</iaixsl:choose>
					</div>
					<div class="cop_safe__text">
						<iaixsl:choose>
							<iaixsl:when test="/shop/@trust_level = '1'">
								<p>Stosujemy system IdoSell dający klientom kontrolę nad zamówieniem i procesem realizacji zamówienia. <b>Dbamy też o Twoje prawa</b> i wygodę. IAI S.A. regularnie weryfikuje nasz sklep i potwierdza, że wysyłamy przesyłki w deklarowanych terminach oraz stosujemy rozwiązania możliwie ułatwiające zakupy i zwiększające bezpieczeństwo klientów.</p>
							</iaixsl:when>
							<iaixsl:otherwise>
								<p>Stosujemy system <b>IdoSell</b> dający klientom kontrolę nad zamówieniem i procesem realizacji zamówienia. <b>Dbamy też o Twoje prawa</b>.</p>
							</iaixsl:otherwise>
						</iaixsl:choose>
					</div>
				</div>
			</iaixsl:if>
		</div>
	</template>
  <template id="cop_clause_item_template">
    <div class="cop_clauses__item"/>
  </template>
	
  </div>
<!-- (basketedit_additional_info, 66e2f71b44dda1.24077468.3)-->
	
	<iaixsl:variable name="turnOnSmile">true</iaixsl:variable>
	<iaixsl:if test="/shop/page/basket-details/summary/payment/instalment or /shop/page/basket-details/summary/payment/delayed[@id = '203'] or (/shop/page/basket-details/summary/smile and not($turnOnSmile = ''))">
		<div class="basket__payments">
			
			<iaixsl:if test="/shop/page/basket-details/summary/smile and not($turnOnSmile = '')">
				<div class="basket__payment --smile">
					<div class="basket__payment_element">
						<div class="basket__payment_img_container">
							<img class="smile_basket__logo" src="/gfx/standards/smile_logo.svg?r=1778592039">
								<iaixsl:attribute name="alt">Kupujesz i dostawę masz gratis!</iaixsl:attribute>
							</img>
						</div>
						<div class="basket__payment_text_container">
							<span class="basket__payment_label">
								<b>
								Darmowa dostawa obsługiwana przez 
								<iaixsl:for-each select="/shop/page/basket-details/summary/smile/delivery">
									<iaixsl:choose>
										<iaixsl:when test="not(substring-before(@name, 'Smile') = '')">
											<iaixsl:value-of select="substring-before(@name, ' Smile')"/><iaixsl:if test="position() = count(/shop/page/basket-details/summary/smile/delivery)">. </iaixsl:if> 
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:value-of select="@name"/><iaixsl:if test="position() = count(/shop/page/basket-details/summary/smile/delivery)">. </iaixsl:if> 
										</iaixsl:otherwise>
									</iaixsl:choose>
									<iaixsl:choose>
										<iaixsl:when test="position() = count(/shop/page/basket-details/summary/smile/delivery) - 1">
											oraz
										</iaixsl:when>
										<iaixsl:when test="position() &lt; count(/shop/page/basket-details/summary/smile/delivery) - 1">
											, 
										</iaixsl:when>
									</iaixsl:choose>
								</iaixsl:for-each>
								</b>
								<span class="basket__payment_small">
									<span>Przy zamówieniu za <span class="basket__payment_small_value"><iaixsl:value-of select="/shop/page/basket-details/summary/smile/delivery/@minprice_formatted"/></span>.</span>
								</span>
							</span>
							<a href="#more" class="basket__payment_link --smile">Więcej informacji</a>
						</div>
					</div>
				</div>
				

			</iaixsl:if>
			
			<iaixsl:if test="page/basket-details/summary/payment/instalment">
				<div id="instalment_payment_basket" class="basket__payment --instalment">
					<iaixsl:choose>
						<iaixsl:when test="count(/shop/page/basket-details/summary/payment/instalment) = 1">
							<iaixsl:for-each select="/shop/page/basket-details/summary/payment/instalment">
								<div class="basket__payment_element --link">
									<div class="basket__payment_img_container">
										<img src="/gfx/standards/instalment_basket.svg?r=1778592039" class="instalment_payment_basket__img">
										  <iaixsl:attribute name="alt">Możesz zapłacić ratalnie</iaixsl:attribute>
										  </img>
									</div>
									<div class="basket__payment_text_container">
										<span class="basket__payment_label">
											<b>
												<iaixsl:choose>
													<iaixsl:when test="@value_formatted">
														Możesz zapłacić ratalnie, z ratą już od <b><iaixsl:value-of select="@value_formatted"/></b> miesięcznie. 
													</iaixsl:when>
													<iaixsl:otherwise>
														Możesz zapłacić ratalnie. 
													</iaixsl:otherwise>
												</iaixsl:choose>
											</b>
											<span class="basket__payment_small">Raty możesz wybrać w następnym kroku podczas wyboru form płatności.</span>
										</span>
										<a href="#more" class="basket__payment_link --paypo">
											<iaixsl:attribute name="onclick">event.stopPropagation(); calculate_instalments(&apos;<iaixsl:value-of select="@minprice"/>&apos;,&apos;<iaixsl:value-of select="@maxprice"/>&apos;,&apos;<iaixsl:value-of select="@priceTotal"/>&apos;,&apos;<iaixsl:value-of select="@alert"/>&apos;,$(this).attr(&apos;data-window&apos;),&apos;<iaixsl:value-of select="@maxquantity"/>&apos;,&apos;<iaixsl:value-of select="@name"/>&apos;); return false;</iaixsl:attribute>
											<iaixsl:attribute name="href">javascript:<iaixsl:value-of select="@calculate"/></iaixsl:attribute>
											<iaixsl:attribute name="data-window"><iaixsl:value-of select="@calculate"/></iaixsl:attribute>
											Więcej informacji
										</a>
									</div>
								</div>
							</iaixsl:for-each>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:variable name="lowest_instalment_price">
								<iaixsl:for-each select="/shop/page/basket-details/summary/payment/instalment">
									<iaixsl:sort select="number(@value)" order="ascending"/>
									<iaixsl:value-of select="@value_formatted"/>
								</iaixsl:for-each>
							</iaixsl:variable>
							<div class="basket__payment_element">
								<div class="basket__payment_img_container">
									<img src="/gfx/standards/instalment_basket.svg?r=1778592039" class="instalment_payment_basket__img">
									  <iaixsl:attribute name="alt">Możesz zapłacić ratalnie</iaixsl:attribute>
									 </img>
								</div>
								<div class="basket__payment_text_container">
									<span class="basket__payment_label">
										<b>
											<iaixsl:choose>
												<iaixsl:when test="/shop/page/basket-details/summary/payment/instalment/@value_formatted and /shop/page/basket-details/summary/payment/instalment/@value_formatted != ''">
													Możesz zapłacić ratalnie, z ratą już od <b><iaixsl:value-of select="$lowest_instalment_price[1]"/></b> miesięcznie. 
												</iaixsl:when>
												<iaixsl:otherwise>
													Możesz zapłacić ratalnie. 
												</iaixsl:otherwise>
											</iaixsl:choose>
										</b>
										<span class="basket__payment_small">Raty możesz wybrać w następnym kroku podczas wyboru form płatności.</span>
									</span>
								</div>
							</div>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</div>
			</iaixsl:if>

			
			<iaixsl:if test="/shop/page/basket-details/summary/payment/delayed[@id = '203']">
				<div class="basket__payment --paypo">
					<div class="basket__payment_element">
						<div class="basket__payment_img_container">
							<iaixsl:if test="/shop/page/basket-details/summary/payment/delayed[@id = '203']/@gfx_small">
								<img>
									<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/basket-details/summary/payment/delayed[@id = '203']/@gfx_small"/></iaixsl:attribute>
									<iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/basket-details/summary/payment/delayed[@id = '203']/@name"/></iaixsl:attribute>
								</img>
							</iaixsl:if>
						</div>
						<div class="basket__payment_text_container">
							<b class="basket__payment_label">
								Odroczone płatności. Kup teraz, zapłać za 30 dni, jeżeli nie dokonasz zwrotu.
							</b>
							<a href="#more" class="basket__payment_link --paypo">
							  <iaixsl:attribute name="data-label">Kup teraz, zapłać później - 4 kroki</iaixsl:attribute>
							  Więcej informacji
							</a>
						</div>
					</div>
				</div>
				<div class="paypo_info">
					<h2 class="headline">
						<span class="headline__name" tabindex="-1">Kup teraz, zapłać później - 4 kroki</span>
					</h2>
					<div class="paypo_info__block">
						<div class="paypo_info__item --first">
							<span class="paypo_info__text">Przy wyborze formy płatności, wybierz PayPo.</span>
							<iaixsl:if test="/shop/page/basket-details/summary/payment/delayed[@id = '203']/@gfx">
								<span class="paypo_info__img">
									<img>
										<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/basket-details/summary/payment/delayed[@id = '203']/@gfx"/></iaixsl:attribute>
										<iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/basket-details/summary/payment/delayed[@id = '203']/@name"/></iaixsl:attribute>
									</img>
								</span>
							</iaixsl:if>
						</div>
						<div class="paypo_info__item --second">
							<span class="paypo_info__text">PayPo opłaci twój rachunek w sklepie.<br/>Na stronie PayPo sprawdź swoje dane i podaj pesel.</span>
						</div>
						<div class="paypo_info__item --third">
							<span class="paypo_info__text">Po otrzymaniu zakupów decydujesz co ci pasuje, a co nie. Możesz zwrócić część albo całość zamówienia - wtedy zmniejszy się też kwota do zapłaty PayPo.</span>
						</div>
						<div class="paypo_info__item --fourth">
							<span class="paypo_info__text">W ciągu 30 dni od zakupu płacisz PayPo za swoje zakupy <strong>bez żadnych dodatkowych kosztów</strong>. Jeśli chcesz, rozkładasz swoją płatność na raty.</span>
						</div>
					</div>
				</div>
			</iaixsl:if>
		</div>
	</iaixsl:if>
<!-- (division, 66e2f82c813af3.98668798.4)-->
  
  <iaixsl:if test="/shop/allow_division_order/@is_active = 'true' and not(count(page/basket-details/product[@division='later']) = 0 or count(page/basket-details/product[@division='now']) = 0)">
  	<div class="basket__division">
  		<div class="basket__division_container">
  			<h2 class="headline basket__division_headline">W Twoim zamówieniu są produkty dostępne od ręki i na zamówienie.</h2>
  			<div class="basket__division_options">
  				<div class="basket__division_option --not-divide">
						<iaixsl:attribute name="data-weeks"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_amount"/></iaixsl:attribute>
						<iaixsl:attribute name="data-days"><iaixsl:value-of select="/shop/basket/shipping_division_time/@days"/></iaixsl:attribute>
						<iaixsl:attribute name="data-week_day"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_day"/></iaixsl:attribute>
						<iaixsl:attribute name="data-shipping_date"><iaixsl:value-of select="/shop/basket/shipping_division_time/@time"/></iaixsl:attribute>
						<iaixsl:attribute name="data-today"><iaixsl:value-of select="/shop/basket/shipping_division_time/@today"/></iaixsl:attribute>
						<iaixsl:if test="/shop/allow_division_order/@turn_on = 'no'"><iaixsl:attribute name="data-checked">true</iaixsl:attribute></iaixsl:if>
  					<div class="basket__division_group f-group --radio mb-0">
  						<input type="radio" id="division_no" name="allow_division_order" value="no" class="f-control">
  							<iaixsl:if test="/shop/allow_division_order/@turn_on = 'no'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
  						</input>
  						<label class="f-label basket__division_label" for="division_no"><strong>Poczekam na skompletowanie zamówienia.</strong><span class="basket__division_option_small">Twoje zamówienie dotrze do Ciebie w 1 przesyłce. Sklep najpierw skompletuje zamówienie i wyśle na raz wszystkie produkty.</span>
  							<div class="basket__division_option_info --not-divide">Całe zamówienie będzie gotowe do wysłania <span class="basket__division_literal">za </span><span class="basket__division_weeks"/></div>
  						</label>
  					</div>
  				</div>
  				<div class="basket__division_option --divide">
						<iaixsl:attribute name="data-weeks"><iaixsl:value-of select="/shop/basket/shipping_time/@week_amount"/></iaixsl:attribute>
						<iaixsl:attribute name="data-days"><iaixsl:value-of select="/shop/basket/shipping_time/@days"/></iaixsl:attribute>
						<iaixsl:attribute name="data-week_day"><iaixsl:value-of select="/shop/basket/shipping_time/@week_day"/></iaixsl:attribute>
						<iaixsl:attribute name="data-shipping_date"><iaixsl:value-of select="/shop/basket/shipping_time/@time"/></iaixsl:attribute>
						<iaixsl:attribute name="data-today"><iaixsl:value-of select="/shop/basket/shipping_time/@today"/></iaixsl:attribute>
						<iaixsl:attribute name="data-isDivision">false</iaixsl:attribute>
						<iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes'"><iaixsl:attribute name="data-checked">true</iaixsl:attribute></iaixsl:if>
  					<div class="basket__division_group f-group --radio mb-0">
  						<input type="radio" id="division_yes" name="allow_division_order" value="yes" class="f-control">
  							<iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
  						</input>
  						<label class="f-label basket__division_label" for="division_yes"><strong>Chcę otrzymać szybciej dostępne produkty.</strong><span class="basket__division_option_small">Twoje zamówienie dotrze do Ciebie w 2 przesyłkach. Produkty dostępne od ręki sklep wyśle od razu, a inne po ich skompletowaniu.</span>
  							<div class="basket__division_option_info --divide">Produkty od ręki - gotowe do wysłania <span class="basket__division_now"/></div>
								<div class="basket__division_option_info --not-divide">Produkty z dłuższym czasem oczekiwania - gotowe do wysłania <span class="basket__division_literal">za </span><span class="basket__division_weeks"/></div>
  						</label>
  					</div>
  				</div>
  			</div>
  		</div>
  	</div>
  </iaixsl:if>
<!-- (basketedit_rebates, 66e2f8e5012812.40274789.5)-->
	<iaixsl:if test="((/shop/rebatesLocal and (/shop/rebatesLocal/rebate/@value &gt; 0 ) ) and count(/shop/rebatesLocal/rebate[@left &gt; 0]) &gt; 0 or count(/shop/rebatesLocal/rebate[@value &gt; 0 ][@selected = 'selected']) &gt; 0) or /shop/page/rebates_for_points/rebate">
		<div class="basketRabates">
			
			<iaixsl:if test="(/shop/rebatesLocal and (/shop/rebatesLocal/rebate/@value &gt; 0 ) ) and count(/shop/rebatesLocal/rebate[@left &gt; 0]) &gt; 0 or count(/shop/rebatesLocal/rebate[@value &gt; 0 ][@selected = 'selected']) &gt; 0">
			<div class="basketRabates__wrapper --rebatesLocal">
				<div class="basketRabates__rabates">
					<h2 class="headline --desc basketRabates__label">
						<span class="headline__name">Rabaty do zamówienia</span>
						<span class="headline__desc basketRabates__desc">Przyznajemy rabaty w zależności od wartości zamówienia</span>
					</h2>

					<div class="basketRabates__rabates_progress">
						<div class="basketRabates__rabates_progress_info">
							<div class="basketRabates__rabates_progress_info_sub">
								<span class="basketRabates__rabates_progress_threshold">
									<iaixsl:if test="count(/shop/rebatesLocal/rebate[@value &gt; 0 ][@selected = 'selected']) &gt; 0">
										<span class="basketRabates__rabates_progress_selected">Twój rabat to  <b><iaixsl:value-of select="format-number(/shop/rebatesLocal/rebate[@value &gt; 0 ][@selected = 'selected']/@value, '#')"/>%</b>  <span class="basketRabates__rabates_progress_threshold --worth">
											(od 
											<iaixsl:value-of select="/shop/rebatesLocal/rebate[@value &gt; 0][@selected = 'selected']/@threshold_formatted"/>)</span></span> 
									</iaixsl:if>
									<iaixsl:if test="count(/shop/rebatesLocal/rebate[@left &gt; 0]) &gt; 0">
										<span class="basketRabates__rabates_progress_left">
											Brakuje Ci jeszcze  
											<iaixsl:value-of select="/shop/rebatesLocal/rebate[@left &gt; 0]/@left_formatted"/> 
											do rabatu 
											<b>
												<iaixsl:choose>
													<iaixsl:when test="contains(/shop/rebatesLocal/rebate[@left &gt; 0]/@value, '.00')">
														<iaixsl:value-of select="format-number(/shop/rebatesLocal/rebate[@left &gt; 0]/@value, '#')"/>%
													</iaixsl:when>
													<iaixsl:otherwise>
															<iaixsl:value-of select="/shop/rebatesLocal/rebate[@left &gt; 0]/@value"/>%
													</iaixsl:otherwise>
												</iaixsl:choose>
											</b>
											<span class="basketRabates__rabates_progress_threshold --worth">
												(od 
												<iaixsl:value-of select="/shop/rebatesLocal/rebate[@left &gt; 0]/@threshold_formatted"/>)
											</span>
										</span>
									</iaixsl:if>
								</span>
							</div>
							<div class="basketRabates__rabates_progress_bar">
								<span class="progress_bar" data-width="">
									<span class="progress_bar__value">
										<iaixsl:attribute name="style">width:<iaixsl:value-of select="100 - /shop/rebatesLocal/rebate[@left &gt; 0]/@left * 100 div /shop/rebatesLocal/rebate[@left &gt; 0]/@threshold"/>%;</iaixsl:attribute>
									</span>
								</span>
							</div>
						</div>
						<iaixsl:if test="count(/shop/rebatesLocal/rebate[@left &gt; 0]) &gt; 1">
							<div class="basketRabates__rabates_progress_steps">
							<span>Kolejne progi:</span>
								<ul>
									<iaixsl:for-each select="/shop/rebatesLocal/rebate[@left &gt; 0 ]">
										<iaixsl:if test="position() != 1">
											<li>
												<div class="basketRabates__block">
													<div class="basketRabates__value">
														<iaixsl:choose>
															<iaixsl:when test="contains(@value, '.00')">
																<iaixsl:value-of select="format-number(@value, '#')"/>%
															</iaixsl:when>
															<iaixsl:otherwise>
																	<iaixsl:value-of select="@value"/>%
															</iaixsl:otherwise>
														</iaixsl:choose>
													</div>
													<div class="basketRabates__threshold">
														od 
														<iaixsl:value-of select="@threshold_formatted"/>
													</div>
												</div>
											</li>
										</iaixsl:if>
									</iaixsl:for-each>
								</ul>
							</div>
						</iaixsl:if>
					</div>
					</div>

					<iaixsl:if test="/shop/rebatesLocal/@promo_excluded = 'true' or /shop/rebatesLocal/@special_excluded = 'true' or /shop/rebatesLocal/@discount_excluded = 'true' or /shop/rebatesLocal/@distinguished_excluded = 'true' or /shop/rebatesLocal/@bestseller_excluded = 'true' or /shop/rebatesLocal/@new_excluded = 'true'">
						<div class="basketRabates__excluded menu_messages_message --small">
							<p class="basketRabates__excluded_wrapper"><span class="basketRabates__excluded_text">Rabaty nie naliczają się dla produktów ze strefy</span><iaixsl:if test="/shop/rebatesLocal/@promo_excluded = 'true'"><span class="basketRabates__excluded_value --promo"><iaixsl:text> </iaixsl:text>Super Cena!</span></iaixsl:if><iaixsl:if test="/shop/rebatesLocal/@discount_excluded = 'true'"><span class="basketRabates__excluded_value --discount"><iaixsl:text> </iaixsl:text>Promocja!</span></iaixsl:if><iaixsl:if test="/shop/rebatesLocal/@distinguished_excluded = 'true'"><span class="basketRabates__excluded_value --distinguished"><iaixsl:text> </iaixsl:text>Polecany</span></iaixsl:if><iaixsl:if test="/shop/rebatesLocal/@special_excluded = 'true'"><span class="basketRabates__excluded_value"><iaixsl:text> </iaixsl:text>Specjalny</span></iaixsl:if><iaixsl:if test="/shop/rebatesLocal/@bestseller_excluded = 'true'"><span class="basketRabates__excluded_value"><iaixsl:text> </iaixsl:text>Bestseller</span></iaixsl:if><iaixsl:if test="/shop/rebatesLocal/@new_excluded = 'true'"><span class="basketRabates__excluded_value"><iaixsl:text> </iaixsl:text>Nowość</span></iaixsl:if></p>
						</div>
					</iaixsl:if>
				</div>
			</iaixsl:if>

			
			<iaixsl:if test="/shop/page/rebates_for_points/rebate">
				<div class="basketRabates__points">
					<h2 class="headline --desc basketRabates__label">
						<span class="headline__name">Wymień punkty na rabat</span>
						<span class="headline__desc basketRabates__desc">Obecnie posiadasz 
						<span class="clientPoints"><iaixsl:value-of select="/shop/basket/@client_points"/> pkt</span></span>
					</h2>
					<div class="basketRabates__wrapper --points" tabindex="0">
						<iaixsl:for-each select="/shop/page/rebates_for_points/rebate">
							<a class="basketRabates__block">
								<iaixsl:attribute name="href"><iaixsl:value-of select="@order_link"/></iaixsl:attribute>
								<iaixsl:if test="@selected = 'selected'">
									<iaixsl:attribute name="class">basketRabates__block --selected</iaixsl:attribute>
								</iaixsl:if>
								<div class="basketRabates__block_sub">
									<span class="basketRabates__value">
										<iaixsl:choose>
											<iaixsl:when test="@rebate_type='quota'">
												<iaixsl:value-of select="format-number(@threshold, '#')"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="/shop/currency/@name"/>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:value-of select="format-number(@threshold, '#')"/>%
											</iaixsl:otherwise>
										</iaixsl:choose>
									</span>
									<span class="basketRabates__threshold">
										<iaixsl:choose>
											<iaixsl:when test="@permanent='true'">
												na stałe
											</iaixsl:when>
											<iaixsl:otherwise>
												na to zamówienie
											</iaixsl:otherwise>
										</iaixsl:choose>
										za
										<iaixsl:value-of select="format-number(@points, '#')"/> pkt.
									</span>
								</div>
							</a>
						</iaixsl:for-each>
					</div>
				</div>
			</iaixsl:if>
		</div>
	</iaixsl:if>
<!-- (basketedit_gifts, 66e2f9ee804218.94917589.7)-->
	<iaixsl:if test="/shop/page/@type = 'basketedit'">
		<iaixsl:variable name="nettoPriceBasketeditRebates"><iaixsl:if test="/shop/page/@price_type = 'net'">true</iaixsl:if></iaixsl:variable>
		<iaixsl:variable name="countGiftsToSlider">4</iaixsl:variable>
    <div class="basketGifts" tabindex="-1">

      
      <iaixsl:if test="/shop/page/basket-details/rebate_local/active/products/product">
        <h2 class="headline --desc basket__label">
          <span class="headline__name">Wybierz prezent do zamówienia</span>
          <iaixsl:if test="/shop/page/basket-details/rebate_local/active/@threshold &gt; 0">
						<iaixsl:if test="/shop/rebatesLocal/rebate[@threshold = /shop/page/basket-details/rebate_local/active/@threshold]/@threshold_formatted">
							<span class="headline__desc basket__desc">
								<span>Twoje zamówienie przekracza
								<b>
								<iaixsl:value-of select="/shop/rebatesLocal/rebate[@threshold = /shop/page/basket-details/rebate_local/active/@threshold]/@threshold_formatted"/>
								</b>, dlatego możesz wybrać sobie prezent!</span>
							</span>
						</iaixsl:if>
          </iaixsl:if>
        </h2>

				<div class="basketProducts basketGifts__products --enable">
					<iaixsl:if test="count(/shop/page/basket-details/rebate_local/active/products/product) &gt; $countGiftsToSlider">
						<iaixsl:attribute name="class">basketProducts basketGifts__products --enable --slider swiper</iaixsl:attribute>
					</iaixsl:if>
					<div class="basketProducts__wrapper">
					  <iaixsl:if test="count(/shop/page/basket-details/rebate_local/active/products/product) &gt; $countGiftsToSlider">
					    <iaixsl:attribute name="class">basketProducts__wrapper swiper-wrapper</iaixsl:attribute>
  						<iaixsl:attribute name="tabindex">0</iaixsl:attribute>
  					</iaixsl:if>
						<iaixsl:for-each select="/shop/page/basket-details/rebate_local/active">
							<iaixsl:for-each select="products/product">
								<div class="basketProducts__product basketGifts__product --enable swiper-slide">
									<iaixsl:if test="@id=/shop/page/basket-details/rebate_local/active/selected/product/@id">
										<iaixsl:attribute name="class">basketProducts__product basketGifts__product --enable --active swiper-slide</iaixsl:attribute>
									</iaixsl:if>

										<input type="radio" name="radio_gift">
											<iaixsl:if test="@id=/shop/page/basket-details/rebate_local/active/selected/product/@id">
												<iaixsl:attribute name="checked">checked</iaixsl:attribute>
											</iaixsl:if>
										</input>
										<input type="hidden" name="product[0]" class="gift_input gift_product">
											<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
										</input>
										<input type="hidden" value="1" name="gift[0]" class="gift_input gift"/>
										<input type="hidden" value="1" name="set_quantity[0]" class="gift_input gift_quantity"/>

										<iaixsl:choose>
											<iaixsl:when test="@link">
												<a class="basketProducts__icon">
													<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
													<iaixsl:attribute name="title">Zobacz więcej</iaixsl:attribute>
													<iaixsl:choose>
														<iaixsl:when test="icon_second and not(icon_second = '' or icon_second = '/')">
															<picture>
																<source type="image/webp">
																	<iaixsl:attribute name="srcset"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
																</source>
																<img>
																	<iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
																	<iaixsl:attribute name="src"><iaixsl:value-of select="icon_small_second"/></iaixsl:attribute>
																</img>
															</picture>
														</iaixsl:when>
														<iaixsl:otherwise>
															<img>
																<iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
																<iaixsl:attribute name="src"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
															</img>
														</iaixsl:otherwise>
													</iaixsl:choose>
												</a>
												<a class="basketProducts__name">
													<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
													<iaixsl:attribute name="title"><iaixsl:value-of select="name"/></iaixsl:attribute>
													<iaixsl:value-of select="name"/>
												</a>
											</iaixsl:when>
											<iaixsl:otherwise>
												<span class="basketProducts__icon">
													<iaixsl:choose>
														<iaixsl:when test="icon_second and not(icon_second = '' or icon_second = '/')">
															<picture>
																<source type="image/webp">
																	<iaixsl:attribute name="srcset"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
																</source>
																<img>
																	<iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
																	<iaixsl:attribute name="src"><iaixsl:value-of select="icon_small_second"/></iaixsl:attribute>
																</img>
															</picture>
														</iaixsl:when>
														<iaixsl:otherwise>
															<img>
																<iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
																<iaixsl:attribute name="src"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
															</img>
														</iaixsl:otherwise>
													</iaixsl:choose>
												</span>
												<span class="basketProducts__name">
													<iaixsl:value-of select="name"/>
												</span>
											</iaixsl:otherwise>
										</iaixsl:choose>

										<iaixsl:choose>
											<iaixsl:when test="sizes/size/@type = 'uniw' or not(sizes/size)">
												<input type="hidden" name="size[0]" class="gift_input gift_size"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
											</iaixsl:when>
											<iaixsl:when test="count(sizes/size[@amount != 0]) = 1">
												<input type="hidden" name="size[0]" class="gift_input gift_size"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
												<div class="basketProducts__size">
													<label>Rozmiar:</label><iaixsl:text> </iaixsl:text><span><iaixsl:value-of select="sizes/size/@description"/></span>
												</div>
											</iaixsl:when>
											<iaixsl:otherwise>
												<div class="basketProducts__sizes">
													<select>
													  <iaixsl:attribute name="aria-label">Wybierz rozmiar</iaixsl:attribute>
														<iaixsl:for-each select="sizes/size[@amount != 0]">
															<option>
																<iaixsl:if test="@type=/shop/page/basket-details/rebate_local/active/selected/product/@size and ../../@id=/shop/page/basket-details/rebate_local/active/selected/product/@id">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:if>
																<iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute>
																Rozmiar <b><iaixsl:value-of select="@description"/></b>
															</option>
														</iaixsl:for-each>
													</select>
													<input type="hidden" name="size[0]" class="gift_input gift_size"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
												</div>
											</iaixsl:otherwise>
										</iaixsl:choose>

										<div class="basketProducts__prices">
											<iaixsl:choose>
												<iaixsl:when test="@gratis = 'true'">
													<div class="basketProducts__price">
														<span>Gratis</span>
													</div>
												</iaixsl:when>
												<iaixsl:when test="(not($nettoPriceBasketeditRebates = '') and price/@beforerebate_net &gt; 0) or ($nettoPriceBasketeditRebates = '' and price/@beforerebate &gt; 0)">
													<div class="basketProducts__price">
														<span class="basketProducts__price_label">Wartość prezentu:</span>
														<span class="basketProducts__price_sub">
															<iaixsl:choose>
																<iaixsl:when test="not($nettoPriceBasketeditRebates = '')">
																	<iaixsl:value-of select="price/@beforerebate_net_formatted"/><span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span>
																</iaixsl:when>
																<iaixsl:otherwise>
																	<iaixsl:value-of select="price/@beforerebate_formatted"/>
																</iaixsl:otherwise>
															</iaixsl:choose>
														</span>
													</div>
												</iaixsl:when>
												<iaixsl:when test="price/@value &gt; 0">
													<div class="basketProducts__price">
														<span class="basketProducts__price_label">Wartość prezentu:</span>
														<span class="basketProducts__price_sub">
															<iaixsl:choose>
																<iaixsl:when test="not($nettoPriceBasketeditRebates = '')">
																	<iaixsl:value-of select="price/@price_net_formatted"/><span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span>
																</iaixsl:when>
																<iaixsl:otherwise>
																	<iaixsl:value-of select="price/@price_formatted"/>
																</iaixsl:otherwise>
															</iaixsl:choose>
														</span>
													</div>
												</iaixsl:when>
												<iaixsl:otherwise/>
											</iaixsl:choose>
											<div class="basketProducts__buttons">
												<a href="#basketGiftsAdd" class="basketProducts__action --add">
												  <iaixsl:attribute name="aria-label">Dodaj gratis</iaixsl:attribute>
												</a>
												<a href="#basketGiftsRemove" class="basketProducts__action --remove">
												  <iaixsl:attribute name="aria-label">Usuń gratis</iaixsl:attribute>
												</a>
											</div>
										</div>
								</div>
							</iaixsl:for-each>
						</iaixsl:for-each>
					</div>
				</div>
				<iaixsl:if test="count(/shop/page/basket-details/rebate_local/active/products/product) &gt; $countGiftsToSlider">
					<div class="basketGifts__options --enable">
						<a class="basketGifts__arrow --prev" href="#basketGiftsPrev"/>
						<a class="basketGifts__arrow --next" href="#basketGiftsNext"/>
						<a href="#basketGiftAll" class="basketGifts__all">Pokaż wszystkie</a>
					</div>
				</iaixsl:if>
      </iaixsl:if>

      
      <iaixsl:if test="/shop/page/basket-details/rebate_local/rebates/rebate[products/product][1]/products/product">
        <iaixsl:for-each select="/shop/page/basket-details/rebate_local/rebates/rebate[products/product][1]">
          <h2 class="headline --desc basket__label">
            <iaixsl:if test="/shop/page/basket-details/rebate_local/active/products/product">
              <iaixsl:attribute name="class">headline --desc basket__label mt-3 mt-md-5</iaixsl:attribute>
            </iaixsl:if>
            <span class="headline__name">Niewiele Ci brakuje!</span>
            <span class="headline__desc basket__desc">
              <span>Aby wybrać któryś z poniższych prezentów</span>
              <iaixsl:choose>
                <iaixsl:when test="(@left_price &gt; 0) and (@left_quantity &gt; 0)">
                  <span>
                    zwiększ wartość zamówienia o minimum <iaixsl:value-of select="@left_price_formatted"/>
                    i dodaj jeszcze <iaixsl:value-of select="@left_quantity"/>
                    <iaixsl:choose>
                      <iaixsl:when test="(@left_quantity = '1' )">
                        inny towar.
                      </iaixsl:when>
                      <iaixsl:when test=" (substring(@left_quantity, string-length(@left_quantity), 1) = '2') or (substring(@left_quantity, string-length(@left_quantity), 1)='3') or (substring(@left_quantity, string-length(@left_quantity), 1)='4') ">  inne towary
                      </iaixsl:when>
                      <iaixsl:otherwise>
                        innych towarów.
                      </iaixsl:otherwise>
                    </iaixsl:choose>
                  </span>
                </iaixsl:when>
                <iaixsl:when test="@left_price &gt; 0">
                  <span>
                    zwiększ wartość zamówienia o minimum <iaixsl:value-of select="@left_price_formatted"/>
                  </span>
                </iaixsl:when>
                <iaixsl:when test="@left_quantity &gt; 0">
                  <span>
                    dodaj jeszcze <iaixsl:value-of select="@left_quantity"/>
                    <iaixsl:choose>
                      <iaixsl:when test="(@left_quantity = '1' )">
                        inny towar.
                      </iaixsl:when>
                      <iaixsl:when test=" (substring(@left_quantity, string-length(@left_quantity), 1) = '2') or (substring(@left_quantity, string-length(@left_quantity), 1)='3') or (substring(@left_quantity, string-length(@left_quantity), 1)='4') ">  inne towary
                      </iaixsl:when>
                      <iaixsl:otherwise>
                        innych towarów.
                      </iaixsl:otherwise>
                    </iaixsl:choose>
                  </span>
                </iaixsl:when>
              </iaixsl:choose>
            </span>
          </h2>
        </iaixsl:for-each>


				<div class="basketProducts basketGifts__products --disabled">
					<iaixsl:if test="count(/shop/page/basket-details/rebate_local/rebates/rebate[products/product][1]/products/product) &gt; $countGiftsToSlider">
						<iaixsl:attribute name="class">basketProducts basketGifts__products --disabled --slider swiper</iaixsl:attribute>
					</iaixsl:if>
					<div class="basketProducts__wrapper">
					  <iaixsl:if test="count(/shop/page/basket-details/rebate_local/rebates/rebate[products/product][1]/products/product) &gt; $countGiftsToSlider">
					    <iaixsl:attribute name="class">basketProducts__wrapper swiper-wrapper</iaixsl:attribute>
  						<iaixsl:attribute name="tabindex">0</iaixsl:attribute>
  					</iaixsl:if>
						<iaixsl:for-each select="/shop/page/basket-details/rebate_local/rebates/rebate[products/product][1]">
							<iaixsl:for-each select="products/product">
								<div class="basketProducts__product basketGifts__product --disabled swiper-slide">
										<iaixsl:choose>
											<iaixsl:when test="@link">
												<a class="basketProducts__icon">
													<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
													<iaixsl:attribute name="title">Zobacz więcej</iaixsl:attribute>
													<iaixsl:choose>
														<iaixsl:when test="icon_second and not(icon_second = '' or icon_second = '/')">
															<picture>
																<source type="image/webp">
																	<iaixsl:attribute name="srcset"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
																</source>
																<img>
																	<iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
																	<iaixsl:attribute name="src"><iaixsl:value-of select="icon_small_second"/></iaixsl:attribute>
																</img>
															</picture>
														</iaixsl:when>
														<iaixsl:otherwise>
															<img>
																<iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
																<iaixsl:attribute name="src"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
															</img>
														</iaixsl:otherwise>
													</iaixsl:choose>
												</a>
												<a class="basketProducts__name">
													<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
													<iaixsl:attribute name="title"><iaixsl:value-of select="name"/></iaixsl:attribute>
													<iaixsl:value-of select="name"/>
												</a>
											</iaixsl:when>
											<iaixsl:otherwise>
												<span class="basketProducts__icon">
													<iaixsl:choose>
														<iaixsl:when test="icon_second and not(icon_second = '' or icon_second = '/')">
															<picture>
																<source type="image/webp">
																	<iaixsl:attribute name="srcset"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
																</source>
																<img>
																	<iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
																	<iaixsl:attribute name="src"><iaixsl:value-of select="icon_small_second"/></iaixsl:attribute>
																</img>
															</picture>
														</iaixsl:when>
														<iaixsl:otherwise>
															<img>
																<iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
																<iaixsl:attribute name="src"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
															</img>
														</iaixsl:otherwise>
													</iaixsl:choose>
												</span>
												<span class="basketProducts__name">
													<iaixsl:value-of select="name"/>
												</span>
											</iaixsl:otherwise>
										</iaixsl:choose>

										<iaixsl:choose>
											<iaixsl:when test="sizes/size/@type = 'uniw' or not(sizes/size)">
												<input type="hidden" name="size[0]"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
											</iaixsl:when>
											<iaixsl:when test="count(sizes/size[@amount != 0]) = 1">
												<input type="hidden" name="size[0]"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
												<div class="basketProducts__size">
													<label>Rozmiar:</label><iaixsl:text> </iaixsl:text><b><iaixsl:value-of select="sizes/size/@description"/></b>
												</div>
											</iaixsl:when>
											<iaixsl:otherwise>
												<div class="basketProducts__sizes">
													<select>
													  <iaixsl:attribute name="aria-label">Wybierz rozmiar</iaixsl:attribute>
														<iaixsl:for-each select="sizes/size[@amount != 0]">
															<option>
																<iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute>
																Rozmiar <b><iaixsl:value-of select="@description"/></b>
															</option>
														</iaixsl:for-each>
													</select>
													<input type="hidden" name="size[0]"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
												</div>
											</iaixsl:otherwise>
										</iaixsl:choose>

										<div class="basketProducts__prices">
											<iaixsl:choose>
												<iaixsl:when test="@gratis = 'true'">
													<div class="basketProducts__price">
														<span>Gratis</span>
													</div>
												</iaixsl:when>
												<iaixsl:when test="(not($nettoPriceBasketeditRebates = '') and price/@beforerebate_net &gt; 0) or ($nettoPriceBasketeditRebates = '' and price/@beforerebate &gt; 0)">
													<div class="basketProducts__price">
														<span class="basketProducts__price_label">Wartość prezentu:</span>
														<span class="basketProducts__price_sub">
															<iaixsl:choose>
																<iaixsl:when test="not($nettoPriceBasketeditRebates = '')">
																	<iaixsl:value-of select="price/@beforerebate_net_formatted"/><span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span>
																</iaixsl:when>
																<iaixsl:otherwise>
																	<iaixsl:value-of select="price/@beforerebate_formatted"/>
																</iaixsl:otherwise>
															</iaixsl:choose>
														</span>
													</div>
												</iaixsl:when>
												<iaixsl:when test="price/@value &gt; 0">
													<div class="basketProducts__price">
														<span class="basketProducts__price_label">Wartość prezentu:</span>
														<span class="basketProducts__price_sub">
															<iaixsl:choose>
																<iaixsl:when test="not($nettoPriceBasketeditRebates = '')">
																	<iaixsl:value-of select="price/@price_net_formatted"/><span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span>
																</iaixsl:when>
																<iaixsl:otherwise>
																	<iaixsl:value-of select="price/@price_formatted"/>
																</iaixsl:otherwise>
															</iaixsl:choose>
														</span>
													</div>
												</iaixsl:when>
												<iaixsl:otherwise/>
											</iaixsl:choose>
										</div>
								</div>
							</iaixsl:for-each>
						</iaixsl:for-each>
					</div>
				</div>
				<iaixsl:if test="count(/shop/page/basket-details/rebate_local/rebates/rebate[products/product][1]/products/product) &gt; $countGiftsToSlider">
					<div class="basketGifts__options --disabled">
						<a class="basketGifts__arrow --prev" href="#basketGiftsPrev"/>
						<a class="basketGifts__arrow --next" href="#basketGiftsNext"/>
						<a href="#basketGiftAll" class="basketGifts__all">Pokaż wszystkie</a>
					</div>
				</iaixsl:if>
      </iaixsl:if>
    </div>
	</iaixsl:if>
<!-- (menu_security_policy, 60dd8e83485025.35067229.8)-->
	<iaixsl:if test="/shop/iai/@button_src">
		<div id="menu_security_policy" class="menu_box securityPolicy">
			<iaixsl:choose>
				<iaixsl:when test="/shop/@trust_level = '1'">
					<iaixsl:attribute name="class">menu_box securityPolicy supershop</iaixsl:attribute>
					<h2>
						<iaixsl:attribute name="class">big_label</iaixsl:attribute>
						Zakupy w naszym sklepie są <strong>SuperBezpieczne</strong><sup>TM</sup>
					</h2>
					<div class="securityPolicy__sub">
						<div class="securityPolicy__img">
							<img src="/gfx/standards/superfair_light.svg?r=1778592039" alt="SuperFair.Shop badge"/>
						</div>
						<div class="securityPolicy__text">
							<p>Stosujemy system IdoSell dający klientom kontrolę nad zamówieniem i procesem realizacji zamówienia. <b>Dbamy też o Twoje prawa</b> i wygodę. IAI S.A. regularnie weryfikuje nasz sklep i potwierdza, że wysyłamy przesyłki w deklarowanych terminach oraz stosujemy rozwiązania możliwie ułatwiające zakupy i zwiększające bezpieczeństwo klientów.
								<iaixsl:if test="/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y'">
									<b>Zapoznaj się z </b>
									<a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/terms/@url"/></iaixsl:attribute>Regulaminem</a>, <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>Polityką Prywatności</a> oraz informacjami na temat
									<a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order_cancel/@url"/></iaixsl:attribute>Odstąpienia od umowy</a><iaixsl:if test="/shop/language/option[@name='de']/@selected"> zaufany</iaixsl:if>.
								</iaixsl:if>
								<b>Sprawdź również </b>
								<a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shop_information/@url"/></iaixsl:attribute>Informacje o sklepie</a>, <iaixsl:if test="/shop/language/option[@name='de']/@selected"> we </iaixsl:if> <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shipping_cost/@url"/></iaixsl:attribute>Koszty wysyłki</a> oraz dostępne
								<a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/payment_methods/@url"/></iaixsl:attribute>Sposoby płatności i prowizje</a>.
							</p>
						</div>
					</div>
				</iaixsl:when>
				<iaixsl:otherwise>
					<h2>
						<iaixsl:attribute name="class">big_label</iaixsl:attribute>
						Zakupy w naszym sklepie są bezpieczne
					</h2>
					<div class="securityPolicy__sub">
						<div class="securityPolicy__img">
							<img src="/gfx/standards/safe_light.svg?r=1778592039" alt="Idosell security badge"/>
						</div>
						<div class="securityPolicy__text">
							<p>Stosujemy system <b>IdoSell</b> dający klientom kontrolę nad zamówieniem i procesem realizacji zamówienia. <b>Dbamy też o Twoje prawa</b>.
								<iaixsl:if test="/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y'">
										<b>Zapoznaj się z </b>
									<a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/terms/@url"/></iaixsl:attribute>Regulaminem</a>, <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>Polityką Prywatności</a> oraz informacjami na temat
									<a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order_cancel/@url"/></iaixsl:attribute>Odstąpienia od umowy</a><iaixsl:if test="/shop/language/option[@name='de']/@selected"> zaufany</iaixsl:if>.
								</iaixsl:if>
								<b>Sprawdź również </b>
								<a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shop_information/@url"/></iaixsl:attribute>Informacje o sklepie</a>, <iaixsl:if test="/shop/language/option[@name='de']/@selected"> we </iaixsl:if> <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shipping_cost/@url"/></iaixsl:attribute>Koszty wysyłki</a> oraz dostępne
								<a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/payment_methods/@url"/></iaixsl:attribute>Sposoby płatności i prowizje</a>.
							</p>
						</div>
					</div>
				</iaixsl:otherwise>
			</iaixsl:choose>
		</div>
	</iaixsl:if>
<!-- (menu_basketedit_hotspot_zone1, 665dd0032ab380.23843299.5)-->

  <iaixsl:if test="page/hotspot/products_zone1">
    <section id="basketedit_hotspot_zone1" class="hotspot__wrapper">
      <iaixsl:attribute name="data-pagetype">basketedit</iaixsl:attribute>
      <iaixsl:attribute name="data-zone">1</iaixsl:attribute>
      <iaixsl:attribute name="data-products"><iaixsl:for-each select="page/basket-details/product"><iaixsl:value-of select="@id"/><iaixsl:if test="position() != count(page/basket-details/product)">,</iaixsl:if></iaixsl:for-each></iaixsl:attribute>
  <div class="hotspot skeleton">
    <span class="headline"/>
    <div class="products__wrapper">
      <div class="products">
        <div class="product">
          <span class="product__icon d-flex justify-content-center align-items-center"/>
          <span class="product__name"/>
          <div class="product__prices"/>
        </div>
        <div class="product">
          <span class="product__icon d-flex justify-content-center align-items-center"/>
          <span class="product__name"/>
          <div class="product__prices"/>
        </div>
        <div class="product">
          <span class="product__icon d-flex justify-content-center align-items-center"/>
          <span class="product__name"/>
          <div class="product__prices"/>
        </div>
        <div class="product">
          <span class="product__icon d-flex justify-content-center align-items-center"/>
          <span class="product__name"/>
          <div class="product__prices"/>
        </div>
      </div>
    </div>
  </div>
  <template class="hotspot_wrapper">
    <div class="hotspot">
      <h3 class="hotspot__name headline__wrapper"/>
      <div class="products__wrapper swiper">
        <div class="products hotspot__products swiper-wrapper"/>
      </div>
      <div class="swiper-button-prev --rounded --edge"><i class="icon-angle-left"/></div>
      <div class="swiper-button-next --rounded --edge"><i class="icon-angle-right"/></div>
      <div class="swiper-pagination"/>
    </div>
  </template>
  <template class="hotspot_headline">
      <span class="headline"><span class="headline__name"/></span>
  </template>
  <template class="hotspot_link_headline">
      <a class="headline" tabindex="0"><span class="headline__name"/></a>
      <a class="headline__after">
        <span class="link__text">Zobacz wszystko</span>
        <i class="icon icon-ds-arrow-right pl-1"/>
      </a>
  </template>
  <template class="hotspot_product">
    <div class="product hotspot__product swiper-slide d-flex flex-column">
      
      <div class="product__yousave --hidden">
        <span class="product__yousave --label"/>
  			<span class="product__yousave --value"/>
      </div>
      <a class="product__icon d-flex justify-content-center align-items-center" tabindex="-1"><strong class="label_icons --hidden"/></a>
      <div class="product__content_wrapper">
        <a class="product__name" tabindex="0"/>
        <div class="product__prices mb-auto">

          <strong class="price --normal --main">
            <span class="price__sub --hidden"/>
            <span class="price__range --min --hidden"/>
            <span class="price__sep --hidden"/>
            <span class="price__range --max --hidden"/>
            <span class="price_vat"/>
            <span class="price_sellby">
              <span class="price_sellby__sep --hidden"/>
              <span class="price_sellby__sellby --hidden"/>
              <span class="price_sellby__unit --hidden"/>
            </span>
            <span class="price --convert --hidden"/>
          </strong>
          <span class="price --points --hidden"/>
          <a class="price --phone --hidden" href="/contact.php" tabindex="-1">
            <iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
            Cena na telefon
          </a>
          <span class="price --before-rebate --hidden"/>
          <span class="price --new-price new_price --hidden"/>
          <span class="price --omnibus omnibus_price --hidden"/>
          <span class="price --max --hidden"/>
					<span class="price --deposit deposit_price --hidden">
						<span class="deposit_price__label">+ kaucja</span>
						<strong class="deposit_price__value"/>
					</span>
        </div>
      </div>
    </div>
  </template>
  <template class="hotspot_opinion">
		<div class="product__opinion">
      
      <div class="opinions_element_confirmed --false">
        <strong class="opinions_element_confirmed_text">Niepotwierdzona zakupem</strong>
      </div>

			
			<div class="product__opinion_client --hidden"/>

			
			<div class="note">
				<span>
					<i class="icon-star"/>
					<i class="icon-star"/>
					<i class="icon-star"/>
					<i class="icon-star"/>
					<i class="icon-star"/>
				</span>
				<small>
					Ocena: <small class="note_value"/>/5
				</small>
			</div>

			
			<div class="product__opinion_content"/>
		</div>
  </template>
    </section>
  </iaixsl:if>
	<iaixsl:if test="/shop/page/hotspot/products_zone1/@hotspot_ajax"> </iaixsl:if>
	<iaixsl:if test="/shop/page/hotspot/products_zone1/@iairs_ajax"> </iaixsl:if>
	<iaixsl:if test="/shop/page/hotspot/products_zone1/@hotspot_ajax"> </iaixsl:if>

				</main>
			</iaixsl:if>
		</div>
	</div>

	
	<iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'footer')">
		<footer>
			<iaixsl:attribute name="class">max-width-1200</iaixsl:attribute>
			<!-- (menu_buttons, 60dd8e83aed159.07618553.8)-->
	<iaixsl:if test="count(commercial_button/link)">
		<div id="menu_buttons" class="section container">
			<div class="row menu_buttons_sub">
				<iaixsl:for-each select="commercial_button/link">
					<div class="menu_button_wrapper d-flex flex-wrap">
						<iaixsl:choose>
							<iaixsl:when test="count(/shop/commercial_button/link) = 1">
								<iaixsl:attribute name="class">menu_button_wrapper d-flex flex-wrap col-12</iaixsl:attribute>
							</iaixsl:when>
							<iaixsl:when test="count(/shop/commercial_button/link) = 2">
								<iaixsl:attribute name="class">menu_button_wrapper d-flex flex-wrap col-6</iaixsl:attribute>
							</iaixsl:when>
							<iaixsl:when test="count(/shop/commercial_button/link) = 3">
								<iaixsl:attribute name="class">menu_button_wrapper d-flex flex-wrap col-md-4 col-6</iaixsl:attribute>
							</iaixsl:when>
							<iaixsl:otherwise>
								<iaixsl:attribute name="class">menu_button_wrapper d-flex flex-wrap col-md-3 col-6</iaixsl:attribute>
							</iaixsl:otherwise>
						</iaixsl:choose>

					<iaixsl:choose>
						<iaixsl:when test="not(html)">
							<iaixsl:choose>
								<iaixsl:when test="@href">
									<a target="_self">
									<iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
										<iaixsl:attribute name="href"><iaixsl:value-of select="@href"/></iaixsl:attribute>
										<iaixsl:if test="text"><iaixsl:attribute name="title"><iaixsl:value-of select="text"/></iaixsl:attribute></iaixsl:if>
										<iaixsl:choose>
											<iaixsl:when test="image">
												<iaixsl:if test="image/@src">
													<img class="b-lazy" src="/gfx/standards/loader.gif?r=1778592039">
														<iaixsl:attribute name="width"><iaixsl:value-of select="image/@width"/></iaixsl:attribute>
														<iaixsl:attribute name="height"><iaixsl:value-of select="image/@height"/></iaixsl:attribute>
														<iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
														<iaixsl:attribute name="data-src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
													</img>
												</iaixsl:if>
											</iaixsl:when>
											<iaixsl:when test="image_desktop or image_tablet or image_mobile">
												<picture>
													<iaixsl:if test="image_desktop/@src">
														<source>
															<iaixsl:attribute name="width"><iaixsl:value-of select="image_desktop/@width"/></iaixsl:attribute>
															<iaixsl:attribute name="height"><iaixsl:value-of select="image_desktop/@height"/></iaixsl:attribute>
															<iaixsl:attribute name="media">(min-width:979px)</iaixsl:attribute>
															<iaixsl:attribute name="data-srcset"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
														</source>
													</iaixsl:if>

													<iaixsl:if test="image_tablet/@src">
														<source>
															<iaixsl:attribute name="width"><iaixsl:value-of select="image_tablet/@width"/></iaixsl:attribute>
															<iaixsl:attribute name="height"><iaixsl:value-of select="image_tablet/@height"/></iaixsl:attribute>
															<iaixsl:attribute name="media">(min-width:757px)</iaixsl:attribute>
															<iaixsl:attribute name="data-srcset"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
														</source>
													</iaixsl:if>

													<iaixsl:if test="image_mobile/@src">
														<img class="b-lazy" src="/gfx/standards/loader.gif?r=1778592039">
															<iaixsl:attribute name="width"><iaixsl:value-of select="image_mobile/@width"/></iaixsl:attribute>
															<iaixsl:attribute name="height"><iaixsl:value-of select="image_mobile/@height"/></iaixsl:attribute>
															<iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
															<iaixsl:attribute name="data-src"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
														</img>
													</iaixsl:if>
												</picture>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:value-of disable-output-escaping="yes" select="text"/>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</a>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:choose>
										<iaixsl:when test="image">
											<iaixsl:if test="image/@src">
												<img class="b-lazy" src="/gfx/standards/loader.gif?r=1778592039">
													<iaixsl:attribute name="width"><iaixsl:value-of select="image/@width"/></iaixsl:attribute>
													<iaixsl:attribute name="height"><iaixsl:value-of select="image/@height"/></iaixsl:attribute>
													<iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
													<iaixsl:attribute name="data-src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
												</img>
											</iaixsl:if>
										</iaixsl:when>
										<iaixsl:when test="image_desktop or image_tablet or image_mobile">
											<picture>
												<iaixsl:if test="image_desktop/@src">
													<source>
														<iaixsl:attribute name="width"><iaixsl:value-of select="image_desktop/@width"/></iaixsl:attribute>
														<iaixsl:attribute name="height"><iaixsl:value-of select="image_desktop/@height"/></iaixsl:attribute>
														<iaixsl:attribute name="media">(min-width:979px)</iaixsl:attribute>
														<iaixsl:attribute name="data-srcset"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
													</source>
												</iaixsl:if>

												<iaixsl:if test="image_tablet/@src">
													<source>
														<iaixsl:attribute name="width"><iaixsl:value-of select="image_tablet/@width"/></iaixsl:attribute>
														<iaixsl:attribute name="height"><iaixsl:value-of select="image_tablet/@height"/></iaixsl:attribute>
														<iaixsl:attribute name="media">(min-width:757px)</iaixsl:attribute>
														<iaixsl:attribute name="data-srcset"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
													</source>
												</iaixsl:if>

												<iaixsl:if test="image_mobile/@src">
													<img class="b-lazy" src="/gfx/standards/loader.gif?r=1778592039">
														<iaixsl:attribute name="width"><iaixsl:value-of select="image_mobile/@width"/></iaixsl:attribute>
														<iaixsl:attribute name="height"><iaixsl:value-of select="image_mobile/@height"/></iaixsl:attribute>
														<iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
														<iaixsl:attribute name="data-src"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
													</img>
												</iaixsl:if>
											</picture>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:value-of disable-output-escaping="yes" select="text"/>
										</iaixsl:otherwise>
									</iaixsl:choose>
							</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:value-of disable-output-escaping="yes" select="html"/>
						</iaixsl:otherwise>
					</iaixsl:choose>
					</div>
				</iaixsl:for-each>
			</div>
		</div>
	</iaixsl:if>
<!-- (menu_tree4, 60dd8e8e533ec5.56720270.16)-->
	
	<iaixsl:variable name="stretchColumns">true</iaixsl:variable>
	<iaixsl:variable name="footerBaseAriaHeader">Nagłówek stopki: </iaixsl:variable>
	<iaixsl:variable name="footerBaseAriaLabel">Element stopki: </iaixsl:variable>

	<nav id="footer_links" data-stretch-columns="{$stretchColumns}">
		<iaixsl:attribute name="aria-label">Menu z linkami w stopce</iaixsl:attribute>
		
		<ul id="menu_orders" class="footer_links">
			<li>
				<a id="menu_orders_header" class="footer_tab__header footer_links_label" aria-controls="menu_orders_content" aria-expanded="true" href="{/shop/action/clientOrders/@url}">
					<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaHeader"/>Zamówienia</iaixsl:attribute>
					Zamówienia
				</a>

				<ul id="menu_orders_content" class="footer_links_sub" aria-hidden="false" aria-labelledby="menu_orders_header">
					<li id="order_status" class="menu_orders_item">
						<a href="{/shop/action/orderOpen/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Status zamówienia</iaixsl:attribute>
							Status zamówienia
						</a>
					</li>
					<li id="order_status2" class="menu_orders_item">
						<a href="{/shop/action/orderOpen/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Śledzenie przesyłki</iaixsl:attribute>
							Śledzenie przesyłki
						</a>
					</li>
					<li id="order_rma" class="menu_orders_item">
						<a href="{/shop/action/addRma/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Chcę zareklamować produkt</iaixsl:attribute>
							Chcę zareklamować produkt
						</a>
					</li>
					<li id="order_returns" class="menu_orders_item">
						<a href="{/shop/action/addReturn/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Chcę zwrócić produkt</iaixsl:attribute>
							Chcę zwrócić produkt
						</a>
					</li>
					<li id="order_exchange" class="menu_orders_item">
						<a href="{/shop/action/returnExchangeLink/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Chcę wymienić towar</iaixsl:attribute>
							Chcę wymienić towar
						</a>
					</li>
					<li id="order_contact" class="menu_orders_item">
						<a href="{/shop/contact/link/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Kontakt</iaixsl:attribute>
							Kontakt
						</a>
					</li>
				</ul>
			</li>
		</ul>
		
		<ul id="menu_account" class="footer_links">
			<li>
				<a id="menu_account_header" class="footer_tab__header footer_links_label" aria-controls="menu_account_content" aria-expanded="false" href="{/shop/action/login/@url}">
					<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaHeader"/>Konto</iaixsl:attribute>
					Konto
				</a>

				<ul id="menu_account_content" class="footer_links_sub" aria-hidden="true" aria-labelledby="menu_account_header">
					<iaixsl:choose>
						<iaixsl:when test="basket/@login">
							<li id="account_register" class="menu_account_item">
								<a href="{/shop/action/loginEdit/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Twoje dane</iaixsl:attribute>
									Twoje dane
								</a>
							</li>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:for-each select="/shop/action/registration_options/wholesale">
								<li id="account_register_wholesale" class="menu_account_item">
									<a href="{@registration_url}">
										<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Zarejestruj się jako hurtownik</iaixsl:attribute>
										Zarejestruj się jako hurtownik
									</a>
								</li>
							</iaixsl:for-each>
							<iaixsl:for-each select="/shop/action/registration_options/retail">
								<li id="account_register_retail" class="menu_account_item">
									<a href="{@registration_url}">
										<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Zarejestruj się</iaixsl:attribute>
										Zarejestruj się
									</a>
								</li>
							</iaixsl:for-each>
						</iaixsl:otherwise>
					</iaixsl:choose>
					<li id="account_basket" class="menu_account_item">
						<a href="{/shop/action/basket/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Koszyk</iaixsl:attribute>
							Koszyk
						</a>
					</li>
					<li id="account_observed" class="menu_account_item">
						<a href="{/shop/action/shoppinglist/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Ulubione</iaixsl:attribute>
							Ulubione
						</a>
					</li>
					<li id="account_boughts" class="menu_account_item">
						<a href="{/shop/action/productsBought/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Lista zakupionych produktów</iaixsl:attribute>
							Lista zakupionych produktów
						</a>
					</li>
					<li id="account_history" class="menu_account_item">
						<a href="{/shop/action/clientOrders/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Historia transakcji</iaixsl:attribute>
							Historia transakcji
						</a>
					</li>
					<li id="account_rebates" class="menu_account_item">
						<a href="{/shop/action/clientRebate/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Moje rabaty</iaixsl:attribute>
							Moje rabaty
						</a>
					</li>
					<li id="account_newsletter" class="menu_account_item">
						<a href="{/shop/action/newsletter/@url}">
							<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Newsletter</iaixsl:attribute>
							Newsletter
						</a>
					</li>
				</ul>
			</li>
		</ul>

		
		<iaixsl:if test="/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y'">

			<ul id="menu_regulations" class="footer_links">
				<li>
					<a id="menu_regulations_header" class="footer_tab__header footer_links_label" aria-controls="menu_regulations_content" aria-expanded="false" href="#menu_regulations_content">
						<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaHeader"/>Regulaminy</iaixsl:attribute>
						Regulaminy
					</a>

					<ul id="menu_regulations_content" class="footer_links_sub" aria-hidden="true" aria-labelledby="menu_regulations_header">
						<iaixsl:if test="/shop/action/shop_information/@order_link_active='y' and not(/shop/action/shop_information/@url = '')">
							<li class="menu_regulations_item">
								<a href="{/shop/action/shop_information/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Informacje o sklepie</iaixsl:attribute>
									Informacje o sklepie
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="/shop/action/shipping_cost/@order_link_active='y' and not(/shop/action/shipping_cost/@url = '')">
							<li class="menu_regulations_item">
								<a href="{/shop/action/shipping_cost/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Wysyłka</iaixsl:attribute>
									Wysyłka
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="/shop/action/payment_methods/@order_link_active='y' and not(/shop/action/payment_methods/@url = '')">
							<li class="menu_regulations_item">
								<a href="{/shop/action/payment_methods/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Sposoby płatności i prowizje</iaixsl:attribute>
									Sposoby płatności i prowizje
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="/shop/action/terms/@order_link_active='y' and not(/shop/action/terms/@url = '')">
							<li class="menu_regulations_item">
								<a href="{/shop/action/terms/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Regulamin</iaixsl:attribute>
									Regulamin
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="/shop/action/private_policy/@order_link_active='y' and not(/shop/action/private_policy/@url = '')">
							<li class="menu_regulations_item">
								<a href="{/shop/action/private_policy/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Polityka prywatności</iaixsl:attribute>
									Polityka prywatności
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="/shop/action/order_cancel/@order_link_active='y' and not(/shop/action/order_cancel/@url = '')">
							<li class="menu_regulations_item">
								<a href="{/shop/action/order_cancel/@url}">
									<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Odstąpienie od umowy</iaixsl:attribute>
									Odstąpienie od umowy
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="/shop/cookies_consent/@value = 'activeAdvanced'"> 
							<li class="menu_regulations_item">
								<a id="manageCookies" class="manage_cookies" href="#manageCookies">
								  <iaixsl:attribute name="aria-label"><iaixsl:value-of select="$footerBaseAriaLabel"/>Zarządzaj plikami cookie</iaixsl:attribute>
								  Zarządzaj plikami cookie
								  </a>
							</li>
						</iaixsl:if> 
					</ul>
				</li>
			</ul>
		</iaixsl:if>


		
		<iaixsl:if test="/shop/navigation4/item">
			<iaixsl:for-each select="/shop/navigation4/item">
				<iaixsl:variable name="ElementID">links_footer_<iaixsl:value-of select="position()"/></iaixsl:variable>
				<iaixsl:variable name="ElementAriaControls"><iaixsl:value-of select="$ElementID"/>_content</iaixsl:variable>

				<ul id="{$ElementID}" class="footer_links">
					<li>
						<a id="{$ElementID}_header" href="#{$ElementID}" target="{@target}" title="{@name}" class="footer_tab__header footer_links_label" data-gfx-enabled="{boolean(@gfx)}" data-hide-arrow="{count(item) &lt; 1}">
							<iaixsl:if test="item">
								<iaixsl:attribute name="aria-controls"><iaixsl:value-of select="$ElementAriaControls"/></iaixsl:attribute>
								<iaixsl:attribute name="aria-expanded">false</iaixsl:attribute>
								<iaixsl:attribute name="href">#<iaixsl:value-of select="$ElementID"/>_content</iaixsl:attribute>
							</iaixsl:if>
							<iaixsl:if test="@link">
								<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
							</iaixsl:if>
							<iaixsl:if test="@gfx">
								<img src="{@gfx}" alt="{@name}">
									<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
									<iaixsl:if test="@gfx_onmouseover">
										<iaixsl:attribute name="data-onmouseover"><iaixsl:value-of disable-output-escaping="yes" select="@gfx_onmouseover"/></iaixsl:attribute>
									</iaixsl:if>
								</img>
								<span class="d-none footer_links_label_name"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
							</iaixsl:if>
							<iaixsl:if test="not(@gfx)">
								<span><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
							</iaixsl:if>
						</a>

						<iaixsl:if test="item">
							<ul id="{$ElementID}_content" class="footer_links_sub" aria-hidden="true" aria-labelledby="{$ElementID}_header">
								<iaixsl:for-each select="item">
									<li class="{$ElementID}_item">
										<iaixsl:choose>
											<iaixsl:when test="@link">
												<a href="{@link}" target="{@target}" title="{@name}" data-gfx-enabled="{boolean(@gfx)}">
													<iaixsl:if test="@gfx">
														<img src="{@gfx}" alt="{@name}">
															<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
															<iaixsl:if test="@gfx_onmouseover">
																<iaixsl:attribute name="data-onmouseover"><iaixsl:value-of disable-output-escaping="yes" select="@gfx_onmouseover"/></iaixsl:attribute>
															</iaixsl:if>
														</img>
														<span class="d-none footer_links_item_name"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
													</iaixsl:if>

													<iaixsl:if test="not(@gfx)">
														<span><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
													</iaixsl:if>
												</a>
											</iaixsl:when>

											<iaixsl:otherwise>
												<span title="{@name}" data-gfx-enabled="{boolean(@gfx)}">
													<iaixsl:if test="@gfx">
														<img src="{@gfx}" alt="{@name}">
															<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
															<iaixsl:if test="@gfx_onmouseover">
																<iaixsl:attribute name="data-onmouseover"><iaixsl:value-of disable-output-escaping="yes" select="@gfx_onmouseover"/></iaixsl:attribute>
															</iaixsl:if>
														</img>
														<span class="d-none footer_links_item_name"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
													</iaixsl:if>

													<iaixsl:if test="not(@gfx)">
														<span><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
													</iaixsl:if>
												</span>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</li>
								</iaixsl:for-each>
							</ul>
						</iaixsl:if>
					</li>
				</ul>
			</iaixsl:for-each>

			<iaixsl:if test="/shop/opinions/service or /shop/insurances/service">
				<iaixsl:if test="/shop/insurances/service">
					<ul id="menu_insurances" class="col-md-6 col-12 mb-4">
						<iaixsl:for-each select="/shop/insurances/service">
							<li class="menu_insurances_item">
								<iaixsl:value-of disable-output-escaping="yes" select="sealbox_html"/>
							</li>
						</iaixsl:for-each>
					</ul>
				</iaixsl:if>
			</iaixsl:if>
		</iaixsl:if>
	</nav>
<!-- (menu_contact, 614c5cf21f7b08.81498360.9)-->
	<div id="menu_contact" class="container">
		<ul class="menu_contact__items">
			<li class="contact_type_header">
				<a href="contact.php">
					<iaixsl:if test="/shop/action/contact/@url">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/contact/@url"/></iaixsl:attribute>
					</iaixsl:if>

					Kontakt
				</a>
			</li>
			<iaixsl:for-each select="/shop/contact/contact_nodes/node[@type='phone'][1]">
				<li class="contact_type_phone">
					<iaixsl:choose>
						<iaixsl:when test="@link">
							<a href="{@link}"><iaixsl:value-of select="@value"/></a>
						</iaixsl:when>
						<iaixsl:otherwise>
							<span><iaixsl:value-of select="@value"/></span>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</li>
			</iaixsl:for-each>

			<iaixsl:for-each select="/shop/contact/contact_nodes/node[@type='text'][1]">
				<li class="contact_type_text">
					<span><iaixsl:value-of select="@value"/></span>
				</li>
			</iaixsl:for-each>

			<iaixsl:for-each select="/shop/contact/contact_nodes/node[@type='mail'][1]">
				<li class="contact_type_mail">
					<iaixsl:choose>
						<iaixsl:when test="@link">
							<a href="{@link}"><iaixsl:value-of select="@value"/></a>
						</iaixsl:when>
						<iaixsl:otherwise>
							<span><iaixsl:value-of select="@value"/></span>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</li>
			</iaixsl:for-each>

			<li class="contact_type_adress">
				<span class="shopshortname">
					<iaixsl:value-of select="contact/owner/@shopshortname"/>
					<span>, </span>
				</span>
				<span class="adress_street">
					<iaixsl:value-of select="contact/adress/@street"/>
					<span>, </span>
				</span>
				<span class="adress_zipcode">
					<iaixsl:value-of select="contact/adress/@zipcode"/>
					<span class="n55931_city"><iaixsl:text> </iaixsl:text><iaixsl:value-of select="contact/adress/@city"/></span>
				</span>
			</li>
		</ul>
	</div>

	<iaixsl:if test="/shop/iai/@button_src or ((/shop/page/@price_type and not($priceTypeVat = '')) or /shop/page/@customs_duty_required = 'y')">
		<div class="footer_settings container">
			<iaixsl:if test="(/shop/page/@price_type and not($priceTypeVat = '')) or /shop/page/@customs_duty_required = 'y'">
				<div id="price_info" class="footer_settings__price_info price_info">
					<iaixsl:if test="not($priceTypeVat = '')">
						<span class="price_info__text --type">
							<iaixsl:choose>
								<iaixsl:when test="/shop/page/@price_type = 'net'">
									W sklepie prezentujemy ceny netto (bez VAT).
								</iaixsl:when>
								<iaixsl:otherwise>
									W sklepie prezentujemy ceny brutto (z VAT).
								</iaixsl:otherwise>
							</iaixsl:choose>
						</span>
						<iaixsl:if test="/shop/page/@price_type = 'gross' and /shop/page/@tax_region_name">
							<span class="price_info__text --region">Stawki VAT dla konsumentów z kraju: <span class="price_info__region"><iaixsl:value-of select="/shop/page/@tax_region_name"/></span>. </span>
						</iaixsl:if>
					</iaixsl:if>
					<iaixsl:if test="/shop/page/@customs_duty_required = 'y'">
						<span class="price_info__text --customs">Do podanych cen należy doliczyć cło. </span>
					</iaixsl:if>
				</div>
			</iaixsl:if>
			<iaixsl:if test="/shop/iai/@button_src">
				<div class="footer_settings__idosell idosell" id="idosell_logo">
					<iaixsl:choose>
						<iaixsl:when test="/shop/iai/@is_mobile_application = 'yes'">
							<span class="idosell__logo">
								<img class="idosell__img" src="{/shop/iai/@button_src}" loading="lazy">
								  <iaixsl:choose>
								    <iaixsl:when test="/shop/@trust_level = '1'">
								      <iaixsl:attribute name="alt">Wyróżnienie dla najlepszych sklepów internetowych IdoSell</iaixsl:attribute>
								    </iaixsl:when>
						        <iaixsl:otherwise>
						          <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/iai/@button_text"/></iaixsl:attribute>
						        </iaixsl:otherwise>
        					</iaixsl:choose>
        				</img>
							</span>
						</iaixsl:when>
						<iaixsl:otherwise>
							<a class="idosell__logo --link" target="_blank" href="{/shop/iai/@button_link}" title="{/shop/iai/@button_text}">
								<iaixsl:if test="/shop/iai/@button_target">
									<iaixsl:attribute name="target"><iaixsl:value-of select="/shop/iai/@button_target"/></iaixsl:attribute>
								</iaixsl:if>

								<img class="idosell__img" src="{/shop/iai/@button_src}" loading="lazy">
								  <iaixsl:choose>
								    <iaixsl:when test="/shop/@trust_level = '1'">
								      <iaixsl:attribute name="alt">Wyróżnienie dla najlepszych sklepów internetowych IdoSell</iaixsl:attribute>
								    </iaixsl:when>
						        <iaixsl:otherwise>
						          <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/iai/@button_text"/></iaixsl:attribute>
						        </iaixsl:otherwise>
        					</iaixsl:choose>
								</img>
							</a>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</div>
			</iaixsl:if>
		</div>
	</iaixsl:if>
<!-- (menu_footer, 60dd8e790bf551.68543995.3)-->
  <iaixsl:if test="/shop/iai/@button_src"/>
<!-- (bars_bottom, 62e7a60add2960.49498572.3)-->
	<iaixsl:if test="/shop/page/bars/bar[@position = 'bottom']">
		<div class="bars_bottom bars">
			<iaixsl:for-each select="/shop/page/bars/bar[@position = 'bottom']">
				<div class="bars__item">
					<iaixsl:attribute name="id">bar<iaixsl:value-of select="@id"/></iaixsl:attribute>
					<iaixsl:if test="@possibilityToClose = 'true'">
						<iaixsl:attribute name="data-close">true</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:if test="@fixed = 'true'">
						<iaixsl:attribute name="data-fixed">true</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:attribute name="style">--background-color:<iaixsl:value-of select="@backgroundColor"/>;--border-color:<iaixsl:value-of select="@borderColor"/>;--font-color:<iaixsl:value-of select="@fontColor"/>;</iaixsl:attribute>
					<div class="bars__wrapper">
						<div class="bars__content"><iaixsl:value-of disable-output-escaping="yes" select="."/></div>
						<iaixsl:if test="@possibilityToClose = 'true'">
							<a href="#closeBar" class="bars__close">
							  <iaixsl:attribute name="aria-label">Zamknij</iaixsl:attribute>
						  </a>
						</iaixsl:if>
					</div>
				</div>
			</iaixsl:for-each>
		</div>
	</iaixsl:if>
<!-- (menu_tooltip, 60dd8e886840c9.16767093.8)-->
  <iaixsl:if test="(/shop/iai/@is_mobile_application = 'yes')"> 
    <script>app_shop.vars.isMobileApp = true;</script>
  </iaixsl:if>
<!-- (menu_banners2, 60dd8e7eb6d737.92314820.7)-->
	<iaixsl:if test="count(commercial_banner2/link)">
		<section id="menu_banners2" class="container">
			<iaixsl:for-each select="commercial_banner2/link">
				<div class="menu_button_wrapper">
					<iaixsl:choose>
						<iaixsl:when test="not(html)">
							<iaixsl:choose>
								<iaixsl:when test="@href">
								<a target="_self" href="{@href}">
									<iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
										<iaixsl:if test="text"><iaixsl:attribute name="title"><iaixsl:value-of select="text"/></iaixsl:attribute></iaixsl:if>
										<iaixsl:attribute name="aria-label"><iaixsl:choose>
											<iaixsl:when test="text"><iaixsl:value-of select="text"/></iaixsl:when>
											<iaixsl:otherwise>Obrazek w sekcji graficznej 2 - <iaixsl:value-of select="position()"/></iaixsl:otherwise>
										</iaixsl:choose></iaixsl:attribute>
										<iaixsl:choose>
											<iaixsl:when test="image">
												<iaixsl:if test="image/@src">
													<img src="{image/@src}" width="{image/@width}" height="{image/@height}" alt="{text}" loading="lazy"/>
												</iaixsl:if>
											</iaixsl:when>
											<iaixsl:when test="image_desktop or image_tablet or image_mobile">
												<picture>
													<iaixsl:if test="image_desktop/@src">
														<source srcset="{image_desktop/@src}" media="(min-width:979px)" width="{image_desktop/@width}" height="{image_desktop/@height}"/>
													</iaixsl:if>

													<iaixsl:if test="image_tablet/@src">
														<source srcset="{image_tablet/@src}" media="(min-width:757px)" width="{image_tablet/@width}" height="{image_tablet/@height}"/>
													</iaixsl:if>

													<iaixsl:if test="image_mobile/@src">
														<img src="{image_mobile/@src}" width="{image_mobile/@width}" height="{image_mobile/@height}" alt="{text}" loading="lazy"/>
													</iaixsl:if>
												</picture>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:value-of disable-output-escaping="yes" select="text"/>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</a>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:choose>
										<iaixsl:when test="image">
											<iaixsl:if test="image/@src">
												<img src="{image/@src}" width="{image/@width}" height="{image/@height}" alt="{text}" loading="lazy"/>
											</iaixsl:if>
										</iaixsl:when>
										<iaixsl:when test="image_desktop or image_tablet or image_mobile">
											<picture>
												<iaixsl:if test="image_desktop/@src">
													<source srcset="{image_desktop/@src}" media="(min-width:979px)" width="{image_desktop/@width}" height="{image_desktop/@height}"/>
												</iaixsl:if>

												<iaixsl:if test="image_tablet/@src">
													<source srcset="{image_tablet/@src}" media="(min-width:757px)" width="{image_tablet/@width}" height="{image_tablet/@height}"/>
												</iaixsl:if>

												<iaixsl:if test="image_mobile/@src">
													<img src="{image_mobile/@src}" width="{image_mobile/@width}" height="{image_mobile/@height}" alt="{text}" loading="lazy"/>
												</iaixsl:if>
											</picture>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:value-of disable-output-escaping="yes" select="text"/>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:value-of disable-output-escaping="yes" select="html"/>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</div>
			</iaixsl:for-each>
		</section>
	</iaixsl:if>
<!-- (menu_instalment, 60dd8e8af3fa77.78410167.5)-->
	<script>
		const instalmentData = {
			
			currency: &apos;<iaixsl:value-of select="/shop/currency/@name"/>&apos;,
			
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/@type = 'projector'">
					basketCost: parseFloat(<iaixsl:value-of select="/shop/basket/@cost"/>, 10),
				</iaixsl:when>
				<iaixsl:otherwise>
					basketCost: 0,
				</iaixsl:otherwise>
			</iaixsl:choose>
			
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/@type = 'projector'">
					basketCostNet: parseFloat(<iaixsl:value-of select="/shop/basket/@cost_net"/>, 10),
				</iaixsl:when>
				<iaixsl:otherwise>
					basketCostNet: 0,
				</iaixsl:otherwise>
			</iaixsl:choose>
			
			basketCount: parseInt(<iaixsl:value-of select="/shop/basket/@count"/>, 10),
			
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/@type = 'projector'">
					price: parseFloat(<iaixsl:value-of select="/shop/page/projector/product/price/@value"/>, 10),
					priceNet: parseFloat(<iaixsl:value-of select="/shop/page/projector/product/price/@price_net"/>, 10),
				</iaixsl:when>
				<iaixsl:when test="/shop/page/@type = 'basketedit'">
					price: parseFloat(<iaixsl:value-of select="/shop/page/basket-details/summary/money/@to_pay"/>, 10),
					priceNet: parseFloat(<iaixsl:value-of select="/shop/page/basket-details/summary/money/@total_net"/>, 10),
				</iaixsl:when>
				<iaixsl:otherwise>
					price: 0,
					priceNet: 0,
				</iaixsl:otherwise>
			</iaixsl:choose>
		}
	</script>
	<iaixsl:if test="/shop/page/basket-details/summary/payment/instalment"> </iaixsl:if>
	<iaixsl:if test="/shop/page/basket-details/summary/payment/instalment/@price_type"> </iaixsl:if>
	<iaixsl:if test="/shop/page/projector/product/payment/instalment"> </iaixsl:if>
	<iaixsl:if test="/shop/page/projector/product/payment/instalment/@price_type"> </iaixsl:if>
<!-- (menu_structured_data, 60dd8e7d96d3f6.35754398.17)-->

	<iaixsl:variable name="menu_structured_data_hurt"/>
	<iaixsl:variable name="curr_url"><iaixsl:value-of select="/shop/@currurl"/></iaixsl:variable>
	<iaixsl:variable name="url_length"><iaixsl:value-of select="string-length($curr_url)"/></iaixsl:variable>
	<iaixsl:variable name="productLink"><iaixsl:value-of select="substring-after(/shop/page/projector/product/@link, '/')"/></iaixsl:variable>

	<iaixsl:if test="page/@type = 'navigation' or page/@type = 'search' or page/@type = 'projector' or page/@type = 'main'">
		<script type="application/ld+json">
		{
		&quot;@context&quot;: &quot;http://schema.org&quot;,
		&quot;@type&quot;: &quot;Organization&quot;,
		&quot;url&quot;: &quot;<iaixsl:value-of select="/shop/@currurl"/>&quot;,
		&quot;logo&quot;: &quot;<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="/shop/mask/top/link/image/@src"/>&quot;
		}
		</script>
	</iaixsl:if>

	<iaixsl:if test="bc/item and (page/@type = 'navigation' or page/@type = 'search' or page/@type = 'projector')">
		<script type="application/ld+json">
		{
			&quot;@context&quot;: &quot;http://schema.org&quot;,
			&quot;@type&quot;: &quot;BreadcrumbList&quot;,
			&quot;itemListElement&quot;: [<iaixsl:for-each select="bc/item">
			{
			&quot;@type&quot;: &quot;ListItem&quot;,
			&quot;position&quot;: <iaixsl:value-of select="position()"/>,
      &quot;item&quot;: {&quot;@id&quot;: &quot;<iaixsl:choose>
				<iaixsl:when test="@hasVisibleUrl='true'"><iaixsl:value-of select="@link"/></iaixsl:when>
				<iaixsl:otherwise><iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/>#</iaixsl:otherwise>
			  </iaixsl:choose>&quot;,
      	&quot;name&quot;: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="@title"/></iaixsl:call-template>
			  }
      }<iaixsl:if test="not(position() = last())">,</iaixsl:if>
		</iaixsl:for-each>]
		}
	</script>
	</iaixsl:if>
	<script type="application/ld+json">
		{
		&quot;@context&quot;: &quot;http://schema.org&quot;,
		&quot;@type&quot;: &quot;WebSite&quot;,
		<iaixsl:if test="/shop/@shopname">&quot;name&quot;:&quot;<iaixsl:value-of select="/shop/@shopname"/>&quot;,</iaixsl:if>
		<iaixsl:if test="/shop/@shopshortname">&quot;alternateName&quot;: &quot;<iaixsl:value-of select="/shop/@shopshortname"/>&quot;,</iaixsl:if>
		&quot;url&quot;: &quot;<iaixsl:value-of select="/shop/@currurl"/>&quot;,
		&quot;potentialAction&quot;: {
		&quot;@type&quot;: &quot;SearchAction&quot;,
		&quot;target&quot;: &quot;<iaixsl:value-of select="/shop/@currurl"/>search.php?text={search_term_string}&quot;,
		&quot;query-input&quot;: &quot;required name=search_term_string&quot;
		}
		}
	</script>
	<iaixsl:if test="page/@type = 'projector'">
	<script type="application/ld+json">
		{
		&quot;@context&quot;: &quot;http://schema.org&quot;,
		&quot;@type&quot;: &quot;Product&quot;,
		<iaixsl:if test="page/projector/comments/opinions/opinion">
		&quot;aggregateRating&quot;: {
		&quot;@type&quot;: &quot;AggregateRating&quot;,
		&quot;ratingValue&quot;: &quot;<iaixsl:value-of disable-output-escaping="yes" select="page/projector/comments/@avg"/>&quot;,
		&quot;reviewCount&quot;: &quot;<iaixsl:value-of select="page/projector/comments/@all"/>&quot;
		},
		</iaixsl:if>
		&quot;description&quot;: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="normalize-space(page/projector/product/cleardescription)"/></iaixsl:call-template>,
		&quot;name&quot;: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="/shop/page/projector/product/name"/></iaixsl:call-template>,
		&quot;productID&quot;: &quot;mpn:<iaixsl:value-of select="page/projector/product/@code"/>&quot;,
		&quot;brand&quot;: {
			&quot;@type&quot;: &quot;Brand&quot;,
			&quot;name&quot;: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="page/projector/product/firm/@name"/></iaixsl:call-template>
		},<iaixsl:if test="/shop/page/projector/product/dictionary/items[item/@context_id = 'CONTEXT_COLOR']">
		&quot;color&quot;: [<iaixsl:for-each select="/shop/page/projector/product/dictionary/items/item[@context_id = 'CONTEXT_COLOR']/values/value"><iaixsl:if test="not(position() = 1)">,</iaixsl:if>&quot;<iaixsl:value-of select="@value"/>&quot;</iaixsl:for-each>],
		</iaixsl:if>
		&quot;image&quot;: &quot;<iaixsl:if test="not(contains(/shop/page/projector/product/enclosures/images/enclosure/@url, 'http'))"><iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/></iaixsl:if><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/enclosures/images/enclosure/@url"/>&quot;
		<iaixsl:if test="((/shop/page/projector/product/versions/version[@id = /shop/page/projector/product/@id]/size/price/@value != 0 or /shop/basket/@wholesaler = 'true') and $menu_structured_data_hurt != '') or not($menu_structured_data_hurt != '')">,
		&quot;offers&quot;: [<iaixsl:variable name="isSizesPricesSet"><iaixsl:choose><iaixsl:when test="(not(count(/shop/page/projector/product/sizes/size) = count(/shop/page/projector/product/sizes/size/price[@value = /shop/page/projector/product/sizes/prices/@price_unit_sellby]))) and not(count(/shop/page/projector/product/sizes/size) = 1)">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:for-each select="page/projector/product/sizes/size">
			<iaixsl:if test="not(position() = 1)">,</iaixsl:if>
			{
			&quot;@type&quot;: &quot;Offer&quot;,
			&quot;availability&quot;: &quot;<iaixsl:choose><iaixsl:when test="availability[(@status = 'enable') or (@status = 'order')]">http://schema.org/InStock</iaixsl:when><iaixsl:otherwise>http://schema.org/OutOfStock</iaixsl:otherwise></iaixsl:choose>&quot;,
			<iaixsl:choose>
				<iaixsl:when test="price/@maxprice">
					&quot;priceSpecification&quot;: [
					<iaixsl:if test="price/@srp">
						{
							&quot;@type&quot;: &quot;UnitPriceSpecification&quot;,
							&quot;priceType&quot;: &quot;https://schema.org/MSRP&quot;,
							&quot;price&quot;: &quot;<iaixsl:value-of select="price/@srp"/>&quot;,
              &quot;priceCurrency&quot;: &quot;<iaixsl:value-of select="/shop/currency/@id"/>&quot;
						},
					</iaixsl:if>
					{
					&quot;@type&quot;: &quot;UnitPriceSpecification&quot;,
					&quot;priceType&quot;: &quot;https://schema.org/ListPrice&quot;,
					&quot;price&quot;: &quot;<iaixsl:choose><iaixsl:when test="price/@maxprice_unit"><iaixsl:value-of select="price/@maxprice_unit"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@maxprice"/></iaixsl:otherwise></iaixsl:choose>&quot;,
          &quot;priceCurrency&quot;: &quot;<iaixsl:value-of select="/shop/currency/@id"/>&quot;
					},
					{
					&quot;@type&quot;: &quot;UnitPriceSpecification&quot;,
					&quot;priceType&quot;: &quot;https://schema.org/SalePrice&quot;,
					<iaixsl:if test="price/@promotiontilldate or price/@discounttilldate or price/@distinguishedtilldate or price/@specialtilldate">
						&quot;validThrough&quot;: &quot;<iaixsl:choose><iaixsl:when test="price/@promotiontilldate"><iaixsl:value-of select="price/@promotiontilldate"/></iaixsl:when><iaixsl:when test="price/@discounttilldate"><iaixsl:value-of select="price/@discounttilldate"/></iaixsl:when><iaixsl:when test="price/@distinguishedtilldate"><iaixsl:value-of select="price/@distinguishedtilldate"/></iaixsl:when><iaixsl:when test="price/@specialtilldate"><iaixsl:value-of select="price/@specialtilldate"/></iaixsl:when></iaixsl:choose>&quot;,
					</iaixsl:if>
					&quot;price&quot;: &quot;<iaixsl:choose><iaixsl:when test="($isSizesPricesSet = 'true') and price/@value"><iaixsl:choose><iaixsl:when test="price/@price_unit"><iaixsl:value-of select="price/@price_unit"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@value"/></iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="../prices/@price_unit_sellby"/></iaixsl:otherwise></iaixsl:choose>&quot;,
          &quot;priceCurrency&quot;: &quot;<iaixsl:value-of select="/shop/currency/@id"/>&quot;
					}
					],
          
				</iaixsl:when>
				<iaixsl:otherwise>
					&quot;price&quot;: &quot;<iaixsl:choose><iaixsl:when test="($isSizesPricesSet = 'true') and price/@value"><iaixsl:choose><iaixsl:when test="price/@price_unit"><iaixsl:value-of select="price/@price_unit"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@value"/></iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="../prices/@price_unit_sellby"/></iaixsl:otherwise></iaixsl:choose>&quot;,
          &quot;priceCurrency&quot;: &quot;<iaixsl:value-of select="/shop/currency/@id"/>&quot;,
				</iaixsl:otherwise>
			</iaixsl:choose>
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/projector/product/price/@promotiontilldate">
					
				&quot;priceValidUntil&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/price/@promotiontilldate"/>&quot;,
			
				</iaixsl:when>
				<iaixsl:when test="/shop/page/projector/product/price/@discounttilldate">
					
				&quot;priceValidUntil&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/price/@discounttilldate"/>&quot;,
			
				</iaixsl:when>
				<iaixsl:when test="/shop/page/projector/product/price/@distinguishedtilldate">
					
				&quot;priceValidUntil&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/price/@distinguishedtilldate"/>&quot;,
			
				</iaixsl:when>
				<iaixsl:when test="/shop/page/projector/product/price/@specialtilldate">
					
				&quot;priceValidUntil&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/price/@specialtilldate"/>&quot;,
			
				</iaixsl:when>
			</iaixsl:choose>

			
				&quot;hasMerchantReturnPolicy&quot;: {
					&quot;@type&quot;: &quot;MerchantReturnPolicy&quot;,
			
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/projector/returns_config/@active = 'n'">
					
					&quot;returnPolicyCategory&quot;: &quot;https://schema.org/MerchantReturnNotPermitted&quot;,
			
				</iaixsl:when>
				<iaixsl:when test="/shop/page/projector/returns_config/@days_to_return &gt; 0">
					
					&quot;returnPolicyCategory&quot;: &quot;https://schema.org/MerchantReturnFiniteReturnWindow&quot;,
			
				</iaixsl:when>
				<iaixsl:otherwise>
					
					&quot;returnPolicyCategory&quot;: &quot;https://schema.org/MerchantReturnUnlimitedWindow&quot;,
			
				</iaixsl:otherwise>
			</iaixsl:choose>
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/projector/returns_config/@return_only_cashback = 'y'">
					
					&quot;refundType&quot;: &quot;https://schema.org/FullRefund&quot;,
			
				</iaixsl:when>
				<iaixsl:when test="/shop/page/projector/returns_config/@return_only_cashback = 'n'">
					
					&quot;refundType&quot;: &quot;https://schema.org/ExchangeRefund&quot;,
			
				</iaixsl:when>
			</iaixsl:choose>
			
					&quot;merchantReturnDays&quot;: <iaixsl:value-of select="/shop/page/projector/returns_config/@days_to_return"/>,

			<iaixsl:if test="/shop/page/projector/returns_config/@returns_shop_shipping_active = 'y'">
				<iaixsl:choose>
					<iaixsl:when test="/shop/page/projector/returns_config/@returns_shop_shipping_cost = 'client'">
						
					&quot;returnFees&quot;: &quot;https://schema.org/ReturnShippingFees&quot;,
					</iaixsl:when>
					<iaixsl:when test="/shop/page/projector/returns_config/@returns_shop_shipping_cost = 'shop'">
						
					&quot;returnFees&quot;: &quot;https://schema.org/FreeReturn&quot;,
					</iaixsl:when>
					<iaixsl:when test="/shop/page/projector/returns_config/@returns_shop_shipping_cost = 'shopBalance'">
						
					&quot;returnFees&quot;: &quot;https://schema.org/FreeReturn&quot;,
					&quot;restockingFee&quot;: &quot;Koszt zwrotu potrącany ze zwracanej kwoty (np. cashback, saldo klienta)&quot;,
					</iaixsl:when>
					<iaixsl:when test="/shop/page/projector/returns_config/@returns_shop_shipping_cost = 'shopAndClient'">
						
					&quot;returnFees&quot;: &quot;https://schema.org/ReturnShippingFees&quot;,
					</iaixsl:when>
				</iaixsl:choose>
			</iaixsl:if>
			
					&quot;returnMethod&quot;: &quot;https://schema.org/ReturnByMail&quot;,
					&quot;applicableCountry&quot;: &quot;<iaixsl:value-of select="/shop/@geoip_country_code"/>&quot;
				},
				&quot;shippingDetails&quot;: {
					&quot;@type&quot;: &quot;OfferShippingDetails&quot;,
					&quot;shippingRate&quot;: {
						&quot;@type&quot;: &quot;MonetaryAmount&quot;,
						&quot;value&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/sizes/size/delivery/@shipping"/>&quot;,
						&quot;currency&quot;: &quot;<iaixsl:value-of select="/shop/currency/@id"/>&quot;
					},
					&quot;shippingDestination&quot;: {
						&quot;@type&quot;: &quot;DefinedRegion&quot;,
						&quot;addressCountry&quot;: &quot;<iaixsl:value-of select="/shop/@geoip_country_code"/>&quot;
					}
			<iaixsl:if test="/shop/page/projector/product/sizes/size/delivery/@limitfree &gt; 0">
				,
					&quot;freeShippingThreshold&quot;: {
						&quot;@type&quot;: &quot;MonetaryAmount&quot;,
						&quot;value&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/sizes/size/delivery/@limitfree"/>&quot;,
						&quot;currency&quot;: &quot;<iaixsl:value-of select="/shop/currency/@id"/>&quot;
					}
			</iaixsl:if>
			
				},

			
			&quot;eligibleQuantity&quot;: {
			&quot;value&quot;:  &quot;<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/>&quot;,
      <iaixsl:if test="/shop/page/projector/product/order_quantity_range/min_quantity_per_order">
        
        &quot;minValue&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/order_quantity_range/min_quantity_per_order"/>&quot;,
      </iaixsl:if>
			&quot;unitCode&quot;: &quot;<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_single"/>&quot;,
			&quot;@type&quot;: [
			&quot;QuantitativeValue&quot;
			]
			},
			&quot;url&quot;: &quot;<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="/shop/page/projector/product/@link"/><iaixsl:if test="/shop/page/projector/product/sizes/size/@type != 'onesize' and /shop/page/projector/product/sizes/size/@type != 'uniw'">?selected_size=<iaixsl:value-of select="@type"/></iaixsl:if>&quot;
			}
			</iaixsl:for-each>
		]</iaixsl:if>
		<iaixsl:if test="page/projector/comments/opinions/opinion">,
			&quot;review&quot;: [
			<iaixsl:for-each select="page/projector/comments/opinions/opinion">
			<iaixsl:if test="not(position() = 1)">,</iaixsl:if>
			{
			&quot;@type&quot;: &quot;Review&quot;,
			&quot;author&quot;: {
				&quot;@type&quot;: &quot;Person&quot;,
				&quot;name&quot;: <iaixsl:choose><iaixsl:when test="@client_name and not(@client_name = '')"><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="@client_name"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="@client"/></iaixsl:call-template></iaixsl:otherwise></iaixsl:choose>
			},
			&quot;description&quot;: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="normalize-space(.)"/></iaixsl:call-template>,
			&quot;reviewRating&quot;: {
			&quot;@type&quot;: &quot;Rating&quot;,
			&quot;bestRating&quot;: &quot;5&quot;,
			&quot;ratingValue&quot;: &quot;<iaixsl:value-of select="round(@note)"/>&quot;,
			&quot;worstRating&quot;: &quot;1&quot;
			}
			}
			</iaixsl:for-each>
			]
		</iaixsl:if>
		}

		</script>
	</iaixsl:if>
	<iaixsl:if test="page/@type = 'blog-item'">
		<script type="application/ld+json">
		{
		&quot;@context&quot;: &quot;http://schema.org&quot;,
		&quot;@type&quot;: &quot;NewsArticle&quot;,
		&quot;headline&quot;: &quot;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/title/text()"/>&quot;,
		&quot;mainEntityOfPage&quot;: &quot;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/link/@href"/>&quot;,
		&quot;datePublished&quot;: &quot;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/date/text()"/>&quot;,
		&quot;dateModified&quot;: &quot;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/date/text()"/>&quot;,
		&quot;image&quot;: {
		&quot;@type&quot;:&quot;ImageObject&quot;,
		&quot;url&quot;:&quot;<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/image/@src"/>&quot;,
		&quot;width&quot;:&quot;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/image/@width"/>&quot;,
		&quot;height&quot;:&quot;<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/image/@height"/>&quot;
		},
		&quot;description&quot;: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="normalize-space(/shop/page/blogitem/description/text())"/></iaixsl:call-template>,
		&quot;author&quot;:{
		&quot;@type&quot;: &quot;Organization&quot;,
		&quot;name&quot;:&quot;<iaixsl:value-of select="/shop/contact/owner/@shopshortname"/>&quot;
		},
		&quot;publisher&quot;:{
		&quot;@type&quot;: &quot;Organization&quot;,
		&quot;name&quot;: &quot;<iaixsl:value-of select="/shop/contact/owner/@shopshortname"/>&quot;,
		&quot;logo&quot;: {
		&quot;@type&quot;:&quot;ImageObject&quot;,
		&quot;url&quot;:&quot;<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="/shop/mask/top/link/image/@src"/>&quot;,
		&quot;width&quot;:&quot;<iaixsl:value-of select="/shop/mask/top/link/image/@width"/>&quot;,
		&quot;height&quot;:&quot;<iaixsl:value-of select="/shop/mask/top/link/image/@height"/>&quot;
		}
		}
		}
		</script>
	</iaixsl:if>

<!-- (menu_notice, 60dd8e88d59467.28079152.5)-->
	<iaixsl:if test="/shop/order_edit/@order_number">
		<iaixsl:if test="/shop/action_alert or /shop/page/projector/product/exchange/@exchange_id or (/shop/page/@type = 'order2') or (/shop/page/@type = 'order-wrappers')">
			<div id="menu_notice" class="menu_notice">
				<h2>Edycja zamówienia</h2>
				<p>
					<iaixsl:choose>
						<iaixsl:when test="/shop/action_alert/@type = 'order_edit'">
							Jesteś w trybie edycji złożonego zamówienia. By zmiany zostały zastosowane musisz przejść przez wszystkie kroki składania zamówienia. Jeżeli nie przejdziesz przez wszystkie kroki składania zamówienia to wcześniej złożone zamówienie nie zostanie zmienione.
						</iaixsl:when>
						<iaixsl:when test="/shop/action_alert/@type = 'order_edit_auction'">
							Jesteś w trybie edycji zamówienia złożonego przez system aukcyjny. Możesz wymienić produkt na inny w tej samej grupie (np. inny kolor lub rozmiar) bądź dodać kolejne (dowolne) produkty w celu powiększenia zamówienia. By zmiany zostały zastosowane musisz przejść przez wszystkie kroki składania zamówienia.
						</iaixsl:when>
						<iaixsl:when test="/shop/action_alert/@type = 'order1'">
							Jesteś w trybie edycji złożonego zamówienia. Zaznaczone są wcześniej wybrane ustawienia wysyłki i płatności. Możesz je zmienić. By zmiany zostały zastosowane musisz przejść przez wszystkie kroki składania zamówienia.
						</iaixsl:when>
						<iaixsl:when test="/shop/page/@type = 'order2'">
							Sprawdź czy zamówienie w obecnej postaci Ci odpowiada. Jeżeli tak, kliknij na przycisk zmień zamówienie by zatwierdzić zmiany w zamówieniu. Jeżeli nie, wróć do koszyka i postępuj jak poprzednio.
						</iaixsl:when>
						<iaixsl:when test="/shop/page/@type = 'order-wrappers'">
							W tym kroku edycji zamówienia możesz wybrać interesujące Cię opakowanie. By zmiany zostały zastosowane musisz przejść przez wszystkie kroki składania zamówienia.
						</iaixsl:when>
						<iaixsl:when test="/shop/action_alert/@type = 'add_basket' or /shop/action_alert/@type = 'change_basket'">
							Zmieniłeś zawartość koszyka, pamiętaj by zastosować te zmiany, musisz ponownie przejść przez wszystkie kroki składania zamówienia.
						</iaixsl:when>
						<iaixsl:when test="/shop/page/projector/product/exchange/@exchange_id">
							Aby wymienić produkt w koszyku, możesz wybrać np. inny kolor lub rozmiar tego samego produktu, a system automatycznie podmieni go z produktem wybranym na aukcji.
						</iaixsl:when>
					</iaixsl:choose>
				</p>
			</div>
		</iaixsl:if>
	</iaixsl:if>
<!-- (menu_dynamically_added_content, 60dd8e7a061521.50730639.4)-->
	<script>app_shop.vars.requestUri=<iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="/shop/page/additional_ajax/@request_uri"/></iaixsl:call-template>;app_shop.vars.additionalAjax=&apos;<iaixsl:value-of select="/shop/page/additional_ajax/@additional_ajax"/>&apos;;</script>
	
	<iaixsl:if test="/shop/@menu_dynamically_added_content"> </iaixsl:if>
<!-- (menu_shoppinglist, 6374c7c8e99458.25728203.8)-->
	<div class="sl_choose sl_dialog">
		<div class="sl_choose__wrapper sl_dialog__wrapper">
			<div class="sl_choose__item --top sl_dialog_close mb-2">
				<strong class="sl_choose__label">Dodaj do ulubionych</strong>
			</div>
			<div class="sl_choose__item --lists" data-empty="false">
				<iaixsl:if test="not(/shop/shopping_lists/list)">
					<iaixsl:attribute name="data-empty">true</iaixsl:attribute>
				</iaixsl:if>
				<div class="sl_choose__list f-group --radio m-0 d-md-flex align-items-md-center justify-content-md-between" data-list_skeleton="true" data-list_id="true" data-shared="true">
					<input type="radio" name="add" class="sl_choose__input f-control" id="slChooseRadioSelect" data-list_position="true"/>
					<label for="slChooseRadioSelect" class="sl_choose__group_label f-label py-4" data-list_position="true">
						<span class="sl_choose__sub d-flex align-items-center">
							<span class="sl_choose__name" data-list_name="true"/>
							<span class="sl_choose__count" data-list_count="true">0</span>
						</span>
					</label>
					<button type="button" class="sl_choose__button --desktop btn --solid">Zapisz</button>
				</div>
				<iaixsl:for-each select="/shop/shopping_lists/list">
					<div class="sl_choose__list f-group --radio m-0 d-md-flex align-items-md-center justify-content-md-between">
						<iaixsl:attribute name="data-list_id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
						<iaixsl:if test="@shared = 'true'">
							<iaixsl:attribute name="data-shared">true</iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:if test="@id = /shop/page/list/@id">
							<iaixsl:attribute name="data-current">true</iaixsl:attribute>
						</iaixsl:if>
						<input type="radio" name="add" class="sl_choose__input f-control">
							<iaixsl:attribute name="id">slChooseRadioSelect<iaixsl:value-of select="position()"/></iaixsl:attribute>
							<iaixsl:if test="position() = 1">
								<iaixsl:attribute name="checked">checked</iaixsl:attribute>
							</iaixsl:if>
						</input>
						<label class="sl_choose__group_label f-label py-4">
							<iaixsl:attribute name="for">slChooseRadioSelect<iaixsl:value-of select="position()"/></iaixsl:attribute>
							<span class="sl_choose__sub d-flex align-items-center">
								<span class="sl_choose__name" data-list_name="true"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
								<span class="sl_choose__count" data-list_count="true"><iaixsl:value-of select="@count"/></span>
							</span>
						</label>
						<button type="button" class="sl_choose__button --desktop btn --solid">Zapisz</button>
					</div>
				</iaixsl:for-each>
			</div>
			<div class="sl_choose__item --create sl_create mt-4">
				<a href="#new" class="sl_create__link  align-items-center">Stwórz nową listę zakupową</a>
				<form class="sl_create__form align-items-center">
					<div class="sl_create__group f-group --small mb-0">
						<input type="text" class="sl_create__input f-control" required="required" id="sl_create_form_input_0"/>
						<label class="sl_create__label f-label" for="sl_create_form_input_0">Nazwa nowej listy</label>
					</div>
					<button type="submit" class="sl_create__button btn --solid ml-2 ml-md-3">Utwórz listę</button>
				</form>
			</div>
			<div class="sl_choose__item --mobile mt-4 d-flex justify-content-center d-md-none">
				<button class="sl_choose__button --mobile btn --solid --large">Zapisz</button>
			</div>
		</div>
	</div>
<!-- (menu_additionalpayments, 6362560c0363e8.68758784.5)-->

<iaixsl:if test="/shop/page/projector/product/smile or /shop/page/basket-details/summary/smile">
  <iaixsl:variable name="smileDeliveryCount"><iaixsl:value-of select="count(/shop/page/projector/product/smile/delivery | /shop/page/basket-details/summary/smile/delivery)"/></iaixsl:variable>

  <template id="smile_template">
    <div class="smile_info">
      <iaixsl:attribute name="data-label">Kupujesz i dostawę masz gratis!</iaixsl:attribute>
      <h6 class="headline">
        <span class="headline__name" tabindex="-1">Kupujesz i dostawę masz gratis!</span>
      </h6>
    
      <div class="smile_info__item --smile">
        <img class="smile_info__logo" src="/gfx/standards/smile_logo.svg?r=1778592039" loading="lazy">
          <iaixsl:attribute name="alt">Kupujesz i dostawę masz gratis!</iaixsl:attribute>
        </img>
        <div class="smile_info__sub">
          <span class="smile_info__text">
            dostawy ze sklepów internetowych przy
          </span>
          <strong class="smile_info__strong">
            zamówieniu za
            <span class="smile_info__price"><iaixsl:value-of select="/shop/page/projector/product/smile/delivery/@minprice_formatted | /shop/page/basket-details/summary/smile/delivery/@minprice_formatted"/></span>
            są za darmo.
          </strong>
        </div>
      </div>
    
      <iaixsl:if test="$smileDeliveryCount &gt; 0">
        <iaixsl:variable name="OrlenPaczkaIDSmile">100412</iaixsl:variable>
        <iaixsl:variable name="PaczkomatInpostIDSmile">100209</iaixsl:variable>

        <div class="smile_info__item --pickup">
          <span class="smile_info__text">
            Darmowa dostawa obejmuje dostarczenie przesyłki do

            <iaixsl:for-each select="/shop/page/projector/product/smile/delivery | /shop/page/basket-details/summary/smile/delivery">
              <iaixsl:variable name="deliverySeparator"><iaixsl:choose>
                <iaixsl:when test="$smileDeliveryCount &gt; 2 and position() &lt; ($smileDeliveryCount - 1)">, </iaixsl:when>
                <iaixsl:when test="$smileDeliveryCount &gt; 1 and position() = ($smileDeliveryCount - 1)"> lub </iaixsl:when>
              </iaixsl:choose></iaixsl:variable>

              <iaixsl:choose>
                <iaixsl:when test="@short_name and @is_pickup">
                  <iaixsl:choose>
                    <iaixsl:when test="@is_pickup = 'yes'">punktu odbioru </iaixsl:when>
                    <iaixsl:when test="@is_pickup = 'no'">Paczkomatu </iaixsl:when>
                  </iaixsl:choose><iaixsl:value-of select="@short_name"/><iaixsl:value-of select="$deliverySeparator"/>
                </iaixsl:when>
                <iaixsl:otherwise>
                  <iaixsl:if test="@id = $OrlenPaczkaIDSmile">
                    punktu odbioru Orlen Paczka<iaixsl:value-of select="$deliverySeparator"/>
                  </iaixsl:if>
                  <iaixsl:if test="@id = $PaczkomatInpostIDSmile">
                    Paczkomatu InPost<iaixsl:value-of select="$deliverySeparator"/>
                  </iaixsl:if>
                </iaixsl:otherwise>
              </iaixsl:choose>
            </iaixsl:for-each>
          </span>

          <div class="smile_info__pickup_list">
            <iaixsl:for-each select="/shop/page/projector/product/smile/delivery | /shop/page/basket-details/summary/smile/delivery">
              <img class="smile_info__pickup_logo" src="{@icon}" loading="lazy" alt="{@name}"/>
            </iaixsl:for-each>
          </div>
        </div>
      </iaixsl:if>

      <div class="smile_info__item --footer">
        <span class="smile_info__iai">Smile to usługa</span>
        <img src="/gfx/standards/Idosell_logo_black.svg?r=1778592039" loading="lazy">
          <iaixsl:attribute name="alt">Smile to usługa</iaixsl:attribute>
        </img>
      </div>
    </div>
  </template>
</iaixsl:if>

<iaixsl:if test="/shop/page/projector/product/smile/@native = 'true'"/>
<iaixsl:if test="/shop/page/basket-details/summary/smile/@native = 'true'"/>

<!-- (menu_maps, 63764495e0cb08.91568922.4)--><!-- (menu_slider_modules, 6655a6e6f03996.64967288.4)-->






<!-- (hotspots_javascript_css, 66601d18ceb086.82488865.12)-->



<!-- (jquery, 66868303e83295.79660983.2)-->
		</footer>
	</iaixsl:if>
	<iaixsl:variable name="projector_script_bottom">true</iaixsl:variable>
	<iaixsl:if test="/shop/page/@type = 'main' or /shop/page/@type = 'search' or /shop/page/@type = 'place-order' or /shop/page/@type = 'noproduct' or ($projector_script_bottom and /shop/page/@type = 'projector')">
		<script src="/gfx/pol/jquery.js.gzip?r=1778592114"></script>
		<iaixsl:choose>
			<iaixsl:when test="/shop/@preview &gt; 0">
				<script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
			</iaixsl:when>
			<iaixsl:otherwise>
				
			</iaixsl:otherwise>
		</iaixsl:choose>

		
		
<iaixsl:choose>
    <iaixsl:when test="/shop/@preview &gt; 0"><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/common_shop.js?r=1778592114</iaixsl:attribute></script></iaixsl:when>
    <iaixsl:otherwise><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/common_shop.js.gzip?r=1778592114</iaixsl:attribute></script></iaixsl:otherwise>
</iaixsl:choose>


		
		
	</iaixsl:if>

	
	<script src="/gfx/pol/envelope.js.gzip?r=1778592114"></script><script src="/gfx/pol/menu_suggested_shop_for_language.js.gzip?r=1778592114"></script><script src="/gfx/pol/add_codes_to_basket.js.gzip?r=1778592114"></script><script src="/gfx/pol/menu_shoppinglist.js.gzip?r=1778592114"></script><script src="/gfx/pol/menu_additionalpayments.js.gzip?r=1778592114"></script><script src="/gfx/pol/hotspots_javascript.js.gzip?r=1778592114"></script><script src="/gfx/pol/hotspots_slider.js.gzip?r=1778592114"></script><script src="/gfx/pol/hotspots_add_to_basket.js.gzip?r=1778592114"></script><script src="/gfx/pol/basketedit_productslist.js.gzip?r=1778592114"></script><script src="/gfx/pol/cop_modules_basketedit.js.gzip?r=1778592114"></script><script src="/gfx/pol/cop_modules_literals.js.gzip?r=1778592114"></script><script src="/gfx/pol/cop_modules.js.gzip?r=1778592114"></script><script src="/gfx/pol/cop_modules_rebate_code.js.gzip?r=1778592114"></script><script src="/gfx/pol/cop_modules_summary.js.gzip?r=1778592114"></script><script src="/gfx/pol/basketedit_additional_info.js.gzip?r=1778592114"></script><script src="/gfx/pol/division.js.gzip?r=1778592114"></script><script src="/gfx/pol/basketedit_rebates.js.gzip?r=1778592114"></script><script src="/gfx/pol/basketedit_gifts.js.gzip?r=1778592114"></script>

	
	<iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>

	<script>app_shop.runApp();</script>
	
	<iaixsl:if test="/shop/page/seolink_with_language_directory"/>

	<iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
		<iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
	</iaixsl:if>
</iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-backslash"><iaixsl:param name="str" select="."/><iaixsl:choose><iaixsl:when test="contains($str, '\')"><iaixsl:value-of select="concat(substring-before($str, '\'), '\\' )"/><iaixsl:call-template name="escape-backslash"><iaixsl:with-param name="str" select="substring-after($str, '\')"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape_backslash"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:choose><iaixsl:when test="not($escape_backslash)"><iaixsl:value-of select="$str"/></iaixsl:when><iaixsl:otherwise><iaixsl:call-template name="escape-backslash"><iaixsl:with-param name="str" select="$str"/></iaixsl:call-template></iaixsl:otherwise></iaixsl:choose></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>