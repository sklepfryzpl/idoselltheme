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
    <iaixsl:when test="/shop/@preview &gt; 0"><link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/projector_style.css?r=779111371</iaixsl:attribute></link></iaixsl:when>
    <iaixsl:otherwise><link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/projector_style.css.gzip?r=779111371</iaixsl:attribute></link></iaixsl:otherwise>
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
				
				<iaixsl:choose>
					<iaixsl:when test="/shop/@preview &gt; 0">
						<script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
					</iaixsl:when>
					<iaixsl:otherwise>
						
					</iaixsl:otherwise>
				</iaixsl:choose>
				
				
<iaixsl:choose>
    <iaixsl:when test="/shop/@preview &gt; 0"><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/projector_shop.js?r=1778592114</iaixsl:attribute></script></iaixsl:when>
    <iaixsl:otherwise><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/projector_shop.js.gzip?r=1778592114</iaixsl:attribute></script></iaixsl:otherwise>
</iaixsl:choose>

				
				<script src="/gfx/pol/projector_photos_core.js.gzip?r=1778592114" type="module"></script>
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

        <!-- (projector_productversions, 60dd8e800ee9c0.60080458.4)-->
	<iaixsl:if test="compare/@count &gt; 0 or /shop/page/@cache_html = 'true'">
		<div id="menu_compare_product" class="compare mb-2 pt-sm-3 pb-sm-3 mb-sm-3">
			<iaixsl:if test="/shop/page/@cache_html = 'true'">
				<iaixsl:attribute name="style">display: none;</iaixsl:attribute>
			</iaixsl:if>

			<div class="compare__label d-none d-sm-block">Dodane do porównania</div>

			<div class="compare__sub" tabindex="-1">
				<iaixsl:for-each select="compare/product">
					<a class="compare__item btn --solid --icon-right icon-x" tabindex="-1">
						<iaixsl:attribute name="href"><iaixsl:value-of select="@removelink"/></iaixsl:attribute>
						<iaixsl:attribute name="data-remove_link"><iaixsl:value-of select="@removelink"/></iaixsl:attribute>
						<iaixsl:attribute name="data-link"><iaixsl:value-of select="@link"/></iaixsl:attribute>
						<iaixsl:attribute name="aria-label"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
						<iaixsl:choose>
							<iaixsl:when test="iconsmall_second and not(iconsmall_second = '' or iconsmall_second = '/')">
								<picture>
									<source type="image/webp">
										<iaixsl:attribute name="srcset"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
									</source>
									<img>
										<iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall_second"/></iaixsl:attribute>
										<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
									</img>
								</picture>
							</iaixsl:when>
							<iaixsl:otherwise>
								<img>
									<iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
									<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
								</img>
							</iaixsl:otherwise>
						</iaixsl:choose>
					</a>
				</iaixsl:for-each>
			</div>

			<div class="compare__buttons">
				<iaixsl:if test="compare/@count = 1">
					<iaixsl:attribute name="class">compare__buttons --one</iaixsl:attribute>
				</iaixsl:if>
				<iaixsl:if test="compare/@count &gt; 1 or /shop/page/@cache_html = 'true'">
					<a class="compare__button btn --solid --secondary" href="product-compare.php">
						<iaixsl:if test="/shop/action/productCompare/@url">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/productCompare/@url"/></iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:attribute name="title">Porównaj wszystkie produkty</iaixsl:attribute>
						<iaixsl:attribute name="target">_blank</iaixsl:attribute>
						<span>Porównaj produkty </span><span class="d-sm-none">(<iaixsl:value-of select="compare/@count"/>)</span>
					</a>
				</iaixsl:if>

				<a class="compare__button --remove btn d-none d-sm-block">
					<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="/shop/action/settings/@url"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:when><iaixsl:otherwise>settings.php</iaixsl:otherwise></iaixsl:choose>?comparers=remove&amp;product=<iaixsl:choose><iaixsl:when test="/shop/page/@cache_html = 'true'">###</iaixsl:when><iaixsl:otherwise><iaixsl:for-each select="compare/product"><iaixsl:value-of select="@id"/><iaixsl:if test="not(count(../product) = position())">,</iaixsl:if></iaixsl:for-each></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>

					<iaixsl:attribute name="title">Usuń wszystkie produkty</iaixsl:attribute>
					Usuń produkty
				</a>
			</div>

			<iaixsl:if test="/shop/page/@cache_html = 'true'">
				<script>var cache_html = true;</script>
			</iaixsl:if>
		</div>
	</iaixsl:if>
<!-- (projector_photos, 6655993c9368a7.66419467.9)-->

  
  
  <iaixsl:variable name="GalleryThumbnailsCount">5</iaixsl:variable>

  
  <iaixsl:variable name="GalleryThumbnailsEnable">true</iaixsl:variable>

  
  <iaixsl:variable name="GalleryThumbnailsSlider">false</iaixsl:variable>

  
  <iaixsl:variable name="GalleryThumbnailsArrows">false</iaixsl:variable>

  
  <iaixsl:variable name="GalleryThumbnailsHorizontal">false</iaixsl:variable>

  
  <iaixsl:variable name="GallerySliderEnable">true</iaixsl:variable>

  
  <iaixsl:variable name="GalleryCenteredSlides">false</iaixsl:variable>

  
  <iaixsl:variable name="GalleryFadeEffect">true</iaixsl:variable>

  
  <iaixsl:variable name="GalleryFreeMode">false</iaixsl:variable>



<section id="projector_photos" class="photos" data-thumbnails="false" data-thumbnails-count="{$GalleryThumbnailsCount}" data-thumbnails-horizontal="{$GalleryThumbnailsHorizontal}" data-thumbnails-arrows="{$GalleryThumbnailsArrows}" data-thumbnails-slider="{$GalleryThumbnailsSlider}" data-thumbnails-enable="{$GalleryThumbnailsEnable}" data-slider-fade-effect="{$GalleryFadeEffect}" data-slider-enable="{$GallerySliderEnable}" data-slider-freemode="{$GalleryFreeMode}" data-slider-centered="{$GalleryCenteredSlides}">
  <iaixsl:choose>
    <iaixsl:when test="(count(/shop/page/projector/product/enclosures/images/enclosure) &gt; 0) or /shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
      
      <iaixsl:variable name="enclosureCount"><iaixsl:value-of select="count(/shop/page/projector/product/enclosures/images/enclosure)"/></iaixsl:variable>
      
      <iaixsl:variable name="bundledCount"><iaixsl:value-of select="count(/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon])"/></iaixsl:variable>
      
      <iaixsl:variable name="videoCount"><iaixsl:choose><iaixsl:when test="/shop/page/projector/product/enclosures/video/item">1</iaixsl:when><iaixsl:otherwise>0</iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
      
      <iaixsl:variable name="imagesSum"><iaixsl:value-of select="$enclosureCount + $bundledCount + $videoCount"/></iaixsl:variable>
      
      <iaixsl:variable name="thumbnailsCountVideoDiff"><iaixsl:value-of select="$GalleryThumbnailsCount - $videoCount"/></iaixsl:variable>
      
      <iaixsl:variable name="shouldDisplayMoreButton"><iaixsl:if test="$imagesSum &gt; $thumbnailsCountVideoDiff">true</iaixsl:if></iaixsl:variable>
      
      <iaixsl:variable name="imagesDiff"><iaixsl:choose>
        <iaixsl:when test="$shouldDisplayMoreButton = 'true' and $GalleryThumbnailsSlider = 'false'"><iaixsl:value-of select="$imagesSum - $GalleryThumbnailsCount + 1"/></iaixsl:when>
        <iaixsl:otherwise><iaixsl:value-of select="$imagesSum - $GalleryThumbnailsCount"/></iaixsl:otherwise>
      </iaixsl:choose></iaixsl:variable>

      <iaixsl:if test="(($imagesSum &gt; 1) or ($videoCount = '1'))">
        
        <iaixsl:variable name="hiddenThumbnailsStartingIndex"><iaixsl:choose>
          <iaixsl:when test="$GalleryThumbnailsSlider = 'true'"><iaixsl:value-of select="$GalleryThumbnailsCount"/></iaixsl:when>
          
          <iaixsl:when test="$shouldDisplayMoreButton = 'true' and $GalleryThumbnailsSlider = 'false'"><iaixsl:value-of select="$thumbnailsCountVideoDiff - 1"/></iaixsl:when>
          <iaixsl:otherwise><iaixsl:value-of select="$GalleryThumbnailsCount"/></iaixsl:otherwise>
        </iaixsl:choose></iaixsl:variable>

        <iaixsl:attribute name="data-thumbnails">true</iaixsl:attribute>

        
        <div id="photos_nav" class="photos__nav" style="--thumbnails-count: {$GalleryThumbnailsCount};" data-more-slides="{$imagesDiff}">
          
          <div class="swiper-button-prev"><i class="icon-angle-left"/></div>

          
          <div id="photos_nav_list" thumbsSlider="" class="photos__nav_wrapper swiper swiperThumbs">
            
            <div class="swiper-wrapper">
              <iaixsl:for-each select="page/projector/product/enclosures/images/enclosure">
                <iaixsl:variable name="hiddenSlideClass"><iaixsl:if test="((position() - 1) &gt;= $hiddenThumbnailsStartingIndex)">--hidden-slide</iaixsl:if></iaixsl:variable>

                <figure class="photos__figure --nav swiper-slide {$hiddenSlideClass}" data-slide-index="{position() - 1}">
                  <iaixsl:choose>
                    
                    <iaixsl:when test="@icon_second and not(@icon_second = '' or @icon_second = '/')">
                      <picture>
                        <source type="image/webp" srcset="{@icon}"/>
                        <img class="photos__photo --nav" width="{@icon_width}" height="{@icon_height}" src="{@icon_second}" loading="lazy">
                          <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>
                        </img>
                      </picture>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                      <img class="photos__photo --nav" width="{@icon_width}" height="{@icon_height}" src="{@icon}" loading="lazy">
                        <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>
                      </img>
                    </iaixsl:otherwise>
                  </iaixsl:choose>
                </figure>
              </iaixsl:for-each>

              <iaixsl:for-each select="page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
                <iaixsl:variable name="positionCount"><iaixsl:value-of select="$enclosureCount + position()"/></iaixsl:variable>
                <iaixsl:variable name="hiddenSlideClass"><iaixsl:if test="($positionCount - 1) &gt;= $hiddenThumbnailsStartingIndex">--hidden-slide</iaixsl:if></iaixsl:variable>

                <figure class="photos__figure --nav swiper-slide {$hiddenSlideClass}" data-slide-index="{$positionCount - 1}">
                  <iaixsl:choose>
                    
                    <iaixsl:when test="enclosures/images/enclosure[1]/@icon_second and not(enclosures/images/enclosure[1]/@icon_second = '' or enclosures/images/enclosure[1]/@icon_second = '/')">
                      <picture>
                        <source type="image/webp" srcset="{enclosures/images/enclosure[1]/@icon}"/>
                        <img class="photos__photo --nav" src="{enclosures/images/enclosure[1]/@icon_second}" width="{enclosures/images/enclosure[1]/@icon_width}" height="{enclosures/images/enclosure[1]/@icon_height}" loading="lazy">
                          <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
                        </img>
                      </picture>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                      <img class="photos__photo --nav" src="{enclosures/images/enclosure[1]/@icon}" width="{enclosures/images/enclosure[1]/@icon_width}" height="{enclosures/images/enclosure[1]/@icon_height}" loading="lazy">
                        <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
                      </img>
                    </iaixsl:otherwise>
                  </iaixsl:choose>
                </figure>
              </iaixsl:for-each>

              <iaixsl:if test="/shop/page/projector/product/enclosures/video/item">
                <figure class="photos__figure --nav --video swiper-slide">
                  <button type="button" class="photos__link --nav --video" data-slide-index="{$imagesSum - 1}"/>
                </figure>
              </iaixsl:if>

              <iaixsl:if test="($shouldDisplayMoreButton = 'true') and ($imagesDiff &gt; 0) and ($GalleryThumbnailsSlider = 'false')">
                <figure class="photos__figure --nav --more swiper-slide swiper-no-swiping">
                  <button class="photos__link" type="button">
                    <span class="photos__more_top">+<span class="photos__more_count"><iaixsl:value-of select="$imagesDiff"/></span></span>
                    <span class="photos__more_bottom">więcej</span>
                  </button>
                </figure>
              </iaixsl:if>
            </div>
          </div>

          
          <div class="swiper-button-next"><i class="icon-angle-right"/></div>
          <div class="photos__nav_next"><i class="icon-angle-down"/></div>
        </div>
      </iaixsl:if>

      
      <div id="photos_slider" class="photos__slider swiper" data-skeleton="true" data-photos-count="{$imagesSum}">
        
        <div class="galleryNavigation --prev">
          <div class="swiper-button-prev --rounded"><i class="icon-angle-left"/></div>
        </div>

        <div class="photos___slider_wrapper swiper-wrapper">
          <iaixsl:for-each select="page/projector/product/enclosures/images/enclosure">
            <iaixsl:variable name="imgNotLoaded"><iaixsl:if test="not(position() = 1)">slide-lazy</iaixsl:if></iaixsl:variable>
            <figure class="photos__figure swiper-slide {$imgNotLoaded}" data-slide-index="{position() - 1}">
							<iaixsl:if test="position() = 1">
								<iaixsl:attribute name="tabindex">0</iaixsl:attribute>
							</iaixsl:if>
              <iaixsl:choose>
                
                <iaixsl:when test="@medium_second and not(@medium_second = '' or @medium_second = '/')">
                  <picture>
                    <source type="image/webp" srcset="{@medium}" data-img_high_res_webp="{@url}"/>

                    <img class="photos__photo" width="{@medium_width}" height="{@medium_height}" src="{@medium_second}">
                      <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>

                      <iaixsl:if test="@url_second and not(@url_second = '' or @url_second = '/')">
                        <iaixsl:attribute name="data-img_high_res"><iaixsl:value-of disable-output-escaping="yes" select="@url_second"/></iaixsl:attribute>
                      </iaixsl:if>

                      <iaixsl:if test="not(position() = 1)">
                        <iaixsl:attribute name="loading">lazy</iaixsl:attribute>
                      </iaixsl:if>
                    </img>
                  </picture>
                </iaixsl:when>
                <iaixsl:otherwise>
                  <img class="photos__photo" width="{@medium_width}" height="{@medium_height}" src="{@medium}" data-img_high_res="{@url}">
                    <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>

                    <iaixsl:if test="not(position() = 1)">
                      <iaixsl:attribute name="loading">lazy</iaixsl:attribute>
                    </iaixsl:if>
                  </img>
                </iaixsl:otherwise>
              </iaixsl:choose>
              <iaixsl:if test="not(position() = 1)">
                <div class="swiper-lazy-preloader"/>
              </iaixsl:if>
            </figure>
          </iaixsl:for-each>

          <iaixsl:for-each select="page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
            <iaixsl:variable name="imgNotLoaded"><iaixsl:if test="not(position() = 1)">slide-lazy</iaixsl:if></iaixsl:variable>
            <figure class="photos__figure swiper-slide {$imgNotLoaded}" data-slide-index="{$enclosureCount + position() - 1}">
							<iaixsl:if test="position() = 1 and not(page/projector/product/enclosures/images/enclosure)">
								<iaixsl:attribute name="tabindex">0</iaixsl:attribute>
							</iaixsl:if>
              <iaixsl:choose>
                
                <iaixsl:when test="enclosures/images/enclosure[1]/@medium_second and not(enclosures/images/enclosure[1]/@medium_second = '' or enclosures/images/enclosure[1]/@medium_second = '/')">
                  <picture>
                    <source type="image/webp" srcset="{enclosures/images/enclosure[1]/@medium}" data-img_high_res_webp="{enclosures/images/enclosure[1]/@url}"/>

                    <img class="photos__photo" width="{enclosures/images/enclosure[1]/@width}" height="{enclosures/images/enclosure[1]/@height}" src="{enclosures/images/enclosure[1]/@medium_second}">
                      <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>

                      <iaixsl:if test="enclosures/images/enclosure[1]/@url_second and not(enclosures/images/enclosure[1]/@url_second = '' or enclosures/images/enclosure[1]/@url_second = '/')">
                        <iaixsl:attribute name="data-img_high_res"><iaixsl:value-of disable-output-escaping="yes" select="enclosures/images/enclosure[1]/@url_second"/></iaixsl:attribute>
                      </iaixsl:if>

                      <iaixsl:if test="not(page/projector/product/enclosures/images/enclosure) and not(position() = 1)">
                        <iaixsl:attribute name="loading">lazy</iaixsl:attribute>
                      </iaixsl:if>
                    </img>
                  </picture>
                </iaixsl:when>
                <iaixsl:otherwise>
                  <img class="photos__photo" width="{enclosures/images/enclosure[1]/@width}" height="{enclosures/images/enclosure[1]/@height}" src="{enclosures/images/enclosure[1]/@medium}" data-img_high_res="{enclosures/images/enclosure[1]/@url}">
                    <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>

                    <iaixsl:if test="not(page/projector/product/enclosures/images/enclosure) and not(position() = 1)">
                      <iaixsl:attribute name="loading">lazy</iaixsl:attribute>
                    </iaixsl:if>
                  </img>
                </iaixsl:otherwise>
              </iaixsl:choose>
              <iaixsl:if test="not(position() = 1)">
                <div class="swiper-lazy-preloader"/>
              </iaixsl:if>
            </figure>
          </iaixsl:for-each>
          <iaixsl:if test="/shop/page/projector/product/enclosures/video/item">
            <figure class="photos__figure swiper-slide slide-lazy --video" data-slide-index="{$enclosureCount + $bundledCount}">
              <video autoplay="autoplay" data-src="{/shop/page/projector/product/enclosures/video/item/@url}" playsinline="playsinline"/>

              <iaixsl:if test="not(position() = 1)">
                <div class="swiper-lazy-preloader"/>
              </iaixsl:if>
            </figure>
          </iaixsl:if>
        </div>

        
        <div class="galleryPagination">
          <div class="swiper-pagination"/>
        </div>

        
        <div class="galleryNavigation">
          <div class="swiper-button-next --rounded"><i class="icon-angle-right"/></div>
        </div>
      </div>
    </iaixsl:when>
    <iaixsl:otherwise>
      <div id="photos_default" class="photos__default d-flex justify-content-center">
        <figure class="photos__default_figure">
          <iaixsl:choose>
            
            <iaixsl:when test="/shop/page/projector/product/icon_second and not(/shop/page/projector/product/icon_second = '' or /shop/page/projector/product/icon_second = '/')">
              <picture>
                <source type="image/webp" srcset="{/shop/page/projector/product/icon}"/>
                <img class="photos__default_img" src="{/shop/page/projector/product/icon_second}">
                  <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>
                </img>
              </picture>
            </iaixsl:when>
            <iaixsl:otherwise>
              <img class="photos__default_img" src="{/shop/page/projector/product/icon}">
                <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>
              </img>
            </iaixsl:otherwise>
          </iaixsl:choose>
        </figure>
      </div>
    </iaixsl:otherwise>
  </iaixsl:choose>
</section>

<template id="GalleryModalTemplate">
  <div class="gallery_modal__wrapper" id="galleryModal">
    <div class="gallery_modal__header">
      
      <div class="gallery_modal__counter"/>

      
      <div class="gallery_modal__name">
        <iaixsl:if test="/shop/page/projector/product/name">
          <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/>
        </iaixsl:if>
      </div>
    </div>

    
    <div class="gallery_modal__sliders photos --gallery-modal"/>

    
    <div class="galleryNavigation">
      <div class="swiper-button-prev --rounded"><i class="icon-angle-left"/></div>
      <div class="swiper-button-next --rounded"><i class="icon-angle-right"/></div>
    </div>
  </div>
</template>

<!-- (projector_productname, 60dd8e8d6af000.47870799.9)-->
	
	<iaixsl:variable name="addcompare_txt">+ Dodaj do porównania</iaixsl:variable>

	<section id="projector_productname" class="product_name mb-4 mb-lg-2">
		
		
		<iaixsl:variable name="var_omnibus_rebate_code"><iaixsl:if test="/shop/rebatecode/@activate_omnibus = 'true' and /shop/page/projector/product/price/@rebate_code_active = 'y'">true</iaixsl:if></iaixsl:variable>
		<iaixsl:variable name="var_new_price_date"><iaixsl:choose>
			<iaixsl:when test="$var_omnibus_rebate_code != ''"/>
			<iaixsl:otherwise><iaixsl:value-of select="/shop/page/projector/product/sizes[size/price/@omnibus_new_price_effective_until]"/></iaixsl:otherwise>
		</iaixsl:choose></iaixsl:variable>
		<iaixsl:variable name="var_omnibus_higher"><iaixsl:if test="/shop/page/projector/product/sizes[size/price/@omnibus_price_is_higher_than_selling_price] and $var_new_price_date = ''">true</iaixsl:if></iaixsl:variable>
		<iaixsl:variable name="var_omnibus_lower"><iaixsl:if test="/shop/page/projector/product/sizes[size/price/@omnibus_price_is_higher_than_selling_price] or $var_new_price_date != ''">true</iaixsl:if></iaixsl:variable>
		<iaixsl:variable name="var_omnibus"><iaixsl:if test="/shop/@omnibus = 1 and ($var_omnibus_rebate_code != '' or $var_omnibus_higher != '' or $var_omnibus_lower != '')">true</iaixsl:if></iaixsl:variable>
		
		<iaixsl:if test="/shop/page/projector/product/@promotion or /shop/page/projector/product/@new or /shop/page/projector/product/@bestseller or /shop/page/projector/product/@discount or (/shop/page/projector/product/@distinguished and not(/shop/page/projector/product/@bestseller and /shop/page/projector/product/@discount)) or /shop/page/projector/product/subscriptions/subscription or $var_omnibus != ''">
			<div class="product_name__block --label mb-1">
				<iaixsl:if test="$var_omnibus != '' and not(/shop/page/projector/product/sizes/prices and /shop/page/projector/product/sizes/prices/@maxprice_formatted != /shop/page/projector/product/sizes/prices/@minprice_formatted)">
					<iaixsl:attribute name="class">product_name__block --label mb-1 --omnibus<iaixsl:if test="/shop/page/projector/product/price/@omnibus_price_is_higher_than_selling_price = 'true'"> --omnibus-higher</iaixsl:if></iaixsl:attribute>
				</iaixsl:if>
				<strong class="label_icons">
					<iaixsl:if test="$var_omnibus_rebate_code != ''">
						<span class="label --code --omnibus">
							Kod rabatowy
						</span>
					</iaixsl:if>
					<iaixsl:if test="$var_omnibus_higher != '' and $var_omnibus_rebate_code = ''">
						<span class="label --promo --omnibus">
							Super Cena!
						</span>
					</iaixsl:if>
					<iaixsl:if test="$var_omnibus_lower != '' and $var_omnibus_rebate_code = ''">
						<span class="label --bargain --omnibus">
							Super Okazja!
						</span>
					</iaixsl:if>
					<iaixsl:if test="/shop/page/projector/product/subscriptions/subscription">
						<span class="label --subscription">
							Subskrypcja
						</span>
					</iaixsl:if>
					<iaixsl:if test="/shop/page/projector/product/@new">
						<span class="label --new">
							Nowość
						</span>
					</iaixsl:if>
					<iaixsl:choose>
						<iaixsl:when test="$var_omnibus != '' and /shop/page/projector/product/@new">
						</iaixsl:when>
						<iaixsl:when test="$var_omnibus != '' or /shop/page/projector/product/@new">
							<iaixsl:choose>
								<iaixsl:when test="/shop/page/projector/product/@bestseller">
									<span class="label --bestseller">
										Nasz bestseller
									</span>
								</iaixsl:when>
								<iaixsl:when test="/shop/page/projector/product/@discount">
									<span class="label --discount">
										Promocja!
									</span>
								</iaixsl:when>
								<iaixsl:when test="/shop/page/projector/product/@distinguished">
									<span class="label --distinguished">
										Polecany
									</span>
								</iaixsl:when>
							</iaixsl:choose>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:if test="/shop/page/projector/product/@bestseller">
								<span class="label --bestseller">
									Nasz bestseller
								</span>
							</iaixsl:if>
							<iaixsl:if test="/shop/page/projector/product/@discount">
								<span class="label --discount">
									Promocja!
								</span>
							</iaixsl:if>
							<iaixsl:if test="/shop/page/projector/product/@distinguished and not(/shop/page/projector/product/@bestseller and /shop/page/projector/product/@discount)">
								<span class="label --distinguished">
									Polecany
								</span>
							</iaixsl:if>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</strong>
			</div>
		</iaixsl:if>

		
		<div class="product_name__block --name mb-2 d-sm-flex justify-content-sm-between mb-sm-3">
			
			<h1 class="product_name__name m-0">
				<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/>
			</h1>

			
			<iaixsl:if test="/shop/page/projector/product/firm/@icon and not(/shop/page/projector/product/firm/@icon = '')">
				<div class="product_name__firm_logo d-none d-sm-flex justify-content-sm-end align-items-sm-center ml-sm-2">
					<a class="firm_logo">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/firm/@productslink"/></iaixsl:attribute>

						<img class="b-lazy" src="/gfx/standards/loader.gif?r=1778592039">
							<iaixsl:attribute name="data-src"><iaixsl:value-of select="/shop/page/projector/product/firm/@icon"/></iaixsl:attribute>
							<iaixsl:attribute name="title"><iaixsl:value-of select="/shop/page/projector/product/firm/@name"/></iaixsl:attribute>
							<iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/projector/product/firm/@name"/></iaixsl:attribute>
						</img>
					</a>
				</div>
			</iaixsl:if>
		</div>

		
		<div class="product_name__block --links d-lg-flex flex-lg-wrap justify-content-lg-end align-items-lg-center">
			
			<iaixsl:if test="/shop/page/projector/comments/@avg &gt; 0">
				<div class="product_name__notes mb-4 mb-lg-2 mr-lg-auto">
					<span class="product_name__note">
						<i class="icon-star">
							<iaixsl:if test="/shop/page/projector/comments/@avg &gt; 0.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
						</i>
						<i class="icon-star">
							<iaixsl:if test="/shop/page/projector/comments/@avg &gt; 1.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
						</i>
						<i class="icon-star">
							<iaixsl:if test="/shop/page/projector/comments/@avg &gt; 2.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
						</i>
						<i class="icon-star">
							<iaixsl:if test="/shop/page/projector/comments/@avg &gt; 3.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
						</i>
						<i class="icon-star">
							<iaixsl:if test="/shop/page/projector/comments/@avg &gt; 4.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
						</i>
					</span>
					<span class="product_name__note_text"><iaixsl:value-of select="/shop/page/projector/comments/@avg"/>/5.00</span>
					<a class="product_name__note_link" href="#opinions_section">Opinie (<iaixsl:value-of select="/shop/page/projector/comments/@all"/>)</a>
				</div>
			</iaixsl:if>

			
			<div class="product_name__actions d-flex justify-content-between align-items-center mx-n1 mb-lg-2 flex-lg-grow-1">
				
				<iaixsl:if test="/shop/compare/@active = 'y' and $addcompare_txt">
					<iaixsl:choose>
						<iaixsl:when test="/shop/page/projector/product/@id = /shop/compare/product/@id">
							<a class="product_name__action --compare --remove px-1">
								<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="/shop/action/settings/@url"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:when><iaixsl:otherwise>settings.php</iaixsl:otherwise></iaixsl:choose>?comparers=remove&amp;product=<iaixsl:value-of select="/shop/page/projector/product/@id"/></iaixsl:attribute>
								<iaixsl:attribute name="title">Kliknij, aby usunąć produkt z porównywarki</iaixsl:attribute>
								- Usuń z porównania
							</a>
						</iaixsl:when>
						<iaixsl:otherwise>
							<a class="product_name__action --compare --add px-1">
								<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="/shop/action/settings/@url"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:when><iaixsl:otherwise>settings.php</iaixsl:otherwise></iaixsl:choose>?comparers=add&amp;product=<iaixsl:value-of select="/shop/page/projector/product/@id"/></iaixsl:attribute>
								<iaixsl:attribute name="title">Kliknij, aby dodać produkt do porównania</iaixsl:attribute>
								<span><iaixsl:value-of select="$addcompare_txt"/></span>
							</a>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</iaixsl:if>

				
				<a class="product_name__action --shopping-list px-1 d-flex align-items-center" href="#addToShoppingList">
					<iaixsl:attribute name="title">Kliknij, aby dodać produkt do ulubiony</iaixsl:attribute>
					<span>Zapisz w ulubionych</span>
				</a>
			</div>
		</div>

		
		<iaixsl:if test="/shop/page/projector/product/description and page/projector/product/description != ''">
			<div class="product_name__block --description mt-3 mt-lg-1 mb-lg-2">
				<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/description/text()"/>
			</div>
		</iaixsl:if>
	</section>
<!-- (projector_producttraits, 60dd8e8da24dc8.68684614.6)-->
	<iaixsl:variable name="howManyTraits">5</iaixsl:variable>
	<iaixsl:if test="/shop/page/projector/product/traits/trait[not(contains(@groupdescription, 'gs1:'))]">
		<section id="projector_producttraits" class="traits mb-4">
			<div class="traits__wrapper">
				<iaixsl:for-each select="/shop/page/projector/product/traits/trait[not(contains(@groupdescription, 'gs1:'))]">
					<iaixsl:if test="not(@groupid = preceding-sibling::trait/@groupid)">
						<div class="traits__item mb-2">
							<iaixsl:attribute name="data-hide"><iaixsl:choose><iaixsl:when test="position() &gt; $howManyTraits">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>
							<span class="traits__label mr-2"><iaixsl:value-of disable-output-escaping="yes" select="@groupdescription"/></span>
							<span class="traits__values d-inline-flex flex-wrap">
								<iaixsl:choose>
									<iaixsl:when test="@gfx">
										<a class="traits__value --gfx">
											<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
											<img class="traits__gfx b-lazy" src="/gfx/standards/loader.gif?r=1778592039">
												<iaixsl:attribute name="data-src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
												<iaixsl:attribute name="alt"><iaixsl:value-of select="@traitdescription"/></iaixsl:attribute>
											</img>
										</a>
									</iaixsl:when>
									<iaixsl:otherwise>
										<a class="traits__value">
											<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
											<iaixsl:value-of select="@traitdescription"/>
										</a>
									</iaixsl:otherwise>
								</iaixsl:choose>
								<iaixsl:if test="@groupid = following-sibling::trait/@groupid">
									<iaixsl:variable name="temporaryGroup"><iaixsl:value-of select="@groupid"/></iaixsl:variable>
									<iaixsl:for-each select="following-sibling::trait[(@groupid = $temporaryGroup)]">
										<iaixsl:choose>
											<iaixsl:when test="@gfx">
												<a class="traits__value --gfx">
													<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
													<img class="traits__gfx b-lazy" src="/gfx/standards/loader.gif?r=1778592039">
														<iaixsl:attribute name="data-src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
														<iaixsl:attribute name="alt"><iaixsl:value-of select="@traitdescription"/></iaixsl:attribute>
													</img>
												</a>
											</iaixsl:when>
											<iaixsl:otherwise>
												<a class="traits__value">
													<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
													<iaixsl:value-of select="@traitdescription"/>
												</a>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</iaixsl:for-each>
								</iaixsl:if>
							</span>
						</div>
					</iaixsl:if>
				</iaixsl:for-each>
			</div>
			<iaixsl:if test="count(/shop/page/projector/product/traits/trait[not(contains(@groupdescription, 'gs1:')) and not(@groupid = preceding-sibling::trait/@groupid)]) &gt; $howManyTraits">
				<a href="#showAllTraits" class="traits__all">Pokaż wszystkie</a>
			</iaixsl:if>
		</section>
	</iaixsl:if>
<!-- (projector_details, 6800c5b3079114.82091470.15)-->
<iaixsl:variable name="selectForSizes" select="6"/>
<iaixsl:variable name="selectForVersions" select="6"/>
<iaixsl:variable name="disable_projectorv3_ajax" select="1"/>


<iaixsl:variable name="ProjectorFormID">projector_form</iaixsl:variable>

<iaixsl:variable name="ProjectorPriceType"><iaixsl:choose>
	<iaixsl:when test="/shop/page/@price_type = 'hidden'">gross</iaixsl:when>
	<iaixsl:otherwise><iaixsl:value-of select="/shop/page/@price_type"/></iaixsl:otherwise>
</iaixsl:choose></iaixsl:variable>

<iaixsl:variable name="ProjectorBundleOrConfigurator" select="/shop/page/projector/bundled/product or /shop/page/projector/product/@product_type = 'product_configurable'"/>
<iaixsl:variable name="ProjectorHasVersions" select="(/shop/page/projector/product/versions/@count &gt; 0) and not(count(/shop/page/projector/product/multiversions/multi_version) &gt; 1) and $ProjectorBundleOrConfigurator != 'true'"/>


<iaixsl:variable name="ProjectorExpressCheckoutEnabled" select="'true'"/>




<iaixsl:variable name="ProjectorStatusEnabled" select="'false'"/>

<iaixsl:variable name="ProjectorShippingEnabled" select="'false'"/>
<iaixsl:variable name="ProjectorShippingAlwaysVisible" select="'false'"/>

<iaixsl:variable name="ProjectorReturnsEnabled" select="'true'"/>

<iaixsl:variable name="ProjectorPickupEnabled" select="'true'"/>

<iaixsl:variable name="ProjectorShareEnabled" select="'true'"/>

<iaixsl:variable name="ProjectorSubscriptionEnabled" select="'true'"/>

<iaixsl:variable name="ProjectorSubscriptionCancelEnabled" select="'true'"/>

<iaixsl:variable name="ProjectorSecureShoppingEnabled" select="'true'"/>

<iaixsl:variable name="ProjectorInstallmentsEnabled" select="'true'"/>

<iaixsl:variable name="ProjectorPaypoEnabled" select="'true'"/>

<iaixsl:variable name="ProjectorPointsEnabled" select="'true'"/>

<iaixsl:variable name="ProjectorMultipackEnabled" select="'true'"/>







 <iaixsl:variable name="ProjectorButtonsVariant" select="'range-with-button'"/> 








<script class="ajaxLoad">
	cena_raty = <iaixsl:value-of select="page/projector/product/price/@value"/>;
	client_login = &apos;<iaixsl:choose>
		<iaixsl:when test="basket/@login">true</iaixsl:when>
		<iaixsl:otherwise>false</iaixsl:otherwise>
	</iaixsl:choose>&apos;;
	<iaixsl:if test="/shop/basket/groups/group[details/subscription/@days_in_period]">
		basketProductsSubscriptionPeriod = <iaixsl:value-of select="/shop/basket/groups/group[details/subscription/@days_in_period]/details/subscription/@days_in_period"/>;
	</iaixsl:if>
	client_points = &apos;<iaixsl:value-of select="/shop/basket/@client_points"/>&apos;;
	points_used = &apos;<iaixsl:value-of select="/shop/basket/@points_used"/>&apos;;
	shop_currency = &apos;<iaixsl:value-of select="/shop/currency/@name"/>&apos;;
	trust_level = &apos;<iaixsl:value-of select="/shop/@trust_level"/>&apos;;

	window.product_config = {
		// Czy produkt jest kolekcją
		isCollection: <iaixsl:choose>
			<iaixsl:when test="/shop/page/projector/bundled/@collection = 'true'">true</iaixsl:when>
			<iaixsl:otherwise>false</iaixsl:otherwise>
		</iaixsl:choose>,
		isBundleOrConfigurator: <iaixsl:value-of select="$ProjectorBundleOrConfigurator"/>,
		// Czy produkt zawiera rabat ilościowy
		hasMultiPackRebate: <iaixsl:value-of select="page/projector/product/sizes/size[1]/price/rebateNumber and not((/shop/page/projector/product/@product_type = 'product_virtual') or (/shop/page/projector/product/@product_type = 'product_bundle' and not(count(/shop/page/projector/bundled/product[@product_type = 'product_virtual']) = 0)))"/>,
		// Flaga czy produkt ma ustawione ceny per rozmiar
		hasPricesPerSize: <iaixsl:value-of select="/shop/page/projector/product/sizes/prices and /shop/page/projector/product/sizes/prices/@maxprice_formatted != /shop/page/projector/product/sizes/prices/@minprice_formatted"/>,
		// Flaga czy włączone są subskrypcje
		hasSubscriptionsEnabled: <iaixsl:choose>
			<iaixsl:when test="/shop/page/projector/product/subscriptions/subscription">true</iaixsl:when>
			<iaixsl:otherwise>false</iaixsl:otherwise>
		</iaixsl:choose>,
		// Typ subskrypcji
		subscriptionType: <iaixsl:choose>
			<iaixsl:when test="/shop/page/projector/product/subscriptions/subscription and not(/shop/page/projector/product/subscriptions/@only_subscription)">true</iaixsl:when>
			<iaixsl:when test="/shop/page/projector/product/subscriptions/subscription and /shop/page/projector/product/subscriptions/@only_subscription">&quot;only&quot;</iaixsl:when>
			<iaixsl:otherwise>false</iaixsl:otherwise>
		</iaixsl:choose>,
	};

	window.product_data = [{
		// ID produktu
		id: <iaixsl:value-of select="/shop/page/projector/product/@id"/>,
		// Typ produktu
		type: &quot;<iaixsl:choose>
			<iaixsl:when test="/shop/page/projector/product/@product_type = 'product_service'">service</iaixsl:when>
			<iaixsl:when test="/shop/page/projector/product/@product_type = 'product_bundle'">bundle</iaixsl:when>
			<iaixsl:when test="/shop/page/projector/product/@product_type = 'product_virtual'">virtual</iaixsl:when>
			<iaixsl:otherwise><iaixsl:value-of select="/shop/page/projector/product/@product_type"/></iaixsl:otherwise>
		</iaixsl:choose>&quot;,
		selected: true,
		// Wybrany rozmiar
		selected_size_list: [<iaixsl:choose>
			<iaixsl:when test="/shop/page/projector/product/sizes/size[@selected = 'true']">&quot;<iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/@type"/>&quot;</iaixsl:when>
			<iaixsl:when test="/shop/page/projector/product/sizes/size/@type = 'onesize' or /shop/page/projector/product/sizes/size/@type = 'uniw'">&quot;uniw&quot;</iaixsl:when>
		</iaixsl:choose>],
	
		// Punkty - produkt
		for_points: <iaixsl:choose>
			<iaixsl:when test="/shop/page/projector/product/@for_points">true</iaixsl:when>
			<iaixsl:otherwise>false</iaixsl:otherwise>
		</iaixsl:choose>,
	
		// Ilośc punktów
		points: <iaixsl:choose>
			<iaixsl:when test="/shop/page/projector/product/price/@points &gt; 0"><iaixsl:value-of select="/shop/page/projector/product/price/@points"/></iaixsl:when>
			<iaixsl:otherwise>false</iaixsl:otherwise>
		</iaixsl:choose>,
		// Ilość otrzymanych punktów za zakup
		pointsReceive: <iaixsl:choose>
			<iaixsl:when test="/shop/page/projector/product/price/@points_recive &gt; 0"><iaixsl:value-of select="/shop/page/projector/product/price/@points_recive"/></iaixsl:when>
			<iaixsl:otherwise>false</iaixsl:otherwise>
		</iaixsl:choose>,
		// Jednostki
		unit: {
			name: &quot;<iaixsl:value-of select="page/projector/product/sizes/@unit"/>&quot;,
			plural: &quot;<iaixsl:value-of select="page/projector/product/sizes/@unit_plural"/>&quot;,
			singular: &quot;<iaixsl:value-of select="page/projector/product/sizes/@unit_single"/>&quot;,
			precision: &quot;<iaixsl:value-of select="page/projector/product/sizes/@unit_precision"/>&quot;,
			sellBy: <iaixsl:value-of select="page/projector/product/sizes/@unit_sellby"/>,
		},
		// Waluta
		currency: &quot;<iaixsl:value-of select="/shop/currency/@name"/>&quot;,
		// Domyślne ceny produktu
		base_price: {
			<iaixsl:for-each select="/shop/page/projector/product/sizes/prices/@*">
				<iaixsl:value-of select="name()"/>: &quot;<iaixsl:value-of select="."/>&quot;,
			</iaixsl:for-each>
			<iaixsl:for-each select="/shop/page/projector/product/price/@*">
				<iaixsl:value-of select="name()"/>: &quot;<iaixsl:value-of select="."/>&quot;,
			</iaixsl:for-each>
		},
		// Zakresy ilości produktu
		order_quantity_range: {
			subscription_min_quantity: <iaixsl:choose>
				<iaixsl:when test="/shop/page/projector/product/subscriptions/@minimum_quantity">&quot;<iaixsl:value-of select="/shop/page/projector/product/subscriptions/@minimum_quantity"/>&quot;</iaixsl:when>
				<iaixsl:otherwise>false</iaixsl:otherwise>
			</iaixsl:choose>,
			<iaixsl:for-each select="/shop/page/projector/product/order_quantity_range/*">
				<iaixsl:value-of select="name()"/>: &quot;<iaixsl:value-of select="."/>&quot;,
			</iaixsl:for-each>
		},
		// Rozmiary
		sizes: [
			<iaixsl:for-each select="/shop/page/projector/product/sizes/size">{
				name: &quot;<iaixsl:value-of select="@description"/>&quot;,
				id: &quot;<iaixsl:choose><iaixsl:when test="@type = 'onesize'">uniw</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@type"/></iaixsl:otherwise></iaixsl:choose>&quot;,
				product_id: <iaixsl:value-of select="/shop/page/projector/product/@id"/>,
				amount: <iaixsl:value-of select="@amount"/>,
				amount_mo: <iaixsl:value-of select="@amount_mo"/>,
				amount_mw: <iaixsl:value-of select="@amount_mw"/>,
				amount_mp: <iaixsl:value-of select="@amount_mp"/>,
				selected: <iaixsl:choose><iaixsl:when test="@selected = 'true'">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,
				// Punkty - rozmiar
				for_points: false,
				phone_price: <iaixsl:choose><iaixsl:when test="@phone_price = 'true'">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,
				<iaixsl:if test="not(/shop/page/projector/product/@product_type = 'product_bundle')">
				availability: {
					visible: <iaixsl:choose><iaixsl:when test="availability/@visible = 'y'">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,
					description: &quot;<iaixsl:value-of select="availability/@status_description"/>&quot;,
					description_tel: &quot;<iaixsl:value-of select="availability/@status_description_tel"/>&quot;,
					status: &quot;<iaixsl:value-of select="availability/@status"/>&quot;,
					icon: &quot;<iaixsl:value-of select="availability/@status_gfx"/>&quot;,
					icon_tel: &quot;<iaixsl:value-of select="availability/@status_gfx_tel"/>&quot;,
					delivery_days_undefined: <iaixsl:choose><iaixsl:when test="availability/@delivery_days_undefined = 'true'">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>,
				},
				</iaixsl:if>
				price: {
					price: {
						<iaixsl:value-of select="$ProjectorPriceType"/>: <iaixsl:choose>
							<iaixsl:when test="price/@price_net and price/@value">{
								value: <iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@value"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@price_net"/></iaixsl:otherwise>
								</iaixsl:choose>,

								formatted: &quot;<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@price_formatted"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@price_net_formatted"/></iaixsl:otherwise>
								</iaixsl:choose>&quot;
							}</iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>
					},
					omnibusPrice: {
						<iaixsl:value-of select="$ProjectorPriceType"/>: <iaixsl:choose>
							<iaixsl:when test="price/@omnibus_price and price/@omnibus_price_net">{
								value: <iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@omnibus_price"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@omnibus_price_net"/></iaixsl:otherwise>
								</iaixsl:choose>,

								formatted: &quot;<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@omnibus_price_formatted"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@omnibus_price_net_formatted"/></iaixsl:otherwise>
								</iaixsl:choose>&quot;
							}</iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>
					},
					omnibusPriceDetails: {
						youSavePercent: <iaixsl:choose>
							<iaixsl:when test="price/@omnibus_yousave_percent"><iaixsl:value-of select="price/@omnibus_yousave_percent"/></iaixsl:when>
							<iaixsl:otherwise>null</iaixsl:otherwise>
						</iaixsl:choose>,

						omnibusPriceIsHigherThanSellingPrice:<iaixsl:choose>
							<iaixsl:when test="price/@omnibus_price_is_higher_than_selling_price"><iaixsl:value-of select="price/@omnibus_price_is_higher_than_selling_price"/></iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>,

						newPriceEffectiveUntil: {
							formatted: &apos;<iaixsl:value-of select="price/@omnibus_new_price_effective_until"/>&apos;
						},
					},
					min: {
						<iaixsl:value-of select="$ProjectorPriceType"/>: <iaixsl:choose>
							<iaixsl:when test="price/@minprice_net and price/@minprice">{
								value: <iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@minprice"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@minprice_net"/></iaixsl:otherwise>
								</iaixsl:choose>,

								formatted: &quot;<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@minprice_formatted"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@minprice_net_formatted"/></iaixsl:otherwise>
								</iaixsl:choose>&quot;
							}</iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>
					},
					max: {
						<iaixsl:value-of select="$ProjectorPriceType"/>: <iaixsl:choose>
							<iaixsl:when test="price/@maxprice_net and price/@maxprice">{
								value: <iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@maxprice"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_net"/></iaixsl:otherwise>
								</iaixsl:choose>,

								formatted: &quot;<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@maxprice_formatted"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_net_formatted"/></iaixsl:otherwise>
								</iaixsl:choose>&quot;
							}</iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>
					},
					youSavePercent: <iaixsl:choose>
						<iaixsl:when test="price/@yousave_percent"><iaixsl:value-of select="price/@yousave_percent"/></iaixsl:when>
						<iaixsl:otherwise>null</iaixsl:otherwise>
					</iaixsl:choose>,
					beforeRebate: {
						<iaixsl:value-of select="$ProjectorPriceType"/>: <iaixsl:choose>
							<iaixsl:when test="price/@beforerebate_net and price/@beforerebate">{
								value: <iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@beforerebate"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@beforerebate_net"/></iaixsl:otherwise>
								</iaixsl:choose>,

								formatted: &quot;<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@beforerebate_formatted"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@beforerebate_net_formatted"/></iaixsl:otherwise>
								</iaixsl:choose>&quot;
							}</iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>
					},
					beforeRebateDetails: {
						youSavePercent: <iaixsl:choose>
							<iaixsl:when test="price/@beforerebate_yousave_percent"><iaixsl:value-of select="price/@beforerebate_yousave_percent"/></iaixsl:when>
							<iaixsl:otherwise>null</iaixsl:otherwise>
						</iaixsl:choose>
					},
					advancePrice: {
						<iaixsl:value-of select="$ProjectorPriceType"/>: <iaixsl:choose>
							<iaixsl:when test="price/@advanceprice">{
								value: <iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@advanceprice"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@advanceprice"/></iaixsl:otherwise>
								</iaixsl:choose>,

								formatted: &quot;<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@advanceprice_formatted"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@advanceprice_formatted"/></iaixsl:otherwise>
								</iaixsl:choose>&quot;
							}</iaixsl:when>
							<iaixsl:otherwise>null</iaixsl:otherwise>
						</iaixsl:choose>
					},
					suggested: {
						<iaixsl:value-of select="$ProjectorPriceType"/>: <iaixsl:choose>
							<iaixsl:when test="price/@srp_net and price/@srp">{
								value:<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@srp"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@srp_net"/></iaixsl:otherwise>
								</iaixsl:choose>,

								formatted:&quot;<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@srp_formatted"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@srp_net_formatted"/></iaixsl:otherwise>
								</iaixsl:choose>&quot;
								}</iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>
					},
					advance: {
						<iaixsl:value-of select="$ProjectorPriceType"/>: <iaixsl:choose>
							<iaixsl:when test="price/@advanceprice_net and price/@advanceprice">{
								value:<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@advanceprice"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@advanceprice_net"/></iaixsl:otherwise>
								</iaixsl:choose>,

								formatted:&quot;<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="price/@advanceprice_formatted"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@advanceprice_net_formatted"/></iaixsl:otherwise>
								</iaixsl:choose>&quot;
								}</iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>
					},
					depositPrice: {
						<iaixsl:value-of select="$ProjectorPriceType"/>: <iaixsl:choose>
							<iaixsl:when test="../../price/@deposit_price_net and ../../price/@deposit_price">{
								value:<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="../../price/@deposit_price"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="../../price/@deposit_price_net"/></iaixsl:otherwise>
								</iaixsl:choose>,

								formatted:&quot;<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="../../price/@deposit_price_formatted"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="../../price/@deposit_price_net_formatted"/></iaixsl:otherwise>
								</iaixsl:choose>&quot;
								}</iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>
					},
					totalDepositPrice: {
						<iaixsl:value-of select="$ProjectorPriceType"/>: <iaixsl:choose>
							<iaixsl:when test="../../price/@total_deposit_net and ../../price/@total_deposit">{
								value:<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="../../price/@total_deposit"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="../../price/@total_deposit_net"/></iaixsl:otherwise>
								</iaixsl:choose>,

								formatted:&quot;<iaixsl:choose>
									<iaixsl:when test="$ProjectorPriceType = 'gross'"><iaixsl:value-of select="../../price/@total_deposit_formatted"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="../../price/@total_deposit_net_formatted"/></iaixsl:otherwise>
								</iaixsl:choose>&quot;
								}</iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>
					},
					rebateNumber:<iaixsl:choose>
						<iaixsl:when test="price/rebateNumber">{
						<iaixsl:if test="price/rebateNumber/rebate">
							items: [
								<iaixsl:for-each select="price/rebateNumber/rebate">
									{
									<iaixsl:for-each select="@*">
										<iaixsl:value-of select="name()"/>:&quot;<iaixsl:value-of select="."/>&quot;,
									</iaixsl:for-each>
									},
								</iaixsl:for-each>
							],
						</iaixsl:if>
						<iaixsl:for-each select="price/rebateNumber/@*">
							<iaixsl:value-of select="name()"/>:&quot;<iaixsl:value-of select="."/>&quot;,
						</iaixsl:for-each>
					}</iaixsl:when>
					<iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose>
				},
				shippingTime: {
					shippingTime: {
						time: {
							days: <iaixsl:choose>
								<iaixsl:when test="availability/shipping_time/@days"><iaixsl:value-of select="availability/shipping_time/@days"/></iaixsl:when>
								<iaixsl:otherwise>false</iaixsl:otherwise>
							</iaixsl:choose>,
							hours: <iaixsl:choose>
								<iaixsl:when test="availability/shipping_time/@hours"><iaixsl:value-of select="availability/shipping_time/@hours"/></iaixsl:when>
								<iaixsl:otherwise>false</iaixsl:otherwise>
							</iaixsl:choose>,
							minutes: <iaixsl:choose>
								<iaixsl:when test="availability/shipping_time/@minutes"><iaixsl:value-of select="availability/shipping_time/@minutes"/></iaixsl:when>
								<iaixsl:otherwise>false</iaixsl:otherwise>
							</iaixsl:choose>,
						},
						weekDay: <iaixsl:choose>
							<iaixsl:when test="availability/shipping_time/@week_day"><iaixsl:value-of select="availability/shipping_time/@week_day"/></iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>,
						weekAmount: <iaixsl:choose>
							<iaixsl:when test="availability/shipping_time/@week_amount"><iaixsl:value-of select="availability/shipping_time/@week_amount"/></iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>,
						today: <iaixsl:choose>
							<iaixsl:when test="availability/shipping_time/@today"><iaixsl:value-of select="availability/shipping_time/@today"/></iaixsl:when>
							<iaixsl:otherwise>false</iaixsl:otherwise>
						</iaixsl:choose>,
					},
					time: <iaixsl:choose>
						<iaixsl:when test="availability/shipping_time/@time">&quot;<iaixsl:value-of select="availability/shipping_time/@time"/>&quot;</iaixsl:when>
						<iaixsl:otherwise>false</iaixsl:otherwise>
					</iaixsl:choose>,
					unknownTime: <iaixsl:choose>
						<iaixsl:when test="availability/delay_time/@unknown_delivery_time"><iaixsl:value-of select="availability/delay_time/@unknown_delivery_time"/></iaixsl:when>
						<iaixsl:otherwise>false</iaixsl:otherwise>
					</iaixsl:choose>,
					todayShipmentDeadline: <iaixsl:choose>
						<iaixsl:when test="availability/shipping_time/@today_shipment_deadline">&quot;<iaixsl:value-of select="availability/shipping_time/@today_shipment_deadline"/>&quot;</iaixsl:when>
						<iaixsl:otherwise>false</iaixsl:otherwise>
					</iaixsl:choose>,
				}},
			</iaixsl:for-each>
		],
		<iaixsl:variable name="SubscriptionRangeEnabled" select="/shop/page/projector/product/sizes/prices and /shop/page/projector/product/sizes/prices/@maxprice_formatted != /shop/page/projector/product/sizes/prices/@minprice_formatted"/>
		<iaixsl:variable name="SubscriptionMinPrice" select="/shop/page/projector/product/sizes/prices/@minprice"/>
		<iaixsl:variable name="SubscriptionMinPriceNet" select="/shop/page/projector/product/sizes/prices/@minprice_net"/>
		<iaixsl:variable name="SubscriptionMaxPrice" select="/shop/page/projector/product/sizes/prices/@maxprice"/>
		<iaixsl:variable name="SubscriptionMaxPriceNet" select="/shop/page/projector/product/sizes/prices/@maxprice_net"/>
		subscription: {
			rangeEnabled: <iaixsl:value-of select="$SubscriptionRangeEnabled"/>,
			min: {
				price: {
					gross: {
						value: &quot;<iaixsl:choose>
							
							
							<iaixsl:when test="$SubscriptionRangeEnabled = 'true' and /shop/page/projector/product/sizes/size/price[@value = $SubscriptionMinPrice]/@maxprice"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/price[@value = $SubscriptionMinPrice]/@maxprice"/></iaixsl:when>
							
							<iaixsl:when test="$SubscriptionRangeEnabled = 'true' and not(/shop/page/projector/product/sizes/size/price[@value = $SubscriptionMinPrice]/@maxprice)"><iaixsl:value-of select="$SubscriptionMinPrice"/></iaixsl:when>
							
							
							<iaixsl:when test="not($SubscriptionRangeEnabled = 'true') and $ProjectorPriceType = 'gross' and /shop/page/projector/product/price/@maxprice"><iaixsl:value-of select="/shop/page/projector/product/price/@maxprice"/></iaixsl:when>
							
							<iaixsl:when test="not($SubscriptionRangeEnabled = 'true') and $ProjectorPriceType = 'gross' and not(/shop/page/projector/product/price/@maxprice)"><iaixsl:value-of select="/shop/page/projector/product/price/@value"/></iaixsl:when>
						</iaixsl:choose>&quot;,
					},
					net: {
						value: &quot;<iaixsl:choose>
							
							<iaixsl:when test="$SubscriptionRangeEnabled = 'true' and /shop/page/projector/product/sizes/size/price[@value = $SubscriptionMinPrice]/@maxprice_net"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/price[@value = $SubscriptionMinPrice]/@maxprice_net"/></iaixsl:when>
							
							<iaixsl:when test="$SubscriptionRangeEnabled = 'true' and not(/shop/page/projector/product/sizes/size/price[@value = $SubscriptionMinPrice]/@maxprice_net)"><iaixsl:value-of select="$SubscriptionMinPriceNet"/></iaixsl:when>
							
							<iaixsl:when test="not($SubscriptionRangeEnabled = 'true') and not($ProjectorPriceType = 'gross') and /shop/page/projector/product/price/@maxprice_net"><iaixsl:value-of select="/shop/page/projector/product/price/@maxprice_net"/></iaixsl:when>
							
							<iaixsl:when test="not($SubscriptionRangeEnabled = 'true') and not($ProjectorPriceType = 'gross') and not(/shop/page/projector/product/price/@maxprice_net)"><iaixsl:value-of select="/shop/page/projector/product/price/@price_net"/></iaixsl:when>
						</iaixsl:choose>&quot;
					},
				},
				save: &quot;<iaixsl:choose>
					<iaixsl:when test="$SubscriptionRangeEnabled = 'true'"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/price[@value = $SubscriptionMinPrice]/@yousave"/></iaixsl:when>
					<iaixsl:when test="not($SubscriptionRangeEnabled = 'true')"><iaixsl:value-of select="/shop/page/projector/product/price/@yousave"/></iaixsl:when>
				</iaixsl:choose>&quot;,
				before: &quot;<iaixsl:choose>
					
					<iaixsl:when test="$SubscriptionRangeEnabled = 'true' and /shop/page/projector/product/sizes/size/price[@value = $SubscriptionMinPrice]/@beforerebate"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/price[@value = $SubscriptionMinPrice]/@beforerebate"/></iaixsl:when>
					
					<iaixsl:when test="$SubscriptionRangeEnabled = 'true' and not(/shop/page/projector/product/sizes/size/price[@value = $SubscriptionMinPrice]/@beforerebate)"><iaixsl:value-of select="$SubscriptionMinPrice"/></iaixsl:when>
					
					<iaixsl:when test="not($SubscriptionRangeEnabled = 'true') and /shop/page/projector/product/price/@beforerebate"><iaixsl:value-of select="/shop/page/projector/product/price/@beforerebate"/></iaixsl:when>
					
					<iaixsl:when test="not($SubscriptionRangeEnabled = 'true') and not(/shop/page/projector/product/price/@beforerebate)"><iaixsl:value-of select="page/projector/product/price/@value"/></iaixsl:when>
				</iaixsl:choose>&quot;
			},
			max: <iaixsl:choose>
				<iaixsl:when test="$SubscriptionRangeEnabled = 'true'">{
					price: {
						gross: {
							value: &quot;<iaixsl:choose>
								
								
								<iaixsl:when test="/shop/page/projector/product/sizes/size/price[@value = SubscriptionMaxPrice]/@maxprice"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/price[@value = SubscriptionMaxPrice]/@maxprice"/></iaixsl:when>
								
								<iaixsl:when test="not(/shop/page/projector/product/sizes/size/price[@value = SubscriptionMaxPrice]/@maxprice)"><iaixsl:value-of select="$SubscriptionMaxPrice"/></iaixsl:when>
							</iaixsl:choose>&quot;,
						},
						net: {
							value: &quot;<iaixsl:choose>
								
								<iaixsl:when test="/shop/page/projector/product/sizes/size/price[@value = SubscriptionMaxPrice]/@maxprice_net"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/price[@value = SubscriptionMaxPrice]/@maxprice_net"/></iaixsl:when>
								
								<iaixsl:when test="not(/shop/page/projector/product/sizes/size/price[@value = SubscriptionMaxPrice]/@maxprice_net)"><iaixsl:value-of select="$SubscriptionMaxPriceNet"/></iaixsl:when>
							</iaixsl:choose>&quot;,
						},
					},
					save: &quot;<iaixsl:value-of select="/shop/page/projector/product/sizes/size/price[@value = $SubscriptionMaxPrice]/@yousave"/>&quot;,
					before: &quot;<iaixsl:choose>
						
						<iaixsl:when test="/shop/page/projector/product/sizes/size/price[@value = $SubscriptionMaxPrice]/@beforerebate"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/price[@value = $SubscriptionMaxPrice]/@beforerebate"/></iaixsl:when>
						
						<iaixsl:when test="not(/shop/page/projector/product/sizes/size/price[@value = $SubscriptionMaxPrice]/@beforerebate)"><iaixsl:value-of select="$SubscriptionMaxPrice"/></iaixsl:when>
					</iaixsl:choose>&quot;
					}</iaixsl:when>
				<iaixsl:otherwise>false</iaixsl:otherwise>
			</iaixsl:choose>,
		},
	}];
</script>



<iaixsl:variable name="ProjectorPhonePriceClass"><iaixsl:if test="/shop/page/projector/product/price/@value = 0">--phone</iaixsl:if></iaixsl:variable>

<iaixsl:variable name="ProjectorPricePerSizeClass"><iaixsl:if test="/shop/page/projector/product/price/@value = 0 and /shop/page/projector/product/price/@points &gt; 0 and /shop/page/projector/product/sizes/prices and /shop/page/projector/product/sizes/prices/@maxprice_formatted != /shop/page/projector/product/sizes/prices/@minprice_formatted">--price-per-size</iaixsl:if></iaixsl:variable>


<iaixsl:variable name="ProjectorFormAction"><iaixsl:choose>
	<iaixsl:when test="/shop/action/basketChange/@url"><iaixsl:value-of select="/shop/action/basketChange/@url"/></iaixsl:when>
	<iaixsl:otherwise>/basketchange.php</iaixsl:otherwise>
</iaixsl:choose></iaixsl:variable>






<form id="{$ProjectorFormID}" class="projector_details is-validated {$ProjectorPhonePriceClass} {$ProjectorPricePerSizeClass}" action="{$ProjectorFormAction}" method="post" data-product_id="{/shop/page/projector/product/@id}" data-type="{/shop/page/projector/product/@product_type}" data-bundle_configurator="{$ProjectorBundleOrConfigurator}" data-price-type="{$ProjectorPriceType}" data-product-display-type="single-with-variants">
	
	<iaixsl:if test="count(/shop/page/projector/product/sizes/size[availability/@status = 'disable']) = count(/shop/page/projector/product/sizes/size)">
		<iaixsl:attribute name="data-sizes_disable">true</iaixsl:attribute>
	</iaixsl:if>
	<iaixsl:if test="/shop/page/projector/product/@price_from_formula = 'true'">
		<iaixsl:attribute name="data-price_formula">true</iaixsl:attribute>
	</iaixsl:if>
	
	<iaixsl:if test="/shop/page/projector/product/subscriptions/subscription">
		<iaixsl:attribute name="data-subscription"><iaixsl:choose><iaixsl:when test="not(/shop/page/projector/product/subscriptions/@only_subscription)">false</iaixsl:when><iaixsl:otherwise>only</iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>
	</iaixsl:if>
	<iaixsl:variable name="nettoPrice"><iaixsl:if test="$ProjectorPriceType = 'net'">true</iaixsl:if></iaixsl:variable>
	<iaixsl:variable name="grossPrice"><iaixsl:if test="$ProjectorPriceType = 'gross'">true</iaixsl:if></iaixsl:variable>
	<iaixsl:variable name="isCollection"><iaixsl:if test="/shop/page/projector/bundled/@collection = 'true'">true</iaixsl:if></iaixsl:variable>

	
	
	<iaixsl:variable name="var_omnibus_enabled"><iaixsl:if test="/shop/@omnibus = 1">true</iaixsl:if></iaixsl:variable>
	

	<button form="{$ProjectorFormID}" style="display:none;" type="submit"/>
	<input form="{$ProjectorFormID}" id="projector_product_hidden" type="hidden" name="product" value="{page/projector/product/@id}"/>
	<input form="{$ProjectorFormID}" id="projector_size_hidden" type="hidden" name="size" autocomplete="off">
		<iaixsl:choose>
			<iaixsl:when test="/shop/page/projector/product/sizes/size[@selected = 'true']">
				<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/@type"/></iaixsl:attribute>
			</iaixsl:when>
			<iaixsl:when test="/shop/page/projector/product/sizes/size/@type = 'onesize' or /shop/page/projector/product/sizes/size/@type = 'uniw'">
				<iaixsl:attribute name="value">uniw</iaixsl:attribute>
			</iaixsl:when>
		</iaixsl:choose>
	</input>
	<input form="{$ProjectorFormID}" id="projector_mode_hidden" type="hidden" name="mode" value="1"/>
	<iaixsl:if test="/shop/page/projector/product/exchange/@exchange_id">
		<input form="{$ProjectorFormID}" id="projector_exchange_id_hidden" type="hidden" name="exchange_id" value="{/shop/page/projector/product/exchange/@exchange_id}"/>
		<input form="{$ProjectorFormID}" id="projector_change_hidden" type="hidden" name="change" value="change"/>
	</iaixsl:if>

	
	<iaixsl:if test="/shop/page/projector/product/subscriptions/subscription and /shop/page/projector/product/subscriptions/@only_subscription">
		<input form="{$ProjectorFormID}" type="hidden" name="subscription" value="1" id="projector_subscription_hidden"/>
	</iaixsl:if>

	
	<iaixsl:variable name="firstDaysInPeriod"><iaixsl:for-each select="/shop/page/projector/product/subscriptions/subscription"><iaixsl:sort select="@days_in_period" data-type="number"/><iaixsl:if test="position() = 1"><iaixsl:value-of select="@days_in_period"/></iaixsl:if></iaixsl:for-each></iaixsl:variable>
	<iaixsl:if test="/shop/page/projector/product/subscriptions/subscription">
		<input form="{$ProjectorFormID}" type="hidden" name="days_in_period" id="projector_subscription_days_hidden">
			<iaixsl:attribute name="value"><iaixsl:value-of select="$firstDaysInPeriod"/></iaixsl:attribute>
		</input>
	</iaixsl:if>

	
	<iaixsl:if test="/shop/page/projector/product/subscriptions/subscription and not(/shop/page/projector/product/subscriptions/@only_subscription)">
		<div class="projector_details__purchase --normal projector_purchase f-group --radio">
			<input form="{$ProjectorFormID}" type="radio" name="subscription" class="f-control" value="0" id="radioSubscriptionFalse" checked="checked"/>
			<label class="f-label" for="radioSubscriptionFalse">
				<strong class="projector_purchase__label">Zakup jednorazowy</strong>
				<iaixsl:if test="not(/shop/page/projector/product/price/@value = 0)">
					<span class="projector_purchase__price_wrapper">
						<iaixsl:choose>
							<iaixsl:when test="/shop/page/projector/product/sizes/prices and /shop/page/projector/product/sizes/prices/@maxprice_formatted != /shop/page/projector/product/sizes/prices/@minprice_formatted">
								<span class="projector_purchase__price_before">od</span>
								<span class="projector_purchase__price">
									<iaixsl:choose>
										<iaixsl:when test="not($nettoPrice = '')">
											<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@minprice_net_formatted"/>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@minprice_formatted"/>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</span>
							</iaixsl:when>
							<iaixsl:otherwise>
								<span class="projector_purchase__price">
									<iaixsl:choose>
										<iaixsl:when test="not($nettoPrice = '')">
											<iaixsl:value-of select="page/projector/product/price/@price_net_formatted"/>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:value-of select="page/projector/product/price/@price_formatted"/>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</span>
							</iaixsl:otherwise>
						</iaixsl:choose>
						<span class="projector_purchase__price_after">
							<span class="projector_purchase__price_vat">
								<span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span>
							</span>
							<span class="projector_purchase__price_unit_sep">
									/
							</span>
							<span class="projector_purchase__price_unit"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/></span>
						</span>
					</span>
				</iaixsl:if>
			</label>
		</div>

		<div class="projector_details__purchase --subscription projector_purchase f-group --radio">
			<input form="{$ProjectorFormID}" type="radio" name="subscription" class="f-control" value="1" id="radioSubscriptionTrue"/>
			<label class="f-label" for="radioSubscriptionTrue">
				<strong class="projector_purchase__label">Subskrypcja</strong>
				<iaixsl:if test="/shop/page/projector/product/subscriptions/subscription[rebate]">
					<span class="projector_purchase__yousave">
						<iaixsl:if test="/shop/page/projector/product/subscriptions/subscription[1]/rebate">
							<iaixsl:attribute name="class">projector_purchase__yousave --active</iaixsl:attribute>
						</iaixsl:if>
						<span class="projector_purchase__yousave_before">(Zniżka </span>
						<span class="projector_purchase__yousave_value"><iaixsl:value-of select="/shop/page/projector/product/subscriptions/subscription[rebate][1]/rebate/@value_formatted"/></span>
						<span class="projector_purchase__yousave_after"> kupując w subskrypcji)</span>
					</span>
				</iaixsl:if>
			</label>
		</div>
	</iaixsl:if>

	<div class="projector_details__wrapper">
		<iaixsl:attribute name="class">projector_details__wrapper<iaixsl:if test="/shop/expressCheckout/payment[@id = 'idoPay']"> --expchck</iaixsl:if><iaixsl:if test="/shop/inpostCheckout/payment[@id = 'inpostPay']"> --inpost-pay</iaixsl:if><iaixsl:if test="/shop/oneclick/payment"> --oneclick</iaixsl:if></iaixsl:attribute>
		
		<iaixsl:if test="/shop/page/projector/subscriptions_rebates/rebate[@renewals_number_from != '1'] and /shop/page/projector/product/subscriptions/subscription">
			<div class="projector_details__subscription_rebates projector_subscription_rebates">
				<iaixsl:variable name="subscriptionRebateValue"><iaixsl:value-of select="/shop/page/projector/subscriptions_rebates/rebate[@renewals_number_from != '1']/@value_formatted"/></iaixsl:variable>
				<iaixsl:variable name="subscriptionRebateRenewals"><iaixsl:value-of select="/shop/page/projector/subscriptions_rebates/rebate[@renewals_number_from != '1']/@renewals_number_from"/></iaixsl:variable>
				<iaixsl:variable name="subcriptionRebateText">Od %s dostawy w ramach tej subskrypcji rabat wyniesie -%s</iaixsl:variable>
				<iaixsl:value-of select="php:function('sprintf', $subcriptionRebateText, $subscriptionRebateRenewals, $subscriptionRebateValue)"/>
			</div>
		</iaixsl:if>

		
		<iaixsl:if test="/shop/page/projector/product/subscriptions/subscription">
			<div id="projector_subscription_section" class="projector_details__subscription projector_subscription">
				<iaixsl:if test="(/shop/page/projector/product/@product_type = 'product_configurable' and /shop/page/projector/product/priceFormula) or /shop/page/projector/bundled/product or /shop/page/projector/product/versions/@count &gt; 0 or not(/shop/page/projector/product/sizes/size/@type = 'onesize' or /shop/page/projector/product/sizes/size/@type = 'uniw')">
					<iaixsl:attribute name="data-border">true</iaixsl:attribute>
				</iaixsl:if>
				<span class="projector_subscription__label">Wysyłka co</span>
				<div class="projector_subscription__sub">
					<iaixsl:for-each select="/shop/page/projector/product/subscriptions/subscription">
						<iaixsl:sort select="@days_in_period" data-type="number"/>
						<a class="projector_subscription__item">
							<iaixsl:attribute name="class">projector_subscription__item<iaixsl:if test="position() = 1"> --selected</iaixsl:if></iaixsl:attribute>
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/@link"/>?selected_subscription=<iaixsl:value-of select="@days_in_period"/></iaixsl:attribute>
							<iaixsl:attribute name="data-days"><iaixsl:value-of select="@days_in_period"/></iaixsl:attribute>
							<iaixsl:if test="rebate">
								<iaixsl:attribute name="data-rebate-type"><iaixsl:value-of select="rebate/@type"/></iaixsl:attribute>
								<iaixsl:attribute name="data-rebate-value"><iaixsl:value-of select="rebate/@value"/></iaixsl:attribute>
								<iaixsl:attribute name="data-rebate-value-formatted"><iaixsl:value-of select="rebate/@value_formatted"/></iaixsl:attribute>
							</iaixsl:if>
							<span class="projector_subscription__name"><iaixsl:attribute name="data-change-literal-days"><iaixsl:value-of select="@days_in_period"/></iaixsl:attribute><iaixsl:value-of select="@days_in_period"/> dni</span>
						</a>
					</iaixsl:for-each>
				</div>
			</div>
		</iaixsl:if>


<iaixsl:if test="/shop/page/projector/bundled/product">
	<div id="projector_bundle_product" class="projector_bundle">
		<iaixsl:if test="/shop/page/projector/bundled/@left_quantity and (not(/shop/page/projector/product/bundle_price/@amount_diff_gross = '0.00') or (not($nettoPrice = '') and not(/shop/page/projector/product/bundle_price/@amount_diff_net = '0.00')))">
			<div class="projector_bundle__rebate">
				<h2 class="projector_bundle__rebate_label">Zyskaj rabat kupując produkty z kolekcji </h2>
				<div class="projector_bundle__rebate_wrapper">
					<span class="projector_bundle__rebate_description">Wybierz przynajmniej <iaixsl:value-of select="/shop/page/projector/bundled/@left_quantity"/> produkty aby otrzymać rabat!</span>
				</div>
			</div>
		</iaixsl:if>

		<div class="projector_bundle__header">
			<h2 class="projector_bundle__label">
				<iaixsl:choose>
					<iaixsl:when test="$isCollection = 'true'">
						W kolekcji
					</iaixsl:when>
					<iaixsl:otherwise>
						W zestawie
					</iaixsl:otherwise>
				</iaixsl:choose>
			</h2>

			<button type="button" class="projector_bundle__arrow --prev"><i class="icon-angle-left"/></button>
			<button type="button" class="projector_bundle__arrow --next"><i class="icon-angle-right"/></button>
		</div>

		<div class="projector_bundle__block swiper" data-element-type="slider">
			<div class="swiper-wrapper">
				<iaixsl:for-each select="/shop/page/projector/bundled/product">
					<div class="projector_bundle__item swiper-slide">
						<iaixsl:if test="$isCollection = 'true'">
							<div class="projector_bundle__checkbox_group f-group --checkbox">
								<input form="{$ProjectorFormID}" type="checkbox" id="bundleCheckboxItem{position()}" class="projector_bundle__checkbox f-control" name="bundled_quantity[{@id}]" value="{sizes/@unit_sellby}" data-unit_sellby="{sizes/@unit_sellby}" data-unit="{sizes/@unit_single}" data-unit_precision="{sizes/@unit_precision}">
									<iaixsl:attribute name="data-amount">
										<iaixsl:choose>
											<iaixsl:when test="sizes/size[@amount!=0][1]/@amount">
												<iaixsl:value-of select="sizes/size[@amount!=0][1]/@amount"/>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:value-of select="sizes/size[1]/@amount"/>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</iaixsl:attribute>
									<iaixsl:if test="sizes/size[@amount != 0] or versions/version[size/@amount != 0]"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
								</input>
								<label class="projector_bundle__checkbox_label f-label" for="bundleCheckboxItem{position()}"/>
							</div>
						</iaixsl:if>
						<input form="{$ProjectorFormID}" type="hidden" class="projector_bundle__product_id" name="bundled_product[{@id}]" value="{@product_id}"/>

						<a class="projector_bundle__icon">
							<iaixsl:if test="@link != ''">
								<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
							</iaixsl:if>

							<iaixsl:choose>
								<iaixsl:when test="(icon_second and not(icon_second = '' or icon_second = '/')) or (enclosures/images/enclosure[1]/@icon_second and not(enclosures/images/enclosure[1]/@icon_second = '' or enclosures/images/enclosure[1]/@icon_second = '/'))">
									<picture>
										<source type="image/webp">
											<iaixsl:choose>
												<iaixsl:when test="enclosures/images/enclosure[1]/@icon">
													<iaixsl:attribute name="srcset"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon"/></iaixsl:attribute>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:attribute name="srcset"><iaixsl:value-of select="icon"/></iaixsl:attribute>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</source>
										<img loading="lazy" alt="{name}">
											<iaixsl:if test="enclosures/images/enclosure[1]/@icon">
												<iaixsl:attribute name="width"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon_width"/></iaixsl:attribute>
												<iaixsl:attribute name="height"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon_height"/></iaixsl:attribute>
											</iaixsl:if>
											<iaixsl:attribute name="src">
												<iaixsl:choose>
													<iaixsl:when test="enclosures/images/enclosure[1]/@icon_second">
														<iaixsl:value-of select="enclosures/images/enclosure[1]/@icon_second"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="icon_second"/>
													</iaixsl:otherwise>
												</iaixsl:choose>
											</iaixsl:attribute>
										</img>
									</picture>
								</iaixsl:when>
								<iaixsl:otherwise>
									<img loading="lazy" alt="{name}">
										<iaixsl:if test="enclosures/images/enclosure[1]/@icon">
											<iaixsl:attribute name="width"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon_width"/></iaixsl:attribute>
											<iaixsl:attribute name="height"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon_height"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:attribute name="src">
											<iaixsl:choose>
												<iaixsl:when test="enclosures/images/enclosure[1]/@icon">
													<iaixsl:value-of select="enclosures/images/enclosure[1]/@icon"/>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:value-of select="icon"/>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</iaixsl:attribute>
									</img>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</a>

						<div class="projector_bundle__info">
							<a class="projector_bundle__name">
								<iaixsl:if test="@link != ''">
									<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
								</iaixsl:if>
								<span class="projector_bundle__name_value"><iaixsl:value-of select="name"/></span>
								<strong class="projector_bundle__name_quantity"><iaixsl:if test="@bundle_quantity and not(@bundle_quantity = 1)"><iaixsl:attribute name="class">projector_bundle__name_quantity --active</iaixsl:attribute></iaixsl:if> (<span class="projector_bundle__name_quantity_value"><iaixsl:value-of select="@bundle_quantity"/></span> <iaixsl:value-of select="sizes/@unit"/>)</strong>
							</a>

							<div class="projector_bundle__price_wrapper">
								<iaixsl:if test="price/@value = 0">
									<iaixsl:attribute name="style">display:none</iaixsl:attribute>
								</iaixsl:if>
								<strong class="projector_bundle__price"><iaixsl:choose>
									<iaixsl:when test="not($nettoPrice = '')"><iaixsl:value-of select="price/@price_net_formatted"/></iaixsl:when>
									<iaixsl:otherwise><iaixsl:value-of select="price/@price_formatted"/></iaixsl:otherwise>
								</iaixsl:choose></strong>
								<iaixsl:if test="sizes/@unit_single">
									<span class="projector_bundle__price_unit"> / <iaixsl:value-of select="sizes/@unit_single"/></span>
								</iaixsl:if>
							</div>

							<div class="projector_bundle__availability" style="display:none;">
								<iaixsl:if test="count(sizes/size[@amount=0]) = count(sizes/size) and count(sizes/size) = 1 and not(multiversions and versions/@version_choice='true')"><iaixsl:attribute name="style">display:block;</iaixsl:attribute></iaixsl:if>
								<iaixsl:choose>
									<iaixsl:when test="multiversions and versions/@version_choice='true'">
										Produkt niedostępny.
									</iaixsl:when>
									<iaixsl:otherwise>
										Produkt niedostępny.
									</iaixsl:otherwise>
								</iaixsl:choose>
							</div>

							<div class="projector_bundle__availability_quantity" style="display:none;">
								<iaixsl:attribute name="data-bundle_quantity"><iaixsl:value-of select="@bundle_quantity"/></iaixsl:attribute>
								<iaixsl:if test="count(sizes/size) = 1 and sizes/size/@amount &gt; 0 and @bundle_quantity &gt; sizes/size/@amount and not(multiversions and versions/@version_choice='true')"><iaixsl:attribute name="style">display:block;</iaixsl:attribute></iaixsl:if>
								<span>Produkt dostępny w mniejszej ilości. </span>
								<a href="{@link}" class="projector_bundle__availability_quantity_link"><iaixsl:choose>
									<iaixsl:when test="$isCollection = 'true'">Kup poza kolekcją</iaixsl:when>
									<iaixsl:otherwise>Kup poza zestawem</iaixsl:otherwise>
								</iaixsl:choose></a>
							</div>

							<div class="projector_bundle__options">
								<iaixsl:if test="sizes/size/@type='onesize' and not(multiversions and versions/@version_choice='true') and not(sizes_chart)">
									<iaixsl:attribute name="data-only_onesize">true</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:if test="multiversions and versions/@version_choice='true'">
									<iaixsl:for-each select="multiversions/multi_version">
										<div class="projector_bundle__option --versions" data-id="{@id}">
											<select class="projector_bundle__version f-select --small --placeholder">
												<iaixsl:attribute name="data-label"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
												<option value="">Wybierz wariant</option>
												<iaixsl:for-each select="item">
													<option data-values_id="{values/@id}" data-value="{position()}" data-product="{products/product/@product_id}" data-link="{products/product/@url}">
														<iaixsl:variable name="value_name"><iaixsl:for-each select="values/value"><iaixsl:if test="not(position() = 1)"> / </iaixsl:if><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:for-each></iaixsl:variable>
														
														<iaixsl:if test="@disabled = 'true'">
															<iaixsl:attribute name="class">--dependent</iaixsl:attribute>
														</iaixsl:if>
														<iaixsl:variable name="currentProductId"><iaixsl:value-of select="products/product/@product_id"/></iaixsl:variable>
														<iaixsl:if test="count(/shop/page/projector/bundled/product/multiversions/multi_version) = 1 and /shop/page/projector/bundled/product/versions/version[@product_id = $currentProductId]/@amount = '0'">
															<iaixsl:attribute name="class">--disabled</iaixsl:attribute>
															<iaixsl:attribute name="label"><iaixsl:value-of select="$value_name"/> (wyprzedane)</iaixsl:attribute>
														</iaixsl:if>
														<iaixsl:if test="values/value[@gfx]">
															<iaixsl:attribute name="data-gfx"><iaixsl:for-each select="values/value[@gfx]"><iaixsl:if test="not(position() = 1)">|next|</iaixsl:if><iaixsl:value-of select="@gfx"/></iaixsl:for-each></iaixsl:attribute>
														</iaixsl:if>
														<iaixsl:value-of select="$value_name"/>
													</option>
												</iaixsl:for-each>
											</select>
										</div>
									</iaixsl:for-each>
								</iaixsl:if>

								<div class="projector_bundle__option --sizes">
									<iaixsl:if test="multiversions and versions/@version_choice='true'">
										<iaixsl:attribute name="data-hide">true</iaixsl:attribute>
									</iaixsl:if>
									<iaixsl:choose>
										<iaixsl:when test="sizes/size/@type='onesize'">
											<iaixsl:attribute name="data-onesize">true</iaixsl:attribute>
											<input form="{$ProjectorFormID}" class="projector_bundle__product_size" name="bundled_size[{@id}]" type="hidden" value="{sizes/size[1]/@type}"/>
										</iaixsl:when>
										<iaixsl:when test="count(sizes/size) = 1">
											<a href="#{sizes/size/@type}" class="projector_bundle__size_button --selected" data-value="{sizes/size/@type}">
												<iaixsl:attribute name="class">projector_bundle__size_button --selected<iaixsl:if test="not(sizes/size/@amount &gt; 0 or sizes/size/@amount = '-1')"> --disabled</iaixsl:if></iaixsl:attribute>
												<input form="{$ProjectorFormID}" class="projector_bundle__product_size" name="bundled_size[{@id}]" type="hidden" value="{sizes/size/@type}"/>
												<span class="projector_bundle__size_name"><iaixsl:value-of select="sizes/size/@description"/></span>
											</a>
										</iaixsl:when>
										<iaixsl:otherwise>
											<select form="{$ProjectorFormID}" class="projector_bundle__size f-select --small --placeholder" name="bundled_size[{@id}]">
												<iaixsl:attribute name="data-label">Rozmiar</iaixsl:attribute>
												<option value="">Wybierz rozmiar</option>
												<iaixsl:for-each select="sizes/size">
													<option value="{@type}" data-count="{@amount}">
														<iaixsl:if test="@amount = 0">
															<iaixsl:attribute name="class">--disabled</iaixsl:attribute>
															<iaixsl:attribute name="label"><iaixsl:value-of select="@description"/> (wyprzedane)</iaixsl:attribute>
														</iaixsl:if>
														<iaixsl:value-of select="@description"/>
													</option>
												</iaixsl:for-each>
											</select>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</div>

								<iaixsl:if test="sizes_chart">
									<div class="projector_bundle__option --chart">
										<a href="#showSizesChart" class="projector_bundle__chart_link" data-id="#component_colection_sizes_chart_{sizes_chart/@id}_{../@id}">
											Sprawdź wymiary produktu
										</a>
									</div>
									<div class="projector_bundle__chart_wrapper component_projector_sizes_chart" id="component_colection_sizes_chart_{sizes_chart/@id}_{../@id}" style="display:none;">
										<iaixsl:if test="sizes_chart/descriptions/description">
											<h2/>
											<table class="ui-responsive table-stroke ui-table ui-table-reflow table-condensed">
												<thead>
													<tr>
														<th class="table-first-column">Rozmiar </th>
														<iaixsl:for-each select="sizes_chart/descriptions/description">
															<th>
																<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
															</th>
														</iaixsl:for-each>
													</tr>
												</thead>
												<tbody>
													<iaixsl:for-each select="sizes_chart/sizes/size">
														<tr>
															<td class="table-first-column">
																<iaixsl:value-of disable-output-escaping="yes" select="@description"/>
															</td>
															<iaixsl:for-each select="description">
																<td>
																	<iaixsl:value-of disable-output-escaping="yes" select="@text"/>
																</td>
															</iaixsl:for-each>
														</tr>
													</iaixsl:for-each>
												</tbody>
											</table>
										</iaixsl:if>
										<div class="sizes_chart_cms">
											<iaixsl:if test="sizes_chart/text">
												<iaixsl:value-of disable-output-escaping="yes" select="sizes_chart/text"/>
											</iaixsl:if>
										</div>
									</div>
								</iaixsl:if>
							</div>
						</div>
					</div>
				</iaixsl:for-each>
			</div>
		</div>
	</div>
</iaixsl:if>


<iaixsl:if test="/shop/page/projector/product/@product_type = 'product_configurable' and /shop/page/projector/product/priceFormula">
	<div id="projector_configurator_section" class="configurator">
		
		<iaixsl:variable name="current_language"><iaixsl:value-of select="/shop/language/@id"/></iaixsl:variable>

		<iaixsl:for-each select="/shop/page/projector/product/priceFormula/parameters/parameter">
			<div class="configurator__item" data-name="{name}" data-type="{type}" data-limits="{settings/min or settings/max}" data-required="{settings/minChecked}">
				<span class="configurator__label"><iaixsl:value-of select="translations/language[name = $current_language]/value"/></span>
				<div class="configurator__sub" data-type="{type}">
					<iaixsl:choose>
						<iaixsl:when test="type = 'radio'">
							<iaixsl:for-each select="values/value">
								<div class="f-group --radio">
									<input form="{$ProjectorFormID}" type="radio" class="f-control" id="{name}" name="priceformula[{../../name}]" value="{name}" aria-label="{translations/language[name = $current_language]/value}">
										<iaixsl:if test="position() = 1">
											<iaixsl:attribute name="checked">checked</iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="additional/priceModifier">
											<iaixsl:attribute name="data-config-price"><iaixsl:value-of select="additional/priceModifier"/></iaixsl:attribute>
										</iaixsl:if>
									</input>
									<label class="f-label" for="{name}">
										<iaixsl:if test="additional/graphics">
											<span class="configurator__icon">
												<img src="{additional/graphics}" alt="{translations/language[name = $current_language]/value}"/>
											</span>
										</iaixsl:if>
										<span class="configurator__name"><iaixsl:value-of select="translations/language[name = $current_language]/value"/></span>
										<iaixsl:if test="additional/priceModifier">
											<span class="configurator__price"><iaixsl:value-of select="additional/priceModifierFormatted"/></span>
										</iaixsl:if>
									</label>
								</div>
							</iaixsl:for-each>
						</iaixsl:when>
						<iaixsl:when test="type = 'select'">
							<select form="{$ProjectorFormID}" class="f-select" name="priceformula[{name}]">
								<iaixsl:for-each select="values/value">
									<option value="{name}">
										<iaixsl:if test="additional/graphics">
											<iaixsl:attribute name="data-icon"><iaixsl:value-of select="additional/graphics"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="additional/priceModifier">
											<iaixsl:attribute name="data-price"><iaixsl:value-of select="additional/priceModifierFormatted"/></iaixsl:attribute>
											<iaixsl:attribute name="data-config-price"><iaixsl:value-of select="additional/priceModifier"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:value-of select="translations/language[name = $current_language]/value"/>
									</option>
								</iaixsl:for-each>
							</select>
						</iaixsl:when>
						<iaixsl:when test="type = 'checkbox'">
							<iaixsl:for-each select="values/value">
								<div class="f-group --checkbox">
									<input form="{$ProjectorFormID}" type="checkbox" class="f-control" id="{name}" name="priceformula[{../../name}]" value="{name}">
										<iaixsl:if test="../../settings/minChecked and position() = 1">
											<iaixsl:attribute name="checked">checked</iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="additional/priceModifier">
											<iaixsl:attribute name="data-config-price"><iaixsl:value-of select="additional/priceModifier"/></iaixsl:attribute>
										</iaixsl:if>
									</input>
									<label class="f-label" for="{name}">
										<iaixsl:if test="additional/graphics">
											<span class="configurator__icon">
												<img src="{additional/graphics}" alt="{translations/language[name = $current_language]/value}"/>
											</span>
										</iaixsl:if>
										<span class="configurator__name"><iaixsl:value-of select="translations/language[name = $current_language]/value"/></span>
										<iaixsl:if test="additional/priceModifier">
											<span class="configurator__price"><iaixsl:value-of select="additional/priceModifierFormatted"/></span>
										</iaixsl:if>
									</label>
								</div>
							</iaixsl:for-each>
						</iaixsl:when>
						<iaixsl:when test="type = 'input'">
							<div class="f-group">
								<input form="{$ProjectorFormID}" class="f-control" id="{name}" name="priceformula[{name}]" data-type="{settings/type}">
									<iaixsl:if test="settings/min">
										<iaixsl:attribute name="placeholder">Uzupełnij wymagane pole</iaixsl:attribute>
										<iaixsl:attribute name="required">required</iaixsl:attribute>
									</iaixsl:if>
									<iaixsl:choose>
										<iaixsl:when test="settings/type = 'string'">
											<iaixsl:attribute name="type">text</iaixsl:attribute>
											<iaixsl:if test="settings/min">
												<iaixsl:attribute name="minlength"><iaixsl:value-of select="settings/min"/></iaixsl:attribute>
											</iaixsl:if>
											<iaixsl:if test="settings/max">
												<iaixsl:attribute name="maxlength"><iaixsl:value-of select="settings/max"/></iaixsl:attribute>
											</iaixsl:if>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:attribute name="type">number</iaixsl:attribute>
											<iaixsl:choose>
												<iaixsl:when test="settings/type = 'int'">
													<iaixsl:attribute name="step">1</iaixsl:attribute>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:attribute name="step">any</iaixsl:attribute>
												</iaixsl:otherwise>
											</iaixsl:choose>
											<iaixsl:if test="settings/min">
												<iaixsl:attribute name="min"><iaixsl:value-of select="settings/min"/></iaixsl:attribute>
												<iaixsl:attribute name="value"><iaixsl:value-of select="settings/min"/></iaixsl:attribute>
											</iaixsl:if>
											<iaixsl:if test="settings/max">
												<iaixsl:attribute name="max"><iaixsl:value-of select="settings/max"/></iaixsl:attribute>
											</iaixsl:if>
										</iaixsl:otherwise>
									</iaixsl:choose>
									<iaixsl:if test="settings/min">
										<iaixsl:attribute name="data-min"><iaixsl:value-of select="settings/min"/></iaixsl:attribute>
									</iaixsl:if>
									<iaixsl:if test="settings/max">
										<iaixsl:attribute name="data-max"><iaixsl:value-of select="settings/max"/></iaixsl:attribute>
									</iaixsl:if>
								</input>
							</div>
							<iaixsl:if test="settings/min or settings/max">
								<div class="configurator__limits">
									<iaixsl:choose>
										<iaixsl:when test="settings/type = 'string'">
											<iaixsl:if test="settings/min and not(settings/min = '0')">
												<span class="configurator__limit --min --string">Minimalna ilość znaków <iaixsl:value-of select="settings/min"/></span>
											</iaixsl:if>
											<iaixsl:if test="settings/max">
												<span class="configurator__limit --max --string">Maksymalna ilość znaków <iaixsl:value-of select="settings/max"/></span>
											</iaixsl:if>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:if test="settings/min">
												<span class="configurator__limit --min --digit">Minimalna wartość <iaixsl:value-of select="settings/min"/></span>
											</iaixsl:if>
											<iaixsl:if test="settings/max">
												<span class="configurator__limit --max --digit">Maksymalna wartość <iaixsl:value-of select="settings/max"/></span>
											</iaixsl:if>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</div>
							</iaixsl:if>
						</iaixsl:when>
					</iaixsl:choose>
				</div>
			</div>
		</iaixsl:for-each>
	</div>
	<iaixsl:if test="/shop/page/projector/product/priceFormula/parameters/parameter/settings/dependencies">
		<script>
			window.configuratorDependencies = {
			<iaixsl:for-each select="/shop/page/projector/product/priceFormula/parameters/parameter[settings/dependencies]">
				&quot;<iaixsl:value-of select="name"/>&quot;: <iaixsl:value-of select="settings/dependencies"/>,
			</iaixsl:for-each>
			};
		</script>
	</iaixsl:if>
</iaixsl:if>


<iaixsl:if test="(/shop/page/projector/product/multiversions) and (count(/shop/page/projector/product/multiversions/multi_version) &gt; 1)">
	<div id="projector_variants_section" class="projector_details__multiversions projector_multiversions">
		<iaixsl:for-each select="/shop/page/projector/product/multiversions/multi_version">
			<div class="projector_multiversions__item">
				<iaixsl:attribute name="data-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
				<span class="projector_multiversions__label"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
				<div class="projector_multiversions__sub">
					<select class="projector_multiversions__select f-select">
						<iaixsl:for-each select="item">
							<iaixsl:variable name="value_name"><iaixsl:for-each select="values/value"><iaixsl:if test="not(position() = 1)"> / </iaixsl:if><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:for-each></iaixsl:variable>
							<option data-values_id="{values/@id}" data-value="{position()}" data-product="{products/product/@product_id}" data-link="{products/product/@url}" data-title="{$value_name}">
								<iaixsl:if test="@selected = 'true'">
									<iaixsl:attribute name="selected">selected</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:if test="@disabled = 'true'">
									<iaixsl:attribute name="class">--dependent</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:if test="values/value[@gfx]">
									<iaixsl:attribute name="data-gfx"><iaixsl:for-each select="values/value[@gfx]"><iaixsl:if test="not(position() = 1)">|next|</iaixsl:if><iaixsl:value-of select="@gfx"/></iaixsl:for-each></iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:if test="values/value[@gfx_second]">
									<iaixsl:attribute name="data-gfx_second"><iaixsl:for-each select="values/value[@gfx_second]"><iaixsl:if test="not(position() = 1)">|next|</iaixsl:if><iaixsl:value-of select="@gfx_second"/></iaixsl:for-each></iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:value-of select="$value_name"/>
							</option>
						</iaixsl:for-each>
					</select>
				</div>
			</div>
		</iaixsl:for-each>
	</div>
</iaixsl:if>


<iaixsl:if test="(/shop/page/projector/product/versions/@count &gt; 0) and not(count(/shop/page/projector/product/multiversions/multi_version) &gt; 1)">
	<div id="projector_variants_section" class="projector_details__variants projector_variants">
		<iaixsl:if test="(not($selectForVersions = '') and /shop/page/projector/product/versions/@count &gt; $selectForVersions) or count(/shop/page/projector/product/versions/version[not(@gfx)]) &gt; 0">
			<iaixsl:attribute name="data-select">true</iaixsl:attribute>
		</iaixsl:if>
		<span class="projector_variants__label"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/versions/@name"/></span>
		<div class="projector_variants__sub">
			<iaixsl:choose>
				<iaixsl:when test="(not($selectForVersions = '') and /shop/page/projector/product/versions/@count &gt; $selectForVersions) or count(/shop/page/projector/product/versions/version[not(@gfx)]) &gt; 0">
					<select class="projector_variants__select f-select">
						<iaixsl:for-each select="/shop/page/projector/product/versions/version">
							<option data-link="{@link}">
								<iaixsl:if test="@id = /shop/page/projector/product/@id">
									<iaixsl:attribute name="selected">selected</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:if test="@amount = '0'">
									<iaixsl:attribute name="class">--disabled</iaixsl:attribute>
									<iaixsl:attribute name="label"><iaixsl:value-of select="@name"/> (wyprzedane)</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:if test="@gfx">
									<iaixsl:attribute name="data-gfx"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:if test="@gfx_second">
									<iaixsl:attribute name="data-gfx_second"><iaixsl:value-of select="@gfx_second"/></iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:value-of select="@name"/>
							</option>
						</iaixsl:for-each>
					</select>
				</iaixsl:when>
				<iaixsl:otherwise>
					<iaixsl:for-each select="/shop/page/projector/product/versions/version">
						<a class="projector_variants__item" href="{@link}" title="{@name}">
							<iaixsl:attribute name="class">projector_variants__item<iaixsl:if test="@id = /shop/page/projector/product/@id"> --selected</iaixsl:if><iaixsl:if test="@amount = '0'"> --disabled</iaixsl:if></iaixsl:attribute>
							<iaixsl:if test="@gfx">
								<span class="projector_variants__gfx">
									<iaixsl:choose>
										<iaixsl:when test="@gfx_second and not(@gfx_second = '' or @gfx_second = '/')">
											<picture>
												<source type="image/webp" srcset="{@gfx}"/>
												<img src="{@gfx_second}" alt="{@name}"/>
											</picture>
										</iaixsl:when>
										<iaixsl:otherwise>
											<img src="{@gfx}" alt="{@name}"/>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</span>
							</iaixsl:if>
							<span class="projector_variants__name"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
						</a>
					</iaixsl:for-each>
				</iaixsl:otherwise>
			</iaixsl:choose>
		</div>
	</div>
</iaixsl:if>


<div id="projector_sizes_section" class="projector_sizes">
	<iaixsl:if test="/shop/page/projector/product/sizes/size/@type = 'onesize' or /shop/page/projector/product/sizes/size/@type = 'uniw'">
		<iaixsl:attribute name="data-onesize">true</iaixsl:attribute>
	</iaixsl:if>
	<iaixsl:if test="not($selectForSizes = '') and count(/shop/page/projector/product/sizes/size) &gt; $selectForSizes">
		<iaixsl:attribute name="data-select">true</iaixsl:attribute>
	</iaixsl:if>
	<span class="projector_sizes__label">Rozmiar</span>
	<div class="projector_sizes__sub">
		<iaixsl:choose>
			<iaixsl:when test="not($selectForSizes = '') and count(/shop/page/projector/product/sizes/size) &gt; $selectForSizes">
				<select form="{$ProjectorFormID}" name="projector_sizes" id="projector_sizes_select" class="projector_sizes__select f-select --placeholder">
					<iaixsl:attribute name="aria-label">Wybierz rozmiar</iaixsl:attribute>
					<option>Wybierz rozmiar</option>
					<iaixsl:for-each select="/shop/page/projector/product/sizes/size">
						<option value="{@type}" data-count="{@amount}" data-product-id="{../../@id}" data-size-type="{@type}">
							<iaixsl:if test="@selected = 'true'">
								<iaixsl:attribute name="selected">selected</iaixsl:attribute>
							</iaixsl:if>
							<iaixsl:if test="@amount = '0'">
								<iaixsl:attribute name="class">--disabled</iaixsl:attribute>
								<iaixsl:attribute name="label"><iaixsl:value-of select="@description"/> (wyprzedane)</iaixsl:attribute>
							</iaixsl:if>
							<iaixsl:if test="availability/@status_id">
								<iaixsl:attribute name="data-statusid"><iaixsl:value-of select="availability/status_id"/></iaixsl:attribute>
							</iaixsl:if>
							<iaixsl:value-of select="@description"/>
						</option>
					</iaixsl:for-each>
				</select>
			</iaixsl:when>
			<iaixsl:otherwise>
				<iaixsl:for-each select="/shop/page/projector/product/sizes/size">
					<a class="projector_sizes__item" data-product-id="{../../@id}" data-size-type="{@type}">
						<iaixsl:attribute name="class">projector_sizes__item<iaixsl:if test="not(@amount &gt; 0 or @amount = '-1')"> --disabled</iaixsl:if><iaixsl:if test="@selected = 'true'"> --selected</iaixsl:if></iaixsl:attribute>
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/@link"/><iaixsl:if test="not(@type = 'uniw' or @type = 'onesize')">?selected_size=<iaixsl:value-of select="@type"/></iaixsl:if></iaixsl:attribute>
						<span class="projector_sizes__name"><iaixsl:attribute name="aria-label">Rozmiar produktu: <iaixsl:value-of select="@description"/></iaixsl:attribute><iaixsl:value-of select="@description"/></span>
					</a>
				</iaixsl:for-each>
			</iaixsl:otherwise>
		</iaixsl:choose>
	</div>
</div>


<iaixsl:if test="(/shop/page/projector/text_sizesgroup and /shop/page/projector/text_sizesgroup != '') or /shop/page/projector/product/sizes_chart">
	<div id="projector_chart_section" class="projector_details__chart projector_chart">
		<a href="#showSizesCms" class="projector_chart__link">Sprawdź wymiary produktu</a>

		<iaixsl:if test="/shop/page/projector/product/sizes_chart">
			<div id="component_projector_sizes_cms_not" class="component_projector_sizes_chart">
				<iaixsl:if test="/shop/page/projector/product/sizes_chart/descriptions/description">
					<div class="table-responsive"> 
						<table class="ui-responsive table-stroke ui-table ui-table-reflow table-condensed">
							<thead>
								<tr>
									<th class="table-first-column">Rozmiar</th>
									<iaixsl:for-each select="/shop/page/projector/product/sizes_chart/descriptions/description">
										<th><iaixsl:value-of disable-output-escaping="yes" select="@name"/></th>
									</iaixsl:for-each>
								</tr>
							</thead>
							<tbody>
								<iaixsl:for-each select="/shop/page/projector/product/sizes_chart/sizes/size">
									<tr>
										<td class="table-first-column"><iaixsl:value-of disable-output-escaping="yes" select="@description"/></td>
										<iaixsl:for-each select="description">
											<td><iaixsl:value-of disable-output-escaping="yes" select="@text"/></td>
										</iaixsl:for-each>
									</tr>
								</iaixsl:for-each>
							</tbody>
						</table>
					</div>
				</iaixsl:if>
				<div class="sizes_chart_cms">
					<iaixsl:if test="/shop/page/projector/product/sizes_chart/text">
						<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/sizes_chart/text"/>
					</iaixsl:if>
				</div>
			</div>
		</iaixsl:if>
		<iaixsl:if test="not(/shop/page/projector/product/sizes_chart) and ((page/projector/text_sizesgroup) and (page/projector/text_sizesgroup != ''))">
			<div id="component_projector_sizes_cms_not" class="component_projector_sizes_chart">
				<div class="sizes_chart_cms">
					<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/text_sizesgroup"/>
				</div>
			</div>
		</iaixsl:if>
	</div>
</iaixsl:if>



<iaixsl:variable name="var_omnibus_min"><iaixsl:choose>
	<iaixsl:when test="not($nettoPrice = '')">
		<iaixsl:for-each select="/shop/page/projector/product/sizes/size[price/@omnibus_price_net]">
			<iaixsl:sort select="price/@omnibus_price_net" data-type="number"/>
			<iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@omnibus_price_net_formatted"/>#<iaixsl:value-of select="price/@omnibus_price_net"/></iaixsl:if>
		</iaixsl:for-each>
	</iaixsl:when>
	<iaixsl:otherwise>
		<iaixsl:for-each select="/shop/page/projector/product/sizes/size[price/@omnibus_price]">
			<iaixsl:sort select="price/@omnibus_price" data-type="number"/>
			<iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@omnibus_price_formatted"/>#<iaixsl:value-of select="price/@omnibus_price"/></iaixsl:if>
		</iaixsl:for-each>
	</iaixsl:otherwise>
</iaixsl:choose></iaixsl:variable>


<iaixsl:variable name="var_omnibus">
	<iaixsl:choose>
		
		<iaixsl:when test="$var_omnibus_enabled != 'true'"/>
		
		<iaixsl:when test="/shop/page/projector/product/sizes/prices and /shop/page/projector/product/sizes/prices/@maxprice_formatted != /shop/page/projector/product/sizes/prices/@minprice_formatted"/>
		<iaixsl:when test="$var_omnibus_min != ''">
			<iaixsl:value-of select="$var_omnibus_min"/>
		</iaixsl:when>
	</iaixsl:choose>
</iaixsl:variable>


<iaixsl:variable name="var_regular_price">
	<iaixsl:choose>
		<iaixsl:when test="not($nettoPrice = '') and not(/shop/page/projector/product/price/@maxprice_net) and not(page/projector/product/bundle_price/@price_net)"/>
		<iaixsl:when test="not(/shop/page/projector/product/price/@maxprice) and not(page/projector/product/bundle_price/@price_gross)"/>
		<iaixsl:when test="not($nettoPrice = '') and not(/shop/page/projector/product/price/@maxprice_net) and page/projector/product/bundle_price/@price_net">
			<iaixsl:value-of select="page/projector/product/bundle_price/@price_net_formatted"/>#<iaixsl:value-of select="page/projector/product/bundle_price/@price_net"/>
		</iaixsl:when>
		<iaixsl:when test="not(/shop/page/projector/product/price/@maxprice) and page/projector/product/bundle_price/@price_gross">
			<iaixsl:value-of select="page/projector/product/bundle_price/@price_gross_formatted"/>#<iaixsl:value-of select="page/projector/product/bundle_price/@price_gross"/>
		</iaixsl:when>
		<iaixsl:when test="not($nettoPrice = '') and page/projector/product/bundle_price/@price_net &gt; page/projector/product/price/@maxprice_net">
			<iaixsl:value-of select="page/projector/product/bundle_price/@price_net_formatted"/>#<iaixsl:value-of select="page/projector/product/bundle_price/@price_net"/>
		</iaixsl:when>
		<iaixsl:when test="page/projector/product/bundle_price/@price_gross &gt; page/projector/product/price/@maxprice">
			<iaixsl:value-of select="page/projector/product/bundle_price/@price_gross_formatted"/>#<iaixsl:value-of select="page/projector/product/bundle_price/@price_gross"/>
		</iaixsl:when>
		<iaixsl:when test="not(/shop/page/projector/product/price/@maxprice)"/>
		<iaixsl:when test="not($nettoPrice = '')">
			<iaixsl:value-of select="page/projector/product/price/@maxprice_net_formatted"/>#<iaixsl:value-of select="page/projector/product/price/@maxprice_net"/>
		</iaixsl:when>
		<iaixsl:otherwise>
			<iaixsl:value-of select="page/projector/product/price/@maxprice_formatted"/>#<iaixsl:value-of select="page/projector/product/price/@maxprice"/>
		</iaixsl:otherwise>
	</iaixsl:choose>
</iaixsl:variable>


<iaixsl:variable name="var_omnibus_short"><iaixsl:if test="$var_omnibus_enabled = 'true' and ($var_regular_price = $var_omnibus or $var_regular_price = '')">true</iaixsl:if></iaixsl:variable>


<iaixsl:variable name="var_omnibus_rebate_code"><iaixsl:if test="/shop/rebatecode/@activate_omnibus = 'true' and /shop/page/projector/product/price/@rebate_code_active = 'y'">true</iaixsl:if></iaixsl:variable>


<iaixsl:variable name="var_omnibus_higher"><iaixsl:for-each select="/shop/page/projector/product/sizes/size[price/@omnibus_price]">
	<iaixsl:sort select="price/@omnibus_price" data-type="number"/>
	<iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@omnibus_price_is_higher_than_selling_price"/></iaixsl:if>
</iaixsl:for-each></iaixsl:variable>


<iaixsl:variable name="var_beforerebate_price"><iaixsl:choose>
	<iaixsl:when test="/shop/page/projector/product/bundle_price"><iaixsl:choose>
		<iaixsl:when test="not($nettoPrice = '')">
			<iaixsl:value-of select="/shop/page/projector/product/price/@beforerebate_net_formatted"/>#<iaixsl:value-of select="/shop/page/projector/product/price/@beforerebate_net"/>
		</iaixsl:when>
		<iaixsl:otherwise>
			<iaixsl:value-of select="/shop/page/projector/product/price/@beforerebate_formatted"/>#<iaixsl:value-of select="/shop/page/projector/product/price/@beforerebate"/>
		</iaixsl:otherwise>
	</iaixsl:choose></iaixsl:when>
	<iaixsl:otherwise><iaixsl:choose>
		<iaixsl:when test="not($nettoPrice = '')">
			<iaixsl:for-each select="/shop/page/projector/product/sizes/size[price/@omnibus_price_net]">
				<iaixsl:sort select="price/@omnibus_price_net" data-type="number"/>
				<iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@beforerebate_net_formatted"/>#<iaixsl:value-of select="price/@beforerebate_net"/></iaixsl:if>
			</iaixsl:for-each>
		</iaixsl:when>
		<iaixsl:otherwise>
			<iaixsl:for-each select="/shop/page/projector/product/sizes/size[price/@omnibus_price]">
				<iaixsl:sort select="price/@omnibus_price" data-type="number"/>
				<iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@beforerebate_formatted"/>#<iaixsl:value-of select="price/@beforerebate"/></iaixsl:if>
			</iaixsl:for-each>
		</iaixsl:otherwise>
	</iaixsl:choose></iaixsl:otherwise>
</iaixsl:choose></iaixsl:variable>


<iaixsl:variable name="var_beforerebate_short"><iaixsl:if test="$var_beforerebate_price = $var_omnibus">true</iaixsl:if></iaixsl:variable>


<iaixsl:variable name="var_beforerebate_percent"><iaixsl:for-each select="/shop/page/projector/product/sizes/size[price/@omnibus_price]">
	<iaixsl:sort select="price/@omnibus_price" data-type="number"/>
	<iaixsl:if test="position() = 1">-<iaixsl:value-of select="price/@beforerebate_yousave_percent"/>%</iaixsl:if>
</iaixsl:for-each></iaixsl:variable>


<iaixsl:variable name="var_omnibus_percent"><iaixsl:for-each select="/shop/page/projector/product/sizes/size[price/@omnibus_price]">
	<iaixsl:sort select="price/@omnibus_price" data-type="number"/>
	<iaixsl:if test="position() = 1"><iaixsl:choose><iaixsl:when test="price/@omnibus_yousave_percent = '0'"/><iaixsl:when test="$var_omnibus_higher = 'false'">+</iaixsl:when><iaixsl:otherwise>-</iaixsl:otherwise></iaixsl:choose><iaixsl:value-of select="price/@omnibus_yousave_percent"/>%</iaixsl:if>
</iaixsl:for-each></iaixsl:variable>


<iaixsl:variable name="var_regular_percent"><iaixsl:choose>
	<iaixsl:when test="not($nettoPrice = '') and not(/shop/page/projector/product/price/@maxprice_net) and not(page/projector/product/bundle_price/@price_net)"/>
	<iaixsl:when test="not(/shop/page/projector/product/price/@maxprice) and not(page/projector/product/bundle_price/@price_gross)"/>
	<iaixsl:when test="not($nettoPrice = '') and not(/shop/page/projector/product/price/@maxprice_net) and page/projector/product/bundle_price/@price_net">-<iaixsl:value-of select="/shop/page/projector/product/bundle_price/@percent_diff"/>%</iaixsl:when>
	<iaixsl:when test="not(/shop/page/projector/product/price/@maxprice) and page/projector/product/bundle_price/@price_gross">-<iaixsl:value-of select="/shop/page/projector/product/bundle_price/@percent_diff"/>%</iaixsl:when>
	<iaixsl:when test="not($nettoPrice = '') and page/projector/product/bundle_price/@price_net &gt; page/projector/product/price/@maxprice_net">-<iaixsl:value-of select="/shop/page/projector/product/bundle_price/@percent_diff"/>%</iaixsl:when>
	<iaixsl:when test="page/projector/product/bundle_price/@price_gross &gt; page/projector/product/price/@maxprice">-<iaixsl:value-of select="/shop/page/projector/product/bundle_price/@percent_diff"/>%</iaixsl:when>
	<iaixsl:when test="not(/shop/page/projector/product/price/@maxprice)"/>
	<iaixsl:when test="not($nettoPrice = '')">-<iaixsl:value-of select="/shop/page/projector/product/price/@yousave_percent"/>%</iaixsl:when>
	<iaixsl:otherwise>-<iaixsl:value-of select="/shop/page/projector/product/price/@yousave_percent"/>%</iaixsl:otherwise>
</iaixsl:choose></iaixsl:variable>


<iaixsl:variable name="var_new_price_date"><iaixsl:choose>
	<iaixsl:when test="$var_omnibus_rebate_code != ''"/>
	<iaixsl:otherwise><iaixsl:for-each select="/shop/page/projector/product/sizes/size[price/@omnibus_price]">
	<iaixsl:sort select="price/@omnibus_price" data-type="number"/>
	<iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@omnibus_new_price_effective_until"/></iaixsl:if>
</iaixsl:for-each></iaixsl:otherwise>
</iaixsl:choose></iaixsl:variable>


<iaixsl:variable name="projector_omnibus_variable_class"><iaixsl:if test="/shop/page/projector/product/price/@value = 0 and /shop/page/projector/product/price/@points &gt; 0"> --only-points</iaixsl:if><iaixsl:if test="$var_omnibus != ''"> --omnibus<iaixsl:if test="$var_omnibus_short = 'true'"> --omnibus-short</iaixsl:if><iaixsl:if test="$var_omnibus_rebate_code != ''"> --omnibus-code<iaixsl:if test="$var_beforerebate_short != ''"> --omnibus-code-short</iaixsl:if></iaixsl:if><iaixsl:if test="$var_new_price_date != ''"> --omnibus-new-price</iaixsl:if><iaixsl:if test="$var_omnibus_higher = 'true' and $var_new_price_date = ''"> --omnibus-higher</iaixsl:if></iaixsl:if></iaixsl:variable>

<div id="projector_status_section" class="projector_status_section">
	
	<div class="projector_info__item --status projector_status --status-hide" id="projector_status">
		<iaixsl:choose>
			<iaixsl:when test="/shop/page/projector/product/sizes/size[not(@amount_mw = 0)]">
				<iaixsl:if test="/shop/page/projector/product/sizes/size[not(@amount_mw = 0)]/availability/@visible = 'n'">
					<iaixsl:attribute name="class">projector_info__item --status projector_status --status-hide</iaixsl:attribute>
				</iaixsl:if>
			</iaixsl:when>
			<iaixsl:when test="/shop/page/projector/product/sizes/size[not(@amount = 0)]">
				<iaixsl:if test="/shop/page/projector/product/sizes/size[not(@amount = 0)]/availability/@visible = 'n'">
					<iaixsl:attribute name="class">projector_info__item --status projector_status --status-hide</iaixsl:attribute>
				</iaixsl:if>
			</iaixsl:when>
			<iaixsl:when test="/shop/page/projector/product/sizes/size/availability/@visible = 'n'">
					<iaixsl:attribute name="class">projector_info__item --status projector_status --status-hide</iaixsl:attribute>
			</iaixsl:when>
		</iaixsl:choose>

		<div id="projector_status_wrapper" class="projector_status__wrapper">
			
			<iaixsl:if test="not(/shop/page/projector/product/@product_type = 'product_service') and not(/shop/page/projector/product/@product_type = 'product_bundle')">
				<div id="projector_shipping_info" class="projector_status__info --hide">
					<strong class="projector_status__info_amount --hide" id="projector_amount"><iaixsl:attribute name="data-status-pattern">%d</iaixsl:attribute></strong>
				</div>
			</iaixsl:if>

			
			<div class="projector_status__description" id="projector_status_description">
				<iaixsl:choose>
					<iaixsl:when test="/shop/page/projector/product/sizes/size[not(@amount_mw = 0)]/availability/@status_description">
						<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/sizes/size[not(@amount_mw = 0)]/availability/@status_description"/>
					</iaixsl:when>
					<iaixsl:when test="/shop/page/projector/product/sizes/size[not(@amount = 0)]/availability/@status_description">
						<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/sizes/size[not(@amount = 0)]/availability/@status_description"/>
					</iaixsl:when>
					<iaixsl:otherwise>
						<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/sizes/size/availability/@status_description"/>
					</iaixsl:otherwise>
				</iaixsl:choose>
			</div>
		</div>
	</div>

	
	<div id="projector_shipping_unknown" class="projector_status__unknown --hide">
		<span class="projector_status__unknown_text">
			<a href="{/shop/contact/link/@url}" target="_blank">Skontaktuj się z obsługą sklepu</a>, aby oszacować czas przygotowania tego produktu do wysyłki.
		</span>
	</div>

	
	<div class="projector_info__item --shipping projector_shipping --inactive" id="projector_shipping_dialog">
		<iaixsl:if test="not((/shop/page/projector/product/sizes/size/availability/delay_time/@unknown_delivery_time = 'true') or (/shop/page/projector/bundled/product/sizes/size/availability/delay_time/@unknown_delivery_time = 'true') or /shop/page/projector/product/@product_type = 'product_service') or $ProjectorShippingAlwaysVisible = 'true'">
			<iaixsl:attribute name="class">projector_info__item --shipping projector_shipping --active</iaixsl:attribute>
		</iaixsl:if>
		<span class="projector_status__info_label --hide" id="projector_delivery_label">Wysyłka </span>
		<span class="projector_status__info_days --hide" id="projector_delivery_days"/>
		<a class="projector_shipping__info projector_info__link" href="#shipping_info">
			<span class="projector_shipping__text">Sprawdź czasy i koszty wysyłki</span>
		</a>
	</div>
</div>


<div id="projector_prices_section" class="projector_prices {$projector_omnibus_variable_class}">
	
	<div class="projector_prices__price_wrapper">
		<iaixsl:choose>
			<iaixsl:when test="/shop/page/projector/product/price/@value = 0">
				<h2 class="projector_prices__price" id="projector_price_value" data-price="0">
					<iaixsl:if test="/shop/page/projector/product/sizes/prices and /shop/page/projector/product/sizes/prices/@maxprice_formatted != /shop/page/projector/product/sizes/prices/@minprice_formatted">
						<span class="projector_prices__range">
							<span data-range-type="min">
								<iaixsl:choose>
									<iaixsl:when test="not($nettoPrice = '')">
										<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@minprice_net_formatted"/>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@minprice_formatted"/>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</span>
								 - 
							<span data-range-type="max">
								<iaixsl:choose>
									<iaixsl:when test="not($nettoPrice = '')">
										<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@maxprice_net_formatted"/>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@maxprice_formatted"/>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</span>
						</span>
					</iaixsl:if>

					<a class="projector_prices__contact" href="{/shop/contact/link/@url}" target="_blank">
						<img src="{/shop/page/projector/product/sizes/size/availability/@status_gfx_tel}" alt="{/shop/page/projector/product/sizes/size/availability/@status_description_tel}"/>
						<span><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/sizes/size/availability/@status_description_tel"/></span>
					</a>
				</h2>
			</iaixsl:when>
			<iaixsl:otherwise>
				<h2 class="projector_prices__price" id="projector_price_value">
					<iaixsl:attribute name="data-price"><iaixsl:choose>
						<iaixsl:when test="not($nettoPrice = '')">
							<iaixsl:value-of select="page/projector/product/price/@price_net"/>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:value-of select="page/projector/product/price/@value"/>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:attribute>
					<iaixsl:choose>
						<iaixsl:when test="/shop/page/projector/product/sizes/prices and /shop/page/projector/product/sizes/prices/@maxprice_formatted != /shop/page/projector/product/sizes/prices/@minprice_formatted">
							<span data-range-type="min">
								<iaixsl:choose>
									<iaixsl:when test="not($nettoPrice = '')">
										<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@minprice_net_formatted"/>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@minprice_formatted"/>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</span>
								 - 
							<span data-range-type="max">
								<iaixsl:choose>
									<iaixsl:when test="not($nettoPrice = '')">
										<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@maxprice_net_formatted"/>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@maxprice_formatted"/>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</span>
						</iaixsl:when>
						<iaixsl:otherwise>
							<span>
								<iaixsl:choose>
									<iaixsl:when test="not($nettoPrice = '')">
										<iaixsl:value-of select="page/projector/product/price/@price_net_formatted"/>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:value-of select="page/projector/product/price/@price_formatted"/>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</span>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</h2>
				<div class="projector_prices__info">
					<span class="projector_prices__vat">
						<span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span>
					</span>
					<span class="projector_prices__unit_sep">
							/
					</span>
					<span class="projector_prices__unit_sellby" id="projector_price_unit_sellby">
						<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/>
					</span>
					<span class="projector_prices__unit" id="projector_price_unit">
						<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/>
					</span>
					<iaixsl:if test="/shop/page/projector/bundled/@collection = 'true'">
						<span class="projector_prices__collection_selected"> wybranych produktów</span>
					</iaixsl:if>
					
					<iaixsl:if test="/shop/page/projector/product/subscriptions/subscription">
						<span class="projector_prices__period"> / co <span class="projector_prices__period_value" data-change-literal-days="{$firstDaysInPeriod}"><iaixsl:value-of select="$firstDaysInPeriod"/> dni</span></span>
					</iaixsl:if>
				</div>
			</iaixsl:otherwise>
		</iaixsl:choose>
	</div>

	
	<iaixsl:if test="/shop/page/projector/product/price/@unit_converted_price">
		<small class="projector_prices__unit_converted_price">(<iaixsl:choose>
			<iaixsl:when test="not($nettoPrice = '')"><iaixsl:value-of select="/shop/page/projector/product/price/@unit_converted_price_net_formatted"/></iaixsl:when>
			<iaixsl:otherwise><iaixsl:value-of select="/shop/page/projector/product/price/@unit_converted_price_formatted"/></iaixsl:otherwise>
		</iaixsl:choose> / <iaixsl:value-of select="/shop/page/projector/product/price/@unit_converted_format"/>)</small>
	</iaixsl:if>

	
	<div class="projector_prices__lowest_price omnibus_price">
		<span class="omnibus_price__text">Najniższa cena produktu w okresie 30 dni przed wprowadzeniem obniżki: </span><del id="projector_omnibus_price_value" class="omnibus_price__value" data-price="{substring-after($var_omnibus, '#')}"><iaixsl:value-of select="substring-before($var_omnibus, '#')"/></del>
		<span class="projector_prices__unit_sep">
				/
		</span>
		<span class="projector_prices__unit_sellby" style="display:none">
			<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/>
		</span>
		<span class="projector_prices__unit">
			<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/>
		</span>
		<span class="projector_prices__percent" id="projector_omnibus_percent"><iaixsl:value-of select="$var_omnibus_percent"/></span>
	</div>

	
	<div class="projector_prices__maxprice_wrapper --active" id="projector_price_maxprice_wrapper">
		<span class="projector_prices__maxprice_label">Cena regularna: </span><del id="projector_price_maxprice" class="projector_prices__maxprice" data-price="{substring-after($var_regular_price, '#')}">
			<iaixsl:value-of select="substring-before($var_regular_price, '#')"/>
		</del>
		<span class="projector_prices__unit_sep">
				/
		</span>
		<span class="projector_prices__unit_sellby" style="display:none">
			<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/>
		</span>
		<span class="projector_prices__unit">
			<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/>
		</span>
		<span class="projector_prices__percent" id="projector_maxprice_percent"><iaixsl:value-of select="$var_regular_percent"/></span>
	</div>

	
	<iaixsl:if test="$var_omnibus_rebate_code != '' and $var_beforerebate_price !=''">
		<div class="projector_prices__beforerebate_wrapper" id="projector_price_beforerebate_wrapper">
			<span class="projector_prices__beforerebate_label">Cena bez kodu: </span><del id="projector_price_beforerebate" class="projector_prices__beforerebate" data-price="{substring-after($var_beforerebate_price, '#')}">
				<iaixsl:value-of select="substring-before($var_beforerebate_price, '#')"/>
			</del>
			<span class="projector_prices__unit_sep">
					/
			</span>
			<span class="projector_prices__unit_sellby" style="display:none">
				<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/>
			</span>
			<span class="projector_prices__unit">
				<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/>
			</span>
			<span class="projector_prices__percent" id="projector_beforerebate_percent"><iaixsl:value-of select="$var_beforerebate_percent"/></span>
		</div>
	</iaixsl:if>

	
	<iaixsl:if test="$var_new_price_date != '' and $var_regular_price != ''">
		<div class="projector_prices__new_price_wrapper" id="projector_price_new_price_wrapper">
			<span class="projector_prices__new_price_label">Cena nadchodząca od<iaixsl:text disable-output-escaping="yes"> </iaixsl:text><span class="projector_prices__new_price_date"><iaixsl:value-of select="$var_new_price_date"/></span><iaixsl:text disable-output-escaping="yes">: </iaixsl:text></span>
			<span class="projector_prices__new_price_value" id="projector_new_price_value" data-price="{substring-after($var_regular_price, '#')}"><iaixsl:value-of select="substring-before($var_regular_price, '#')"/></span>
		</div>
	</iaixsl:if>

	
	<iaixsl:if test="/shop/page/projector/@srp_in_product_details = 'true'">
		<div class="projector_prices__srp_wrapper --active" id="projector_price_srp_wrapper">
			<iaixsl:if test="not(/shop/page/projector/product/price/@srp)">
				<iaixsl:attribute name="class">projector_prices__srp_wrapper</iaixsl:attribute>
			</iaixsl:if>
			<span class="projector_prices__srp_label">Cena sugerowana:</span>
			<span class="projector_prices__srp" id="projector_price_srp">
				<iaixsl:choose>
					<iaixsl:when test="not($nettoPrice = '')">
						<iaixsl:attribute name="data-price"><iaixsl:value-of select="/shop/page/projector/product/price/@srp_net"/></iaixsl:attribute>
						<iaixsl:value-of select="/shop/page/projector/product/price/@srp_net_formatted"/>
					</iaixsl:when>
					<iaixsl:otherwise>
						<iaixsl:attribute name="data-price"><iaixsl:value-of select="/shop/page/projector/product/price/@srp"/></iaixsl:attribute>
						<iaixsl:value-of select="/shop/page/projector/product/price/@srp_formatted"/>
					</iaixsl:otherwise>
				</iaixsl:choose>
			</span>
		</div>
	</iaixsl:if>

	<div class="projector_prices__points --active" id="projector_points_wrapper">
		<iaixsl:if test="not(/shop/page/projector/product/@for_points='true' or page/projector/product/price/@points &gt; 0)">
			<iaixsl:attribute name="class">projector_prices__points</iaixsl:attribute>
		</iaixsl:if>
		<div class="projector_prices__points_wrapper" id="projector_price_points_wrapper">
			<iaixsl:choose>
				<iaixsl:when test="not(/shop/basket/@login)">
					<span id="projector_button_points_basket" class="projector_prices__points_buy">
						<iaixsl:attribute name="title">Zaloguj się, aby kupić ten produkt za punkty</iaixsl:attribute>
						<span class="projector_prices__points_price_text">Możesz kupić za </span>
						<span class="projector_prices__points_price" id="projector_price_points" data-price="{page/projector/product/price/@points}"><iaixsl:value-of select="page/projector/product/price/@points"/><span class="projector_currency"> pkt.</span></span>
					</span>
				</iaixsl:when>
				<iaixsl:otherwise>
					<button form="{$ProjectorFormID}" id="projector_button_points_basket" type="submit" name="forpoints" value="1" class="projector_prices__points_buy">
						<span class="projector_prices__points_price_text">Kup za </span>
						<span class="projector_prices__points_price" id="projector_price_points" data-price="{page/projector/product/price/@points}"><iaixsl:value-of select="page/projector/product/price/@points"/><span class="projector_currency"> pkt.</span></span>
					</button>
				</iaixsl:otherwise>
			</iaixsl:choose>
		</div>
	</div>

	
	<iaixsl:if test="/shop/page/projector/product/sizes/@unit_sellby != '1'">
		<div class="projector_prices__sellby">
			<span class="projector_prices__sellby_label">Sprzedawane po:</span>
			<span class="projector_prices__sellby_value"><iaixsl:value-of select="page/projector/product/sizes/@unit_sellby"/><span class="projector_prices__sellby_unit"><iaixsl:value-of select="page/projector/product/sizes/@unit"/></span></span>
			<span class="projector_prices__sellbyprice_wrapper" id="projector_sellbyprice_wrapper"> (<span id="projector_sellbyprice"><iaixsl:choose>
				<iaixsl:when test="not($nettoPrice = '')"><iaixsl:attribute name="data-price"><iaixsl:value-of select="/shop/page/projector/product/price/@price_net"/></iaixsl:attribute><iaixsl:value-of select="/shop/page/projector/product/price/@price_net_formatted"/></iaixsl:when>
				<iaixsl:otherwise><iaixsl:attribute name="data-price"><iaixsl:value-of select="/shop/page/projector/product/price/@value"/></iaixsl:attribute><iaixsl:value-of select="/shop/page/projector/product/price/@price_formatted"/></iaixsl:otherwise>
			</iaixsl:choose></span> / 1 <iaixsl:value-of select="page/projector/product/sizes/@unit_single"/>)</span>
		</div>
	</iaixsl:if>

	
	<iaixsl:if test="/shop/page/projector/product/price/@deposit_price or /shop/page/projector/product/price/@total_deposit">
		<div class="projector_prices__deposit --active" id="projector_price_deposit">
			<span class="projector_prices__deposit_label">+ kaucja</span>
			<strong clsas="projector_prices__deposit_value" id="projector_price_deposit_value"><iaixsl:choose>
				<iaixsl:when test="not($nettoPrice = '')">
					<iaixsl:choose>
						<iaixsl:when test="/shop/page/projector/product/price/@total_deposit_net_formatted">
							<iaixsl:attribute name="data-price"><iaixsl:value-of select="/shop/page/projector/product/price/@total_deposit_net"/></iaixsl:attribute>
							<iaixsl:value-of select="/shop/page/projector/product/price/@total_deposit_net_formatted"/>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:attribute name="data-price"><iaixsl:value-of select="/shop/page/projector/product/price/@deposit_price_net"/></iaixsl:attribute>
							<iaixsl:value-of select="/shop/page/projector/product/price/@deposit_price_net_formatted"/>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</iaixsl:when>
				<iaixsl:otherwise>
					<iaixsl:choose>
						<iaixsl:when test="/shop/page/projector/product/price/@total_deposit_formatted">
							<iaixsl:attribute name="data-price"><iaixsl:value-of select="/shop/page/projector/product/price/@total_deposit"/></iaixsl:attribute>
							<iaixsl:value-of select="/shop/page/projector/product/price/@total_deposit_formatted"/>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:attribute name="data-price"><iaixsl:value-of select="/shop/page/projector/product/price/@deposit_price"/></iaixsl:attribute>
							<iaixsl:value-of select="/shop/page/projector/product/price/@deposit_price_formatted"/>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</iaixsl:otherwise>
			</iaixsl:choose></strong>
		</div>
	</iaixsl:if>
</div>


<iaixsl:if test="page/projector/product/price/@advanceprice_formatted">
	<div class="projector_details__advanceprice" id="projector_advanceprice_section">
		Przed realizacją zamówienia z tym produktem, może być konieczne opłacenie zaliczki w kwocie <b id="projector_advanceprice"><iaixsl:choose>
			<iaixsl:when test="not($nettoPrice = '')"><iaixsl:attribute name="data-price"><iaixsl:value-of select="page/projector/product/price/@advanceprice_net"/></iaixsl:attribute><iaixsl:value-of select="page/projector/product/price/@advanceprice_net_formatted"/></iaixsl:when>
			<iaixsl:otherwise><iaixsl:attribute name="data-price"><iaixsl:value-of select="page/projector/product/price/@advanceprice"/></iaixsl:attribute><iaixsl:value-of select="page/projector/product/price/@advanceprice_formatted"/></iaixsl:otherwise>
		</iaixsl:choose></b>. Dokładne informacje zostaną podane w podsumowaniu zamówienia, przed jego złożeniem.
	</div>
</iaixsl:if>


<div id="projector_buttons_section" class="projector_buy" data-buttons-variant="{$ProjectorButtonsVariant}">
  <iaixsl:attribute name="class">projector_buy<iaixsl:if test="count(/shop/page/projector/product/sizes/size[availability/@status='disable']) = count(/shop/page/projector/product/sizes/size)"> --hidden</iaixsl:if></iaixsl:attribute>
	<iaixsl:choose>
		<iaixsl:when test="$ProjectorButtonsVariant = 'range-with-button'">
			<iaixsl:if test="not((/shop/page/projector/product/@product_type = 'product_virtual') or (/shop/page/projector/product/@product_type = 'product_bundle' and not(count(/shop/page/projector/bundled/product[@product_type = 'product_virtual']) = 0)))">
				<div class="projector_buy__number_wrapper">
					<button class="projector_buy__number_down projector_buy__number_range" type="button" data-range-type="down">-</button>
					<input class="projector_buy__number" type="number" name="number" id="projector_number">
						
						<iaixsl:choose>
							<iaixsl:when test="/shop/page/projector/product/subscriptions/@minimum_quantity">
								<iaixsl:attribute name="data-prev"><iaixsl:value-of select="/shop/page/projector/product/subscriptions/@minimum_quantity"/></iaixsl:attribute>
								<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/projector/product/subscriptions/@minimum_quantity"/></iaixsl:attribute>
								<iaixsl:attribute name="data-minimum-quantity-subscription"><iaixsl:value-of select="/shop/page/projector/product/subscriptions/@minimum_quantity"/></iaixsl:attribute>
							</iaixsl:when>
							<iaixsl:otherwise>
								<iaixsl:attribute name="data-prev"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/></iaixsl:attribute>
								<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/></iaixsl:attribute>
							</iaixsl:otherwise>
						</iaixsl:choose>
						
						<iaixsl:if test="/shop/page/projector/product/order_quantity_range/min_quantity_per_order">
							<iaixsl:attribute name="data-minimum-quantity"><iaixsl:value-of select="/shop/page/projector/product/order_quantity_range/min_quantity_per_order/text()"/></iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:attribute name="data-sellby"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/></iaixsl:attribute>
						<iaixsl:attribute name="step"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/></iaixsl:attribute>
					</input>
					<button class="projector_buy__number_up projector_buy__number_range" type="button" data-range-type="up">+</button>
				</div>
			</iaixsl:if>
		</iaixsl:when>
		<iaixsl:when test="not($ProjectorButtonsVariant = 'range-with-button')">
			<iaixsl:if test="not((/shop/page/projector/product/@product_type = 'product_virtual') or (/shop/page/projector/product/@product_type = 'product_bundle' and not(count(/shop/page/projector/bundled/product[@product_type = 'product_virtual']) = 0)))">
				<div class="projector_buy__number_wrapper">
					<div class="projector_buy__number_inputs">
						<select class="projector_buy__number f-select">
							<iaixsl:if test="page/projector/product/exchange/@exchange_id">
								<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
							</iaixsl:if>
							
							<option value="{format-number(1 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####')}">
								
								<iaixsl:if test="(format-number(1 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####')) = /shop/page/projector/product/subscriptions/@minimum_quantity or not(/shop/page/projector/product/subscriptions/@minimum_quantity)">
									<iaixsl:attribute name="selected">selected</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:value-of select="translate(format-number(1 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####'), '.', ',')"/>
							</option>
							<option value="{format-number(2 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####')}">
								
								<iaixsl:if test="(format-number(2 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####')) = /shop/page/projector/product/subscriptions/@minimum_quantity">
									<iaixsl:attribute name="selected">selected</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:value-of select="translate(format-number(2 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####'), '.', ',')"/>
							</option>
							<option value="{format-number(3 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####')}">
								
								<iaixsl:if test="(format-number(3 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####')) = /shop/page/projector/product/subscriptions/@minimum_quantity">
									<iaixsl:attribute name="selected">selected</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:value-of select="translate(format-number(3 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####'), '.', ',')"/>
							</option>
							<option value="{format-number(4 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####')}">
								
								<iaixsl:if test="(format-number(4 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####')) = /shop/page/projector/product/subscriptions/@minimum_quantity">
									<iaixsl:attribute name="selected">selected</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:value-of select="translate(format-number(4 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####'), '.', ',')"/>
							</option>
							<option value="{format-number(5 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####')}">
								
								<iaixsl:if test="(format-number(5 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####')) = /shop/page/projector/product/subscriptions/@minimum_quantity">
									<iaixsl:attribute name="selected">selected</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:value-of select="translate(format-number(5 * /shop/page/projector/product/sizes/@unit_sellby, '0.#####'), '.', ',')"/>
							</option>
							<option data-more="true">
								więcej
							</option>
						</select>
						<div class="projector_buy__more">
							<input form="{$ProjectorFormID}" class="projector_buy__more_input" type="number" name="number" id="projector_number" data-sellby="{/shop/page/projector/product/sizes/@unit_sellby}" step="{/shop/page/projector/product/sizes/@unit_sellby}">
								<iaixsl:attribute name="aria-label">Ilość produktów</iaixsl:attribute>
								<iaixsl:attribute name="data-prev"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/></iaixsl:attribute>
								<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/></iaixsl:attribute>
								
								<iaixsl:if test="/shop/page/projector/product/order_quantity_range/min_quantity_per_order">
									<iaixsl:attribute name="data-minimum-quantity"><iaixsl:value-of select="/shop/page/projector/product/order_quantity_range/min_quantity_per_order/text()"/></iaixsl:attribute>
								</iaixsl:if>
								
								<iaixsl:if test="$ProjectorButtonsVariant = 'only-buy-button'">
									<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
								</iaixsl:if>
							</input>
						</div>
					</div>
					<div class="projector_buy__number_amounts d-none">
						<span class="number_description">z </span>
						<span class="number_amount"/>
						<span class="number_unit"> </span>
					</div>
				</div>
			</iaixsl:if>
		</iaixsl:when>
	</iaixsl:choose>

	
	<button form="{$ProjectorFormID}" class="projector_buy__button btn --solid --large" id="projector_button_basket" type="submit">
		<iaixsl:choose>
			
			<iaixsl:when test="/shop/page/projector/product/subscriptions/subscription">
				<iaixsl:attribute name="data-subscription-name">Dodaj do koszyka</iaixsl:attribute>
				<iaixsl:attribute name="data-normal-name">Dodaj do koszyka</iaixsl:attribute>
				Dodaj do koszyka
			</iaixsl:when>
			<iaixsl:when test="page/projector/product/exchange/@exchange_id">
				Wymień produkt
			</iaixsl:when>
			<iaixsl:when test="/shop/page/projector/bundled/@collection = 'true'">
				Dodaj do koszyka
			</iaixsl:when>
			<iaixsl:otherwise>
				Dodaj do koszyka
			</iaixsl:otherwise>
		</iaixsl:choose>
	</button>

		
	<a class="projector_buy__shopping_list" href="#addToShoppingList">
		<iaixsl:attribute name="title">Kliknij, aby dodać produkt do ulubiony</iaixsl:attribute>
	</a>
</div>


<div id="projector_tell_availability_section" class="projector_tell_availability_section projector_tell_availability" data-buttons-variant="{$ProjectorButtonsVariant}">
  <iaixsl:if test="count(/shop/page/projector/product/sizes/size[availability/@status='disable']) = count(/shop/page/projector/product/sizes/size)"><iaixsl:attribute name="class">projector_tell_availability_section projector_tell_availability --visible</iaixsl:attribute></iaixsl:if>
	<div class="projector_tell_availability__block --link">
		<a class="projector_tell_availability__link btn --solid --large tell_availability_link_handler" href="#tellAvailability">Powiadom o dostępności<i class="icon-bell"/></a>
	</div>

		
	<a class="projector_buy__shopping_list" href="#addToShoppingList">
		<iaixsl:attribute name="title">Kliknij, aby dodać produkt do ulubiony</iaixsl:attribute>
	</a>
</div>

<script>
  app_shop.vars.privatePolicyUrl = &quot;<iaixsl:value-of select="/shop/action/private_policy/@url"/>&quot;;
</script>


<iaixsl:if test="/shop/expressCheckout/payment or /shop/oneclick/payment or /shop/inpostCheckout/payment[@id = 'inpostPay'] or /shop/oneclickSubscription/payment">
  
  <div id="projector_oneclick_section" class="projector_oneclick_section">
		<iaixsl:if test="(count(/shop/page/projector/product/sizes/size[availability/@status='disable']) = count(/shop/page/projector/product/sizes/size))">
			<iaixsl:attribute name="class">projector_oneclick_section --hidden</iaixsl:attribute>
		</iaixsl:if>
  	
  	<iaixsl:if test="$ProjectorExpressCheckoutEnabled = 'true'">
  		<express-checkout/>
  	</iaixsl:if>
  
  	
  	<iaixsl:if test="/shop/oneclick/payment or /shop/inpostCheckout/payment[@id = 'inpostPay'] or /shop/oneclickSubscription/payment">
  		<div class="projector_oneclick__wrapper">
  			<iaixsl:if test="/shop/oneclick/payment or /shop/inpostCheckout/payment[@id = 'inpostPay']">
  				<iaixsl:attribute name="data-normal">true</iaixsl:attribute>
  			</iaixsl:if>
  			<iaixsl:if test="/shop/oneclickSubscription/payment">
  				<iaixsl:attribute name="data-subscription">true</iaixsl:attribute>
  			</iaixsl:if>
  			<div class="projector_oneclick__label">
  				Możesz kupić także poprzez:
  			</div>
  
  			
  			<iaixsl:if test="/shop/inpostCheckout/payment[@id = 'inpostPay']">
  				
  				<div class="projector_details__inpost_pay projector_inpost_pay" id="inpostPay" data-id="inpostPay" data-basket-by-front="{/shop/inpostCheckout/payment/@isBasketAddingByFront}" data-normal-purchase="true">
  					<iaixsl:if test="not(/shop/inpostCheckout/payment[@id = 'inpostPay']/@basket_only = 'true')">
  						<img class="projector_inpost_pay__icon" src="{/shop/inpostCheckout/payment[@id = 'inpostPay']/@icon}" alt="{/shop/inpostCheckout/payment[@id = 'inpostPay']/@name}"/>
  					</iaixsl:if>
  				</div>
  			</iaixsl:if>
  
  			
  			<iaixsl:if test="/shop/oneclick/payment or /shop/oneclickSubscription/payment">
  				<div class="projector_details__oneclick projector_oneclick" data-lang="{/shop/language/option[@selected ='true']/@id}" data-hide="{/shop/page/projector/product/name = ''}">
  					<div class="projector_oneclick__items">
  						<iaixsl:for-each select="/shop/oneclick/payment | /shop/oneclickSubscription/payment">
  							<div data-id="{@id}">
  								<iaixsl:attribute name="class">projector_oneclick__item --<iaixsl:value-of select="@id"/><iaixsl:if test="@preloading"> --loading</iaixsl:if></iaixsl:attribute>
  								<iaixsl:attribute name="title">Kliknij i kup bez potrzeby rejestracji z <iaixsl:value-of select="@name"/></iaixsl:attribute>
  								<iaixsl:attribute name="id">oneclick_<iaixsl:value-of select="@id"/><iaixsl:if test="../self::oneclickSubscription">Subscription</iaixsl:if></iaixsl:attribute>
  								<iaixsl:choose>
  									<iaixsl:when test="../self::oneclick">
  										<iaixsl:attribute name="data-normal-purchase">true</iaixsl:attribute>
  									</iaixsl:when>
  									<iaixsl:otherwise>
  										<iaixsl:attribute name="data-subscription-purchase">true</iaixsl:attribute>
  									</iaixsl:otherwise>
  								</iaixsl:choose>
  								<iaixsl:if test="not(@basket_only = 'true')">
  									<img class="projector_oneclick__icon" src="{@icon}" alt="{@name}"/>
  								</iaixsl:if>
  							</div>
  						</iaixsl:for-each>
  					</div>
  				</div>
  			</iaixsl:if>
  		</div>
  	</iaixsl:if>
  </div>
</iaixsl:if>


<iaixsl:if test="$ProjectorMultipackEnabled = 'true' and /shop/page/projector/product/sizes/size[1]/price/rebateNumber and not((/shop/page/projector/product/@product_type = 'product_virtual') or (/shop/page/projector/product/@product_type = 'product_bundle' and not(count(/shop/page/projector/bundled/product[@product_type = 'product_virtual']) = 0)))">
	
	<div class="projector_multipack" id="projector_rebate_number_section">
		<strong class="projector_multipack__label">Zamów więcej, zapłać mniej!</strong>
		<div class="projector_multipack__wrapper">
			<iaixsl:for-each select="page/projector/product/sizes/size[1]/price/rebateNumber/rebate">
				<div class="projector_multipack__item f-group --radio">
					<iaixsl:attribute name="data-value"><iaixsl:choose>
						<iaixsl:when test="contains(@threshold, '.00')"><iaixsl:value-of select="format-number(@threshold, '#')"/></iaixsl:when>
						<iaixsl:otherwise><iaixsl:value-of select="@threshold"/></iaixsl:otherwise>
					</iaixsl:choose></iaixsl:attribute>
					<input form="{$ProjectorFormID}" type="radio" name="multipack_radio" class="f-control" id="multipackRadioItem{position()}"/>
					<label class="f-label" for="multipackRadioItem{position()}">
						<strong class="projector_multipack__from"><iaixsl:choose>
							<iaixsl:when test="contains(@threshold, '.00')"><iaixsl:value-of select="format-number(@threshold, '#')"/></iaixsl:when>
							<iaixsl:otherwise><iaixsl:value-of select="@threshold"/></iaixsl:otherwise>
						</iaixsl:choose></strong>
						<strong class="projector_multipack__unit">
							<iaixsl:choose>
								<iaixsl:when test="format-number(@threshold, '#') &gt; 1"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_plural"/></iaixsl:when>
								<iaixsl:otherwise><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/></iaixsl:otherwise>
							</iaixsl:choose>
						</strong>
						<span class="projector_multipack__price"><iaixsl:choose>
							<iaixsl:when test="not($nettoPrice = '')"><iaixsl:value-of select="@price_net_formatted"/></iaixsl:when>
							<iaixsl:otherwise><iaixsl:value-of select="@price_formatted"/></iaixsl:otherwise>
						</iaixsl:choose></span>
						<span class="projector_multipack__literal --first">(-</span>
						<span class="projector_multipack__percent"><iaixsl:choose>
							<iaixsl:when test="contains(@value, '.00')"><iaixsl:value-of select="format-number(@value, '#')"/></iaixsl:when>
							<iaixsl:otherwise><iaixsl:value-of select="@value"/></iaixsl:otherwise>
						</iaixsl:choose></span>
						<span class="projector_multipack__literal --second">%)</span>
					</label>
				</div>
			</iaixsl:for-each>
		</div>
	</div>
</iaixsl:if>

<div id="projector_additional_section" class="projector_info">
	
	<iaixsl:if test="$ProjectorStatusEnabled = 'true'">
		<div class="projector_info__item --status projector_status" id="projector_status">
			<iaixsl:choose>
				<iaixsl:when test="/shop/page/projector/product/sizes/size[not(@amount_mw = 0)]">
					<iaixsl:if test="/shop/page/projector/product/sizes/size[not(@amount_mw = 0)]/availability/@visible = 'n'">
						<iaixsl:attribute name="class">projector_info__item --status projector_status --status-hide</iaixsl:attribute>
					</iaixsl:if>
				</iaixsl:when>
				<iaixsl:when test="/shop/page/projector/product/sizes/size[not(@amount = 0)]">
					<iaixsl:if test="/shop/page/projector/product/sizes/size[not(@amount = 0)]/availability/@visible = 'n'">
						<iaixsl:attribute name="class">projector_info__item --status projector_status --status-hide</iaixsl:attribute>
					</iaixsl:if>
				</iaixsl:when>
				<iaixsl:when test="/shop/page/projector/product/sizes/size/availability/@visible = 'n'">
						<iaixsl:attribute name="class">projector_info__item --status projector_status --status-hide</iaixsl:attribute>
				</iaixsl:when>
			</iaixsl:choose>
			<span id="projector_status_gfx_wrapper" class="projector_status__gfx_wrapper projector_info__icon">
				<img id="projector_status_gfx" class="projector_status__gfx" loading="lazy">
					<iaixsl:choose>
						<iaixsl:when test="/shop/page/projector/product/sizes/size[not(@amount_mw = 0)]/availability/@status_gfx">
							<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/sizes/size[not(@amount_mw = 0)]/availability/@status_gfx"/></iaixsl:attribute>
							<iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/projector/product/sizes/size[not(@amount_mw = 0)]/availability/@status_description"/></iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="/shop/page/projector/product/sizes/size[not(@amount = 0)]/availability/@status_gfx">
							<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/sizes/size[not(@amount = 0)]/availability/@status_gfx"/></iaixsl:attribute>
							<iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/projector/product/sizes/size[not(@amount = 0)]/availability/@status_description"/></iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/availability/@status_gfx"/></iaixsl:attribute>
							<iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/projector/product/sizes/size/availability/@status_description"/></iaixsl:attribute>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</img>
			</span>

			
			<div id="projector_shipping_unknown" class="projector_status__unknown --hide">
				<span class="projector_status__unknown_text">
					<a href="{/shop/contact/link/@url}" target="_blank">Skontaktuj się z obsługą sklepu</a>, aby oszacować czas przygotowania tego produktu do wysyłki.
				</span>
			</div>

			<div id="projector_status_wrapper" class="projector_status__wrapper">
				
				<div class="projector_status__description" id="projector_status_description">
					<iaixsl:choose>
						<iaixsl:when test="/shop/page/projector/product/sizes/size[not(@amount_mw = 0)]/availability/@status_description">
							<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/sizes/size[not(@amount_mw = 0)]/availability/@status_description"/>
						</iaixsl:when>
						<iaixsl:when test="/shop/page/projector/product/sizes/size[not(@amount = 0)]/availability/@status_description">
							<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/sizes/size[not(@amount = 0)]/availability/@status_description"/>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/sizes/size/availability/@status_description"/>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</div>

				
				<iaixsl:if test="not(/shop/page/projector/product/@product_type = 'product_service')">
					<div id="projector_shipping_info" class="projector_status__info --hide">
						<strong class="projector_status__info_label --hide" id="projector_delivery_label">Wysyłka </strong>
						<strong class="projector_status__info_days --hide" id="projector_delivery_days"/>
						<iaixsl:if test="not(/shop/page/projector/product/@product_type = 'product_bundle')">
							<span class="projector_status__info_amount --hide" id="projector_amount"><iaixsl:attribute name="data-status-pattern"> (%d w magazynie)</iaixsl:attribute></span>
						</iaixsl:if>
					</div>
				</iaixsl:if>
			</div>
		</div>
	</iaixsl:if>

	
	<iaixsl:if test="$ProjectorShippingEnabled = 'true'">
		<div class="projector_info__item --shipping projector_shipping --inactive" id="projector_shipping_dialog">
			<iaixsl:if test="not((/shop/page/projector/product/sizes/size/availability/delay_time/@unknown_delivery_time = 'true') or (/shop/page/projector/bundled/product/sizes/size/availability/delay_time/@unknown_delivery_time = 'true') or /shop/page/projector/product/@product_type = 'product_service') or $ProjectorShippingAlwaysVisible = 'true'">
				<iaixsl:attribute name="class">projector_info__item --shipping projector_shipping --active</iaixsl:attribute>
			</iaixsl:if>
			<span class="projector_shipping__icon projector_info__icon"/>
			<a class="projector_shipping__info projector_info__link" href="#shipping_info">
				<iaixsl:choose>
					<iaixsl:when test="/shop/page/projector/product/smile or (/shop/basket/@shipping = '0.00' and /shop/page/projector/product/sizes/size/delivery/@shipping = '0.00') or (/shop/basket/@shippinglimitfree &gt; 0 and /shop/page/projector/product/sizes/size/delivery/@limitfree &gt; 0)">
						<span class="projector_shipping__text">Darmowa i szybka dostawa</span><iaixsl:if test="/shop/basket/@shippinglimitfree &gt; 0 and /shop/basket/@toshippingfree &gt; 0 and /shop/page/projector/product/sizes/size/delivery/@limitfree &gt; 0"><span class="projector_shipping__text_from"> od </span><span class="projector_shipping__price"><iaixsl:value-of select="/shop/basket/@shippinglimitfree_formatted"/></span></iaixsl:if>
					</iaixsl:when>
					<iaixsl:otherwise>
						Tania i szybka dostawa
					</iaixsl:otherwise>
				</iaixsl:choose>
			</a>
		</div>
	</iaixsl:if>

	
	
	<iaixsl:variable name="allow_returns_projector"><iaixsl:choose><iaixsl:when test="/shop/basket/@wholesaler = 'true' and /shop/basket/@blocked_wholesale_returns = 'true'">false</iaixsl:when><iaixsl:otherwise>true</iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
	<iaixsl:if test="$ProjectorReturnsEnabled = 'true' and page/projector/returns_config/@active='y' and not(page/projector/product/@product_type = 'product_virtual' or page/projector/product/@product_type = 'product_service') and $allow_returns_projector = 'true'">
		<div class="projector_info__item --returns projector_returns" id="projector_returns">
			<span class="projector_returns__icon projector_info__icon"/>
			<span class="projector_returns__info projector_info__link"><span class="projector_returns__days"><iaixsl:value-of select="page/projector/returns_config/@days_to_return"/></span><iaixsl:choose>
				<iaixsl:when test="/shop/page/projector/returns_config/@returns_shop_shipping_cost != 'client'"> dni na darmowy zwrot</iaixsl:when>
				<iaixsl:otherwise> dni na łatwy zwrot</iaixsl:otherwise>
			</iaixsl:choose></span>
		</div>
	</iaixsl:if>

	
	<iaixsl:if test="$ProjectorPickupEnabled = 'true' and not(/shop/action/stocks/@available = 'false')">
		<div class="projector_info__item --stocks projector_stocks" id="projector_stocks">
			<span class="projector_stocks__icon projector_info__icon"/>
			<iaixsl:choose>
				<iaixsl:when test="page/projector/product/sizes_version/@stocks_link or page/projector/product/sizes/@stocks_link">
					<a class="projector_stocks__info projector_info__link --link">
						<iaixsl:choose>
							<iaixsl:when test="page/projector/product/sizes_version/@stocks_link">
								<iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/sizes_version/@stocks_link"/></iaixsl:attribute>
							</iaixsl:when>
							<iaixsl:otherwise>
								<iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/sizes/@stocks_link"/></iaixsl:attribute>
							</iaixsl:otherwise>
						</iaixsl:choose>
						Sprawdź, w którym sklepie obejrzysz i kupisz od ręki
					</a>
				</iaixsl:when>
				<iaixsl:otherwise>
					<span class="projector_stocks__info projector_info__link">Ten produkt nie jest dostępny w sklepie stacjonarnym</span>
				</iaixsl:otherwise>
			</iaixsl:choose>
			<iaixsl:if test="page/projector/product/sizes_version/@stocks_link or page/projector/product/sizes/@stocks_link">
				<div id="product_stocks" class="product_stocks">
					<div class="product_stocks__block --product pb-3">
						<div class="product_stocks__product d-flex align-items-center">
							<iaixsl:if test="/shop/page/projector/product/icon">
								<img class="product_stocks__icon mr-4" src="{/shop/page/projector/product/icon}" alt="{/shop/page/projector/product/name}" loading="lazy"/>
							</iaixsl:if>
							<div class="product_stocks__details">
								<strong class="product_stocks__name d-block pr-2"><iaixsl:value-of select="/shop/page/projector/product/name"/></strong>
								<iaixsl:if test="(page/projector/product/multiversions) and (count(page/projector/product/multiversions/multi_version) &gt; 1)">
									<div class="product_stocks__versions">
										<iaixsl:for-each select="page/projector/product/multiversions/multi_version">
											<div class="product_stocks__version">
												<span class="product_stocks__version_name"><iaixsl:value-of disable-output-escaping="yes" select="@name"/>:</span>
												<span class="product_stocks__version_value">
													<iaixsl:for-each select="item[@selected='true']/values/value">
														<iaixsl:if test="not(position() = 1)">
															 / 
														</iaixsl:if>
														<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
													</iaixsl:for-each>
												</span>
											</div>
										</iaixsl:for-each>
									</div>
								</iaixsl:if>
								<iaixsl:if test="(page/projector/product/versions/@count &gt; 0) and (count(page/projector/product/multiversions/multi_version) = 1)">
									<div class="product_stocks__versions">
										<div class="product_stocks__version">
											<span class="product_stocks__version_name"><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/versions/@name"/>:</span>
											<span class="product_stocks__version_value"><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/versions/version[@id = /shop/page/projector/product/@id]/@name"/></span>
										</div>
									</div>
								</iaixsl:if>
								<div class="product_stocks__sizes row mx-n1">
									<iaixsl:for-each select="/shop/page/projector/product/sizes/size">
										<iaixsl:variable name="stocksSizeType"><iaixsl:choose>
											<iaixsl:when test="@type = 'onesize'">uniw</iaixsl:when>
											<iaixsl:otherwise><iaixsl:value-of select="@type"/></iaixsl:otherwise>
										</iaixsl:choose></iaixsl:variable>
										<a href="#{$stocksSizeType}" class="product_stocks__size select_button col mx-1 mt-2 flex-grow-0 flex-shrink-0" data-type="{$stocksSizeType}">
											<iaixsl:if test="@amount = '0'">
												<iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
											</iaixsl:if>
											<iaixsl:value-of select="@description"/>
										</a>
									</iaixsl:for-each>
								</div>
							</div>
						</div>
					</div>
					<div class="product_stocks__block --stocks --skeleton"/>
				</div>
			</iaixsl:if>
		</div>
	</iaixsl:if>

	
	<iaixsl:if test="$ProjectorShareEnabled = 'true' and /shop/page/projector/product/@product_type = 'product_configurable' and /shop/page/projector/product/priceFormula">
		<div class="projector_info__item --share-config projector_share_config" id="projector_share_config">
			<span class="projector_share_config__icon projector_info__icon"/>
			<a class="projector_share_config__info projector_info__link" href="#share_config">Udostępnij konfigurację</a>
		</div>
	</iaixsl:if>

	
	<iaixsl:if test="$ProjectorSubscriptionEnabled = 'true' and /shop/page/projector/product/subscriptions/subscription">
		<div class="projector_info__item --subscription projector_subscription_info" id="projector_subscription_info">
			<span class="projector_subscription_info__icon projector_info__icon"/>
			<span class="projector_subscription_info__info projector_info__link">Subskrypcja czyli zakup cykliczny, odnawia się automatycznie</span>
		</div>
	</iaixsl:if>

	
	<iaixsl:if test="$ProjectorSubscriptionCancelEnabled = 'true' and /shop/page/projector/product/subscriptions/subscription">
		<div class="projector_info__item --abort-subscription projector_abort_subscription_info" id="projector_abort_subscription_info">
			<span class="projector_abort_subscription_info__icon projector_info__icon"/>
			<span class="projector_abort_subscription_info__info projector_info__link">Przerwij w dowolnym momencie bez okresu wypowiedzenia</span>
		</div>
	</iaixsl:if>

	
	<iaixsl:if test="$ProjectorSecureShoppingEnabled = 'true'">
		<div class="projector_info__item --safe projector_safe" id="projector_safe">
			<span class="projector_safe__icon projector_info__icon"/>
			<span class="projector_safe__info projector_info__link">Bezpieczne zakupy</span>
		</div>
	</iaixsl:if>

	
	<iaixsl:if test="$ProjectorInstallmentsEnabled = 'true' and /shop/page/projector/product/payment/instalment">
		<div class="projector_info__item --instalments projector_instalments" id="projector_instalments">
			<span class="projector_instalments__icon projector_info__icon"/>
			<span class="projector_instalments__info projector_info__link">Kup na raty (<a class="projector_instalments__link" href="#showInstalments">oblicz ratę</a>)</span>
			<div class="projector_instalments__items">
				<iaixsl:for-each select="page/projector/product/payment/instalment">
					<a href="javascript:{@calculate}" class="projector_instalments__item" data-window="{@calculatePrice}" onclick="event.stopPropagation(); calculate_instalments('{@minprice}', '{@maxprice}', '{@priceTotal}', '{@alert}', this.dataset.window, '{@maxquantity}', '{@name}', '', '{@price_type}'); return false;">
						<iaixsl:attribute name="data-instalments"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
						<iaixsl:if test="@gfx">
							<img class="projector_instalments__item_icon" src="{@gfx}" alt="{@name}" loading="lazy"/>
						</iaixsl:if>
						<span class="projector_instalments__item_text"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
					</a>
				</iaixsl:for-each>
			</div>
		</div>
	</iaixsl:if>

	
	<iaixsl:if test="$ProjectorPaypoEnabled = 'true' and /shop/page/projector/product/payment/delayed[@id = '203']">
		<iaixsl:variable name="paypoLiteralWithoutReturns">. Kup teraz, zapłać za 30 dni</iaixsl:variable>
		<iaixsl:variable name="paypoLiteral"><iaixsl:choose><iaixsl:when test="not(page/projector/returns_config/@active='y' and not(page/projector/product/@product_type = 'product_virtual' or page/projector/product/@product_type = 'product_service') and $allow_returns_projector = 'true') and not($paypoLiteralWithoutReturns = '')"><iaixsl:value-of select="$paypoLiteralWithoutReturns"/></iaixsl:when><iaixsl:otherwise>. Kup teraz, zapłać za 30 dni, jeżeli nie zwrócisz</iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
		<div class="projector_info__item --paypo projector_paypo" id="projector_paypo">
			<span class="projector_paypo__icon projector_info__icon"/>
			<span class="projector_paypo__info projector_info__link"><a class="projector_paypo__link" href="#showPaypo">Odroczone płatności</a><iaixsl:value-of select="$paypoLiteral"/></span>
			<div class="paypo_info">
				<h6 class="headline">
					<span class="headline__name">Kup teraz, zapłać później - 4 kroki</span>
				</h6>
				<div class="paypo_info__block">
					<div class="paypo_info__item --first">
						<span class="paypo_info__text">Przy wyborze formy płatności, wybierz PayPo.</span>
						<iaixsl:if test="/shop/page/projector/product/payment/delayed[@id = '203']/@gfx">
							<span class="paypo_info__img">
								<img src="{/shop/page/projector/product/payment/delayed[@id = '203']/@gfx}" alt="{/shop/page/projector/product/payment/delayed[@id = '203']/@name}" loading="lazy"/>
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
		</div>
	</iaixsl:if>

	
	<iaixsl:if test="$ProjectorPointsEnabled = 'true'">
		<div class="projector_info__item --points projector_points_recive --inactive" id="projector_points_recive">
			<iaixsl:if test="page/projector/product/price/@points_recive and page/projector/product/price/@points_recive &gt; 0">
				<iaixsl:attribute name="class">projector_info__item --points projector_points_recive --active</iaixsl:attribute>
			</iaixsl:if>
			<span class="projector_points_recive__icon projector_info__icon"/>
			<span class="projector_points_recive__info projector_info__link"><span class="projector_points_recive__text">Po zakupie otrzymasz </span><span class="projector_points_recive__value" id="projector_points_recive_points"><iaixsl:value-of select="page/projector/product/price/@points_recive"/> pkt.</span></span>
		</div>
	</iaixsl:if>
</div>
	</div>

	
	<iaixsl:if test="/shop/page/projector/product/smile">
		<iaixsl:variable name="OrlenPaczkaIDSmile">100412</iaixsl:variable>
		<iaixsl:variable name="PaczkomatInpostIDSmile">100209</iaixsl:variable>

		<iaixsl:variable name="smileHasPickup"><iaixsl:choose>
			<iaixsl:when test="count(/shop/page/projector/product/smile/delivery[@is_pickup = 'yes']) &gt; 0">true</iaixsl:when>
			<iaixsl:when test="count(/shop/page/projector/product/smile/delivery[@id = $OrlenPaczkaIDSmile]) &gt; 0">true</iaixsl:when>
			<iaixsl:otherwise>false</iaixsl:otherwise>
		</iaixsl:choose></iaixsl:variable>

		<iaixsl:variable name="smileHasPaczkomat"><iaixsl:choose>
			<iaixsl:when test="count(/shop/page/projector/product/smile/delivery[@is_pickup = 'no']) &gt; 0">true</iaixsl:when>
			<iaixsl:when test="count(/shop/page/projector/product/smile/delivery[@id = $PaczkomatInpostIDSmile]) &gt; 0">true</iaixsl:when>
			<iaixsl:otherwise>false</iaixsl:otherwise>
		</iaixsl:choose></iaixsl:variable>

		<iaixsl:if test="$smileHasPickup = 'true' or $smileHasPaczkomat = 'true'">
			<div class="banner_smile">
				<div class="banner_smile__block --main">
					<img class="banner_smile__logo" src="/gfx/standards/smile_logo.svg?r=1778592039" loading="lazy" width="72" height="17">
						<iaixsl:attribute name="alt">Kupujesz i dostawę masz gratis!</iaixsl:attribute>
					</img>
					<div class="banner_smile__pickup" data-has-more-images="{count(/shop/page/projector/product/smile/delivery) &gt; 2}">
						<span class="banner_smile__pickup_text">Darmowa dostawa do
							<iaixsl:if test="$smileHasPaczkomat = 'true'"> paczkomatu</iaixsl:if>
							<iaixsl:if test="$smileHasPaczkomat = 'true' and $smileHasPickup = 'true'"> lub</iaixsl:if>
							<iaixsl:if test="$smileHasPickup = 'true'"> punktu odbioru</iaixsl:if>
						</span>

						<div class="banner_smile__pickup_list">
							<iaixsl:for-each select="/shop/page/projector/product/smile/delivery">
								<img class="banner_smile__pickup_logo" src="{@icon}" alt="{@name}" loading="lazy">
									<iaixsl:choose>
										<iaixsl:when test="@icon_width and @icon_height">
											<iaixsl:attribute name="width"><iaixsl:value-of select="@icon_width"/></iaixsl:attribute>
											<iaixsl:attribute name="height"><iaixsl:value-of select="@icon_height"/></iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:when test="@id = $OrlenPaczkaIDSmile">
											<iaixsl:attribute name="width">50</iaixsl:attribute>
											<iaixsl:attribute name="height">25</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:when test="@id = $PaczkomatInpostIDSmile">
											<iaixsl:attribute name="width">50</iaixsl:attribute>
											<iaixsl:attribute name="height">30</iaixsl:attribute>
										</iaixsl:when>
									</iaixsl:choose>
								</img>
							</iaixsl:for-each>
						</div>
					</div>
					<a class="banner_smile__link" href="#more">Więcej informacji</a>
				</div>
				<div class="banner_smile__block --desc">
					<span class="banner_smile__desc_before">Smile - dostawy ze sklepów internetowych przy zamówieniu od </span>
					<span class="banner_smile__price"><iaixsl:value-of select="/shop/page/projector/product/smile/delivery/@minprice_formatted"/></span>
					<span class="banner_smile__desc_after"> są za darmo.</span>
				</div>
			</div>
		</iaixsl:if>
	</iaixsl:if>
</form>

<script class="ajaxLoad">
	app_shop.vars.contact_link = &quot;<iaixsl:value-of select="/shop/contact/link/@url"/>&quot;;
</script>


<iaixsl:if test="/shop/@get_ajax_projector_xml"> </iaixsl:if>
<iaixsl:if test="/shop/page/projector/bookmarklets/item/@icon_small"> </iaixsl:if>
<iaixsl:if test="/shop/page/projector/product/products_other_founds"> </iaixsl:if>
<iaixsl:if test="/shop/page/projector/product/payment/instalment/@src"> </iaixsl:if>
<!-- (projector_cms, 60dd8e79db3660.65862825.4)-->
<iaixsl:if test="page/projector/text/body">
    <div id="component_projector_cms" class="component_projector_cms cm section">
        <div class="n56196_main">
            
            <div class="n56196_sub">
                <iaixsl:value-of disable-output-escaping="yes" select="page/projector/text/body"/>
            </div>
            
        </div>
    </div>
</iaixsl:if>
<!-- (projector_in_bundle, 614c5cf0aa0f36.13771473.10)-->
	
	<iaixsl:if test="page/projector/bundle/product or page/projector/collection/product">
		<section id="projector_in_bundle" class="section hotspot --list">

			
			
			<iaixsl:variable name="var_omnibus_enabled"><iaixsl:if test="/shop/@omnibus = 1">true</iaixsl:if></iaixsl:variable>
			

			<h2>
				<span class="headline"><span class="headline__name">Oszczędź kupując więcej</span></span>
			</h2>

			<div class="products d-flex flex-wrap">
				
				<iaixsl:for-each select="page/projector/bundle/product">
					
					<iaixsl:variable name="var_name"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:variable>
					<iaixsl:variable name="var_icon"><iaixsl:value-of select="icon"/></iaixsl:variable>
					<iaixsl:variable name="var_icon_second"><iaixsl:value-of select="icon_second"/></iaixsl:variable>
					<iaixsl:variable name="var_link"><iaixsl:value-of select="@link"/></iaixsl:variable>
					<iaixsl:variable name="var_net_prices"><iaixsl:if test="/shop/page/@price_type = 'net'"><iaixsl:value-of select="$priceTypeText"/></iaixsl:if></iaixsl:variable>
					<iaixsl:variable name="var_gross_prices"><iaixsl:if test="/shop/page/@price_type = 'gross'"><iaixsl:value-of select="$priceTypeText"/></iaixsl:if></iaixsl:variable>
					<iaixsl:variable name="var_unit"><iaixsl:choose><iaixsl:when test="sizes/@unit_sellby &gt; 1"><iaixsl:value-of select="sizes/@unit_plural"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="sizes/@unit_single"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="var_sellby"><iaixsl:value-of select="sizes/@unit_sellby"/></iaixsl:variable>
					
					
					<iaixsl:variable name="var_omnibus"><iaixsl:choose>
						
						<iaixsl:when test="$var_omnibus_enabled != 'true'"/>
						<iaixsl:when test="$var_net_prices != ''">
							<iaixsl:value-of select="price/@omnibus_price_net_formatted"/>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:value-of select="price/@omnibus_price_formatted"/>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>

					
					<iaixsl:variable name="var_regular_price_value"><iaixsl:choose>
						<iaixsl:when test="$var_net_prices != ''">
							<iaixsl:choose>
								<iaixsl:when test="not(price/@maxprice_net) and not(bundle_price/@price_net)"/>
								<iaixsl:when test="not(price/@maxprice_net) and bundle_price/@price_net">
									<iaixsl:value-of select="bundle_price/@price_net"/>
								</iaixsl:when>
								<iaixsl:when test="bundle_price/@price_net &gt; price/@maxprice_net">
									<iaixsl:value-of select="bundle_price/@price_net"/>
								</iaixsl:when>
								<iaixsl:when test="not(price/@maxprice_net)"/>
								<iaixsl:otherwise>
									<iaixsl:value-of select="price/@maxprice_net"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:choose>
								<iaixsl:when test="not(price/@maxprice) and not(bundle_price/@price_gross)"/>
								<iaixsl:when test="not(price/@maxprice) and bundle_price/@price_gross">
									<iaixsl:value-of select="bundle_price/@price_gross"/>
								</iaixsl:when>
								<iaixsl:when test="bundle_price/@price_gross &gt; price/@maxprice">
									<iaixsl:value-of select="bundle_price/@price_gross"/>
								</iaixsl:when>
								<iaixsl:when test="not(price/@maxprice)"/>
								<iaixsl:otherwise>
									<iaixsl:value-of select="price/@maxprice"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>

					
					<iaixsl:variable name="var_regular_price"><iaixsl:choose>
						<iaixsl:when test="$var_net_prices != ''">
							<iaixsl:choose>
								<iaixsl:when test="not(price/@maxprice_net) and not(bundle_price/@price_net)"/>
								<iaixsl:when test="not(price/@maxprice_net) and bundle_price/@price_net">
									<iaixsl:value-of select="bundle_price/@price_net_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="bundle_price/@price_net &gt; price/@maxprice_net">
									<iaixsl:value-of select="bundle_price/@price_net_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="not(price/@maxprice_net)"/>
								<iaixsl:otherwise>
									<iaixsl:value-of select="price/@maxprice_net_formatted"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:choose>
								<iaixsl:when test="not(price/@maxprice) and not(bundle_price/@price_gross)"/>
								<iaixsl:when test="not(price/@maxprice) and bundle_price/@price_gross">
									<iaixsl:value-of select="bundle_price/@price_gross_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="bundle_price/@price_gross &gt; price/@maxprice">
									<iaixsl:value-of select="bundle_price/@price_gross_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="not(price/@maxprice)"/>
								<iaixsl:otherwise>
									<iaixsl:value-of select="price/@maxprice_formatted"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>

					
					<iaixsl:variable name="var_omnibus_short"><iaixsl:if test="$var_omnibus_enabled = 'true' and ($var_regular_price = $var_omnibus or $var_regular_price = '')">true</iaixsl:if></iaixsl:variable>

          
          <iaixsl:variable name="var_omnibus_rebate_code"><iaixsl:if test="/shop/rebatecode/@activate_omnibus = 'true' and price/@rebate_code_active = 'y'">true</iaixsl:if></iaixsl:variable>

          
          <iaixsl:variable name="var_omnibus_higher"><iaixsl:value-of select="price/@omnibus_price_is_higher_than_selling_price"/></iaixsl:variable>

          
					<iaixsl:variable name="var_beforerebate_price"><iaixsl:choose>
						<iaixsl:when test="$var_net_prices != ''"><iaixsl:value-of select="price/@beforerebate_net_formatted"/></iaixsl:when>
						<iaixsl:otherwise><iaixsl:value-of select="price/@beforerebate_formatted"/></iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>

					
					<iaixsl:variable name="var_beforerebate_short"><iaixsl:if test="$var_beforerebate_price = $var_omnibus">true</iaixsl:if></iaixsl:variable>

          
          <iaixsl:variable name="var_beforerebate_percent">-<iaixsl:value-of select="price/@beforerebate_yousave_percent"/>%</iaixsl:variable>

          
          <iaixsl:variable name="var_omnibus_percent"><iaixsl:choose><iaixsl:when test="price/@omnibus_yousave_percent = '0'"/><iaixsl:when test="$var_omnibus_higher = 'false'">+</iaixsl:when><iaixsl:otherwise>-</iaixsl:otherwise></iaixsl:choose><iaixsl:value-of select="price/@omnibus_yousave_percent"/>%</iaixsl:variable>

          
          <iaixsl:variable name="var_regular_percent">-<iaixsl:value-of select="price/@yousave_percent"/>%</iaixsl:variable>

          
          <iaixsl:variable name="var_new_price_date"><iaixsl:choose>
						<iaixsl:when test="$var_omnibus_rebate_code != ''"/>
						<iaixsl:otherwise><iaixsl:value-of select="price/@omnibus_new_price_effective_until"/></iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>
					

					
					<iaixsl:variable name="var_deposit_price"><iaixsl:choose>
						<iaixsl:when test="$var_net_prices != ''">
							<iaixsl:choose>
								<iaixsl:when test="price/@total_deposit_net_unit_formatted">
									<iaixsl:value-of select="price/@total_deposit_net_unit_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="price/@total_deposit_net_formatted">
									<iaixsl:value-of select="price/@total_deposit_net_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="price/@deposit_price_unit_net_formatted">
									<iaixsl:value-of select="price/@deposit_price_unit_net_formatted"/>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:value-of select="price/@deposit_price_net_formatted"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:choose>
								<iaixsl:when test="price/@total_deposit_unit_formatted">
									<iaixsl:value-of select="price/@total_deposit_unit_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="price/@total_deposit_formatted">
									<iaixsl:value-of select="price/@total_deposit_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="price/@deposit_price_unit_formatted">
									<iaixsl:value-of select="price/@deposit_price_unit_formatted"/>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:value-of select="price/@deposit_price_formatted"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="var_deposit_price_html"><iaixsl:if test="$var_deposit_price != ''">
						<span class="price --deposit deposit_price">
							<span class="deposit_price__label">+ kaucja</span>
							<strong class="deposit_price__value"><iaixsl:value-of select="$var_deposit_price"/></strong>
						</span>
					</iaixsl:if></iaixsl:variable>
					

					<div class="product col-12 px-0 py-1 py-md-2 mb-2 mb-md-0 d-flex">
						
						<a class="product__icon d-flex justify-content-center align-items-center align-self-md-center p-1 m-0">
							<iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
							<iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
							<iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

              <iaixsl:choose>
                <iaixsl:when test="$var_icon_second and not($var_icon_second = '' or $var_icon_second = '/')">
                  <picture>
                    <source type="image/webp">
                      <iaixsl:attribute name="srcset"><iaixsl:value-of select="$var_icon"/></iaixsl:attribute>
                    </source>
                    <img src="/gfx/standards/loader.gif?r=1778592039" class="b-lazy">
                      <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon_second"/></iaixsl:attribute>
                      <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                    </img>
                  </picture>
                </iaixsl:when>
                <iaixsl:otherwise>
                  <img src="/gfx/standards/loader.gif?r=1778592039" class="b-lazy">
                    <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                    <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                  </img>
                </iaixsl:otherwise>
              </iaixsl:choose>
						</a>

						<div class="product__wrapper pl-2 d-flex flex-column flex-md-row align-items-md-center">
							
							<h3>
								
								<iaixsl:choose>
									<iaixsl:when test="$var_omnibus != ''">
										<strong class="label_icons">
											<iaixsl:choose>
												<iaixsl:when test="$var_omnibus_rebate_code != ''">
													<span class="label --code --omnibus">
														Kod rabatowy
													</span>
												</iaixsl:when>
												<iaixsl:when test="$var_omnibus_higher = 'false' or $var_new_price_date != ''">
													<span class="label --bargain --omnibus">
														Super Okazja!
													</span>
												</iaixsl:when>
												<iaixsl:otherwise>
													<span class="label --promo --omnibus">
														Super Cena!
													</span>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</strong>
									</iaixsl:when>
								</iaixsl:choose>
								<a class="product__name mb-1 mb-md-0">
									<iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
									<iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
									<iaixsl:value-of select="$var_name"/>
								</a>
							</h3>

							<iaixsl:choose>
								
								<iaixsl:when test="$var_net_prices = ''">
									<div class="product__prices_wrapper d-md-flex flex-md-column align-items-md-end ml-md-auto">
										<iaixsl:if test="$var_omnibus != ''"><iaixsl:attribute name="class">product__prices_wrapper d-md-flex flex-md-column align-items-md-end ml-md-auto --omnibus<iaixsl:if test="$var_omnibus_short = 'true'"> --omnibus-short</iaixsl:if><iaixsl:if test="$var_omnibus_rebate_code != ''"> --omnibus-code<iaixsl:if test="$var_beforerebate_short != ''"> --omnibus-code-short</iaixsl:if></iaixsl:if><iaixsl:if test="$var_new_price_date != ''"> --omnibus-new-price</iaixsl:if><iaixsl:if test="$var_omnibus_higher = 'true' and $var_new_price_date = ''"> --omnibus-higher</iaixsl:if></iaixsl:attribute></iaixsl:if>

										<div class="product__prices flex-md-row align-items-md-center">
											<iaixsl:choose>
												<iaixsl:when test="price/@value &gt; 0">
													<div class="product__price_wrapper">
														<strong class="price --main">
															<iaixsl:value-of select="price/@price_formatted"/><span class="price_vat"><iaixsl:value-of select="$var_gross_prices"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
														</strong>
														<iaixsl:if test="price/@points">
															<span class="price --points">
																<iaixsl:value-of select="price/@points"/><span class="currency"> pkt.</span>
															</span>
														</iaixsl:if>
													</div>
												</iaixsl:when>
												<iaixsl:otherwise>
													<a class="price --phone">
														<iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
														<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
														Cena na telefon
													</a>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</div>
										<iaixsl:if test="price/@value &gt; 0">
											
											<iaixsl:if test="$var_omnibus != ''">
												<span class="price --omnibus omnibus_price"><span class="omnibus_price__text">Najniższa cena produktu w okresie 30 dni przed wprowadzeniem obniżki: </span><del class="omnibus_price__value"><iaixsl:value-of select="$var_omnibus"/></del><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span><span class="price_percent"><iaixsl:value-of select="$var_omnibus_percent"/></span></span>
											</iaixsl:if>
											
											<iaixsl:if test="$var_regular_price != '' and $var_regular_price_value &gt; price/@value">
												<span class="price --max">
													<span class="omnibus_label">Cena regularna: </span>
													<del><iaixsl:value-of select="$var_regular_price"/></del><span class="price_vat"><iaixsl:value-of select="$var_gross_prices"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span><span class="price_percent"><iaixsl:value-of select="$var_regular_percent"/></span>
												</span>
											</iaixsl:if>
											<iaixsl:if test="$var_omnibus_rebate_code != '' and $var_beforerebate_price !=''">
												<span class="price --before-rebate">
													<span class="omnibus_label">Cena bez kodu: </span>
													<del><iaixsl:value-of select="$var_beforerebate_price"/></del><span class="price_vat"><iaixsl:value-of select="$var_gross_prices"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
													<span class="price_percent"><iaixsl:value-of select="$var_beforerebate_percent"/></span>
												</span>
											</iaixsl:if>
											<iaixsl:if test="$var_new_price_date != '' and $var_regular_price != ''">
												<span class="price --new-price new_price">
													<span class="omnibus_label">Cena nadchodząca od<iaixsl:text disable-output-escaping="yes"> </iaixsl:text><span class="new_price__date"><iaixsl:value-of select="$var_new_price_date"/></span><iaixsl:text disable-output-escaping="yes">: </iaixsl:text></span>
													<span class="new_price__value"><iaixsl:value-of select="$var_regular_price"/></span>
												</span>
											</iaixsl:if>
											
											<iaixsl:copy-of select="$var_deposit_price_html"/>
										</iaixsl:if>
									</div>
								</iaixsl:when>

								
								<iaixsl:otherwise>
									<div class="product__prices_wrapper d-md-flex flex-md-column align-items-md-end ml-md-auto">
										<iaixsl:if test="$var_omnibus != ''"><iaixsl:attribute name="class">product__prices_wrapper d-md-flex flex-md-column align-items-md-end ml-md-auto --omnibus<iaixsl:if test="$var_omnibus_short = 'true'"> --omnibus-short</iaixsl:if><iaixsl:if test="$var_omnibus_rebate_code != ''"> --omnibus-code<iaixsl:if test="$var_beforerebate_short != ''"> --omnibus-code-short</iaixsl:if></iaixsl:if><iaixsl:if test="$var_new_price_date != ''"> --omnibus-new-price</iaixsl:if><iaixsl:if test="$var_omnibus_higher = 'true' and $var_new_price_date = ''"> --omnibus-higher</iaixsl:if></iaixsl:attribute></iaixsl:if>

										<div class="product__prices flex-md-row align-items-md-center">
											<iaixsl:choose>
												<iaixsl:when test="price/@price_net &gt; 0">
													<div class="product__price_wrapper">
														<strong class="price --main">
															<iaixsl:value-of select="price/@price_net_formatted"/><span class="price_vat"><iaixsl:value-of select="$var_net_prices"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
														</strong>
														<iaixsl:if test="price/@points">
															<span class="price --points">
																<iaixsl:value-of select="price/@points"/><span class="currency"> pkt.</span>
															</span>
														</iaixsl:if>
													</div>
												</iaixsl:when>
												<iaixsl:otherwise>
													<a class="price --phone">
														<iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
														<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
														Cena na telefon
													</a>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</div>
										<iaixsl:if test="price/@price_net &gt; 0">
											
											<iaixsl:if test="$var_omnibus != ''">
												<span class="price --omnibus omnibus_price"><span class="omnibus_price__text">Najniższa cena produktu w okresie 30 dni przed wprowadzeniem obniżki: </span><del class="omnibus_price__value"><iaixsl:value-of select="$var_omnibus"/></del><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span><span class="price_percent"><iaixsl:value-of select="$var_omnibus_percent"/></span></span>
											</iaixsl:if>
											
											<iaixsl:if test="$var_regular_price != '' and $var_regular_price != '' and $var_regular_price_value &gt; price/@price_net">
												<span class="price --max">
													<span class="omnibus_label">Cena regularna: </span>
													<del><iaixsl:value-of select="$var_regular_price"/></del><span class="price_vat"><iaixsl:value-of select="$var_gross_prices"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span><span class="price_percent"><iaixsl:value-of select="$var_regular_percent"/></span>
												</span>
											</iaixsl:if>
											<iaixsl:if test="$var_omnibus_rebate_code != '' and $var_beforerebate_price !=''">
												<span class="price --before-rebate">
													<span class="omnibus_label">Cena bez kodu: </span>
													<del><iaixsl:value-of select="$var_beforerebate_price"/></del><span class="price_vat"><iaixsl:value-of select="$var_gross_prices"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
													<span class="price_percent"><iaixsl:value-of select="$var_beforerebate_percent"/></span>
												</span>
											</iaixsl:if>
											<iaixsl:if test="$var_new_price_date != '' and $var_regular_price != ''">
												<span class="price --new-price new_price">
													<span class="omnibus_label">Cena nadchodząca od<iaixsl:text disable-output-escaping="yes"> </iaixsl:text><span class="new_price__date"><iaixsl:value-of select="$var_new_price_date"/></span><iaixsl:text disable-output-escaping="yes">: </iaixsl:text></span>
													<span class="new_price__value"><iaixsl:value-of select="$var_regular_price"/></span>
												</span>
											</iaixsl:if>
											
											<iaixsl:copy-of select="$var_deposit_price_html"/>
										</iaixsl:if>
									</div>
								</iaixsl:otherwise>
							</iaixsl:choose>

							
							<a class="product__see d-none d-md-block">
								<iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
								Zobacz zestaw
							</a>
						</div>
					</div>
				</iaixsl:for-each>

				
				<iaixsl:for-each select="page/projector/collection/product">
					
					<iaixsl:variable name="var_name"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:variable>
					<iaixsl:variable name="var_icon"><iaixsl:value-of select="icon"/></iaixsl:variable>
					<iaixsl:variable name="var_icon_second"><iaixsl:value-of select="icon_second"/></iaixsl:variable>
					<iaixsl:variable name="var_link"><iaixsl:value-of select="@link"/></iaixsl:variable>
					<iaixsl:variable name="var_net_prices"><iaixsl:if test="/shop/page/@price_type = 'net'"><iaixsl:value-of select="$priceTypeText"/></iaixsl:if></iaixsl:variable>
					<iaixsl:variable name="var_gross_prices"><iaixsl:if test="/shop/page/@price_type = 'gross'"><iaixsl:value-of select="$priceTypeText"/></iaixsl:if></iaixsl:variable>
					<iaixsl:variable name="var_unit"><iaixsl:choose><iaixsl:when test="sizes/@unit_sellby &gt; 1"><iaixsl:value-of select="sizes/@unit_plural"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="sizes/@unit_single"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="var_sellby"><iaixsl:value-of select="sizes/@unit_sellby"/></iaixsl:variable>
					
					
					<iaixsl:variable name="var_omnibus"><iaixsl:choose>
						
						<iaixsl:when test="$var_omnibus_enabled != 'true'"/>
						<iaixsl:when test="$var_net_prices != ''">
							<iaixsl:value-of select="price/@omnibus_price_net_formatted"/>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:value-of select="price/@omnibus_price_formatted"/>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>

					
					<iaixsl:variable name="var_regular_price_value"><iaixsl:choose>
						<iaixsl:when test="$var_net_prices != ''">
							<iaixsl:choose>
								<iaixsl:when test="not(price/@maxprice_net) and not(bundle_price/@price_net)"/>
								<iaixsl:when test="not(price/@maxprice_net) and bundle_price/@price_net">
									<iaixsl:value-of select="bundle_price/@price_net"/>
								</iaixsl:when>
								<iaixsl:when test="bundle_price/@price_net &gt; price/@maxprice_net">
									<iaixsl:value-of select="bundle_price/@price_net"/>
								</iaixsl:when>
								<iaixsl:when test="not(price/@maxprice_net)"/>
								<iaixsl:otherwise>
									<iaixsl:value-of select="price/@maxprice_net"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:choose>
								<iaixsl:when test="not(price/@maxprice) and not(bundle_price/@price_gross)"/>
								<iaixsl:when test="not(price/@maxprice) and bundle_price/@price_gross">
									<iaixsl:value-of select="bundle_price/@price_gross"/>
								</iaixsl:when>
								<iaixsl:when test="bundle_price/@price_gross &gt; price/@maxprice">
									<iaixsl:value-of select="bundle_price/@price_gross"/>
								</iaixsl:when>
								<iaixsl:when test="not(price/@maxprice)"/>
								<iaixsl:otherwise>
									<iaixsl:value-of select="price/@maxprice"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>

					
					<iaixsl:variable name="var_regular_price"><iaixsl:choose>
						<iaixsl:when test="$var_net_prices != ''">
							<iaixsl:choose>
								<iaixsl:when test="not(price/@maxprice_net) and not(bundle_price/@price_net)"/>
								<iaixsl:when test="not(price/@maxprice_net) and bundle_price/@price_net">
									<iaixsl:value-of select="bundle_price/@price_net_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="bundle_price/@price_net &gt; price/@maxprice_net">
									<iaixsl:value-of select="bundle_price/@price_net_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="not(price/@maxprice_net)"/>
								<iaixsl:otherwise>
									<iaixsl:value-of select="price/@maxprice_net_formatted"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:choose>
								<iaixsl:when test="not(price/@maxprice) and not(bundle_price/@price_gross)"/>
								<iaixsl:when test="not(price/@maxprice) and bundle_price/@price_gross">
									<iaixsl:value-of select="bundle_price/@price_gross_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="bundle_price/@price_gross &gt; price/@maxprice">
									<iaixsl:value-of select="bundle_price/@price_gross_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="not(price/@maxprice)"/>
								<iaixsl:otherwise>
									<iaixsl:value-of select="price/@maxprice_formatted"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>

					
					<iaixsl:variable name="var_omnibus_short"><iaixsl:if test="$var_omnibus_enabled = 'true' and ($var_regular_price = $var_omnibus or $var_regular_price = '')">true</iaixsl:if></iaixsl:variable>

          
          <iaixsl:variable name="var_omnibus_rebate_code"><iaixsl:if test="/shop/rebatecode/@activate_omnibus = 'true' and price/@rebate_code_active = 'y'">true</iaixsl:if></iaixsl:variable>

          
          <iaixsl:variable name="var_omnibus_higher"><iaixsl:value-of select="price/@omnibus_price_is_higher_than_selling_price"/></iaixsl:variable>

          
					<iaixsl:variable name="var_beforerebate_price"><iaixsl:choose>
						<iaixsl:when test="$var_net_prices != ''"><iaixsl:value-of select="price/@beforerebate_net_formatted"/></iaixsl:when>
						<iaixsl:otherwise><iaixsl:value-of select="price/@beforerebate_formatted"/></iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>

					
					<iaixsl:variable name="var_beforerebate_short"><iaixsl:if test="$var_beforerebate_price = $var_omnibus">true</iaixsl:if></iaixsl:variable>

          
          <iaixsl:variable name="var_beforerebate_percent">-<iaixsl:value-of select="price/@beforerebate_yousave_percent"/>%</iaixsl:variable>

          
          <iaixsl:variable name="var_omnibus_percent"><iaixsl:choose><iaixsl:when test="price/@omnibus_yousave_percent = '0'"/><iaixsl:when test="$var_omnibus_higher = 'false'">+</iaixsl:when><iaixsl:otherwise>-</iaixsl:otherwise></iaixsl:choose><iaixsl:value-of select="price/@omnibus_yousave_percent"/>%</iaixsl:variable>

          
          <iaixsl:variable name="var_regular_percent">-<iaixsl:value-of select="price/@yousave_percent"/>%</iaixsl:variable>

          
          <iaixsl:variable name="var_new_price_date"><iaixsl:choose>
						<iaixsl:when test="$var_omnibus_rebate_code != ''"/>
						<iaixsl:otherwise><iaixsl:value-of select="price/@omnibus_new_price_effective_until"/></iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>
					

					
					<iaixsl:variable name="var_deposit_price"><iaixsl:choose>
						<iaixsl:when test="$var_net_prices != ''">
							<iaixsl:choose>
								<iaixsl:when test="price/@total_deposit_net_unit_formatted">
									<iaixsl:value-of select="price/@total_deposit_net_unit_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="price/@total_deposit_net_formatted">
									<iaixsl:value-of select="price/@total_deposit_net_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="price/@deposit_price_unit_net_formatted">
									<iaixsl:value-of select="price/@deposit_price_unit_net_formatted"/>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:value-of select="price/@deposit_price_net_formatted"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:choose>
								<iaixsl:when test="price/@total_deposit_unit_formatted">
									<iaixsl:value-of select="price/@total_deposit_unit_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="price/@total_deposit_formatted">
									<iaixsl:value-of select="price/@total_deposit_formatted"/>
								</iaixsl:when>
								<iaixsl:when test="price/@deposit_price_unit_formatted">
									<iaixsl:value-of select="price/@deposit_price_unit_formatted"/>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:value-of select="price/@deposit_price_formatted"/>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="var_deposit_price_html"><iaixsl:if test="$var_deposit_price != ''">
						<span class="price --deposit deposit_price">
							<span class="deposit_price__label">+ kaucja</span>
							<strong class="deposit_price__value"><iaixsl:value-of select="$var_deposit_price"/></strong>
						</span>
					</iaixsl:if></iaixsl:variable>
					

					<div class="product col-12 px-0 py-1 py-md-2 mb-2 mb-md-0 d-flex">
						
						<a class="product__icon d-flex justify-content-center align-items-center align-self-md-center p-1 m-0">
							<iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
							<iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
							<iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

              <iaixsl:choose>
                <iaixsl:when test="$var_icon_second and not($var_icon_second = '' or $var_icon_second = '/')">
                  <picture>
                    <source type="image/webp">
                      <iaixsl:attribute name="srcset"><iaixsl:value-of select="$var_icon_second"/></iaixsl:attribute>
                    </source>
                    <img src="/gfx/standards/loader.gif?r=1778592039" class="b-lazy">
                      <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                      <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                    </img>
                  </picture>
                </iaixsl:when>
                <iaixsl:otherwise>
                  <img src="/gfx/standards/loader.gif?r=1778592039" class="b-lazy">
                    <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                    <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                  </img>
                </iaixsl:otherwise>
              </iaixsl:choose>
						</a>

						<div class="product__wrapper pl-2 d-flex flex-column flex-md-row align-items-md-center">
							
							<h3>
								
								<iaixsl:choose>
									<iaixsl:when test="$var_omnibus != ''">
										<strong class="label_icons">
											<iaixsl:choose>
												<iaixsl:when test="$var_omnibus_rebate_code != ''">
													<span class="label --code --omnibus">
														Kod rabatowy
													</span>
												</iaixsl:when>
												<iaixsl:when test="$var_omnibus_higher = 'false' or $var_new_price_date != ''">
													<span class="label --bargain --omnibus">
														Super Okazja!
													</span>
												</iaixsl:when>
												<iaixsl:otherwise>
													<span class="label --promo --omnibus">
														Super Cena!
													</span>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</strong>
									</iaixsl:when>
								</iaixsl:choose>
								<a class="product__name mb-1 mb-md-0">
									<iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
									<iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
									<iaixsl:value-of select="$var_name"/>
								</a>
							</h3>

							<iaixsl:choose>
								
								<iaixsl:when test="$var_net_prices = ''">
									<div class="product__prices_wrapper d-md-flex flex-md-column align-items-md-end ml-md-auto">
										<iaixsl:if test="$var_omnibus != ''"><iaixsl:attribute name="class">product__prices_wrapper d-md-flex flex-md-column align-items-md-end ml-md-auto --omnibus<iaixsl:if test="$var_omnibus_short = 'true'"> --omnibus-short</iaixsl:if><iaixsl:if test="$var_omnibus_rebate_code != ''"> --omnibus-code<iaixsl:if test="$var_beforerebate_short != ''"> --omnibus-code-short</iaixsl:if></iaixsl:if><iaixsl:if test="$var_new_price_date != ''"> --omnibus-new-price</iaixsl:if><iaixsl:if test="$var_omnibus_higher = 'true' and $var_new_price_date = ''"> --omnibus-higher</iaixsl:if></iaixsl:attribute></iaixsl:if>

										<div class="product__prices flex-md-row align-items-md-center">
											<iaixsl:choose>
												<iaixsl:when test="price/@value &gt; 0">
													<div class="product__price_wrapper">
														<strong class="price --main">
															<iaixsl:value-of select="price/@price_formatted"/><span class="price_vat"><iaixsl:value-of select="$var_gross_prices"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
														</strong>
														<iaixsl:if test="price/@points">
															<span class="price --points">
																<iaixsl:value-of select="price/@points"/><span class="currency"> pkt.</span>
															</span>
														</iaixsl:if>
													</div>
												</iaixsl:when>
												<iaixsl:otherwise>
													<a class="price --phone">
														<iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
														<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
														Cena na telefon
													</a>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</div>
										<iaixsl:if test="price/@value &gt; 0">
											
											<iaixsl:if test="$var_omnibus != ''">
												<span class="price --omnibus omnibus_price"><span class="omnibus_price__text">Najniższa cena produktu w okresie 30 dni przed wprowadzeniem obniżki: </span><del class="omnibus_price__value"><iaixsl:value-of select="$var_omnibus"/></del><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span><span class="price_percent"><iaixsl:value-of select="$var_omnibus_percent"/></span></span>
											</iaixsl:if>
											
											<iaixsl:if test="$var_regular_price != '' and $var_regular_price != '' and $var_regular_price_value &gt; price/@value">
												<span class="price --max">
													<span class="omnibus_label">Cena regularna: </span>
													<del><iaixsl:value-of select="$var_regular_price"/></del><span class="price_vat"><iaixsl:value-of select="$var_gross_prices"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span><span class="price_percent"><iaixsl:value-of select="$var_regular_percent"/></span>
												</span>
											</iaixsl:if>
											<iaixsl:if test="$var_omnibus_rebate_code != '' and $var_beforerebate_price !=''">
												<span class="price --before-rebate">
													<span class="omnibus_label">Cena bez kodu: </span>
													<del><iaixsl:value-of select="$var_beforerebate_price"/></del><span class="price_vat"><iaixsl:value-of select="$var_gross_prices"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
													<span class="price_percent"><iaixsl:value-of select="$var_beforerebate_percent"/></span>
												</span>
											</iaixsl:if>
											<iaixsl:if test="$var_new_price_date != '' and $var_regular_price != ''">
												<span class="price --new-price new_price">
													<span class="omnibus_label">Cena nadchodząca od<iaixsl:text disable-output-escaping="yes"> </iaixsl:text><span class="new_price__date"><iaixsl:value-of select="$var_new_price_date"/></span><iaixsl:text disable-output-escaping="yes">: </iaixsl:text></span>
													<span class="new_price__value"><iaixsl:value-of select="$var_regular_price"/></span>
												</span>
											</iaixsl:if>
											
											<iaixsl:copy-of select="$var_deposit_price_html"/>
										</iaixsl:if>
									</div>
								</iaixsl:when>

								
								<iaixsl:otherwise>
									<div class="product__prices_wrapper d-md-flex flex-md-column align-items-md-end ml-md-auto">
										<iaixsl:if test="$var_omnibus != ''"><iaixsl:attribute name="class">product__prices_wrapper d-md-flex flex-md-column align-items-md-end ml-md-auto --omnibus<iaixsl:if test="$var_omnibus_short = 'true'"> --omnibus-short</iaixsl:if><iaixsl:if test="$var_omnibus_rebate_code != ''"> --omnibus-code<iaixsl:if test="$var_beforerebate_short != ''"> --omnibus-code-short</iaixsl:if></iaixsl:if><iaixsl:if test="$var_new_price_date != ''"> --omnibus-new-price</iaixsl:if><iaixsl:if test="$var_omnibus_higher = 'true' and $var_new_price_date = ''"> --omnibus-higher</iaixsl:if></iaixsl:attribute></iaixsl:if>

										<div class="product__prices flex-md-row align-items-md-center">
											<iaixsl:choose>
												<iaixsl:when test="price/@price_net &gt; 0">
													<div class="product__price_wrapper">
														<strong class="price --main">
															<iaixsl:value-of select="price/@price_net_formatted"/><span class="price_vat"><iaixsl:value-of select="$var_net_prices"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
														</strong>
														<iaixsl:if test="price/@points">
															<span class="price --points">
																<iaixsl:value-of select="price/@points"/><span class="currency"> pkt.</span>
															</span>
														</iaixsl:if>
													</div>
												</iaixsl:when>
												<iaixsl:otherwise>
													<a class="price --phone">
														<iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
														<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
														Cena na telefon
													</a>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</div>
										<iaixsl:if test="price/@price_net &gt; 0">
											
											<iaixsl:if test="$var_omnibus != ''">
												<span class="price --omnibus omnibus_price"><span class="omnibus_price__text">Najniższa cena produktu w okresie 30 dni przed wprowadzeniem obniżki: </span><del class="omnibus_price__value"><iaixsl:value-of select="$var_omnibus"/></del><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span><span class="price_percent"><iaixsl:value-of select="$var_omnibus_percent"/></span></span>
											</iaixsl:if>
											
											<iaixsl:if test="$var_regular_price != '' and $var_regular_price_value &gt; price/@price_net">
												<span class="price --max">
													<span class="omnibus_label">Cena regularna: </span>
													<del><iaixsl:value-of select="$var_regular_price"/></del><span class="price_vat"><iaixsl:value-of select="$var_gross_prices"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span><span class="price_percent"><iaixsl:value-of select="$var_regular_percent"/></span>
												</span>
											</iaixsl:if>
											<iaixsl:if test="$var_omnibus_rebate_code != '' and $var_beforerebate_price !=''">
												<span class="price --before-rebate">
													<span class="omnibus_label">Cena bez kodu: </span>
													<del><iaixsl:value-of select="$var_beforerebate_price"/></del><span class="price_vat"><iaixsl:value-of select="$var_gross_prices"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
													<span class="price_percent"><iaixsl:value-of select="$var_beforerebate_percent"/></span>
												</span>
											</iaixsl:if>
											<iaixsl:if test="$var_new_price_date != '' and $var_regular_price != ''">
												<span class="price --new-price new_price">
													<span class="omnibus_label">Cena nadchodząca od<iaixsl:text disable-output-escaping="yes"> </iaixsl:text><span class="new_price__date"><iaixsl:value-of select="$var_new_price_date"/></span><iaixsl:text disable-output-escaping="yes">: </iaixsl:text></span>
													<span class="new_price__value"><iaixsl:value-of select="$var_regular_price"/></span>
												</span>
											</iaixsl:if>
											
											<iaixsl:copy-of select="$var_deposit_price_html"/>
										</iaixsl:if>
									</div>
								</iaixsl:otherwise>
							</iaixsl:choose>

							
							<a class="product__see d-none d-md-block">
								<iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
								Zobacz kolekcję
							</a>
						</div>
					</div>
				</iaixsl:for-each>
			</div>
		</section>
	</iaixsl:if>
<!-- (projector_navigations, 610bfe55186239.91875127.8)-->
  <div id="dynamic_tabs_handler" class="tabs"/>
  <div id="details_wrapper"/>
<!-- (projector_dictionary, 610bfe552bb307.13485332.15)-->
	
	<iaixsl:variable name="product_srp_price_label">Cena sugerowana</iaixsl:variable>
	<iaixsl:variable name="product_producer_label">Marka</iaixsl:variable>
	<iaixsl:variable name="product_code_label">Symbol</iaixsl:variable>
	<iaixsl:variable name="product_producer_code_label">Kod producenta</iaixsl:variable>
	<iaixsl:variable name="product_series_label">Seria</iaixsl:variable>
	<iaixsl:variable name="product_warranty_label">Gwarancja</iaixsl:variable>

	<iaixsl:if test="/shop/page/projector/product/price/@srp or (count(/shop/page/projector/product/dictionary/items) &gt; 0) or ($product_producer_label and not(/shop/page/projector/product/firm/@name = '')) or ($product_code_label and /shop/page/projector/product/@code) or ($product_series_label and /shop/page/projector/product/series) or ($product_producer_code_label and count(/shop/page/projector/product/sizes/size[@code_producer and not(@code_producer = '')]) &gt; 0) or (count(/shop/page/projector/product/responsible_entity/producer | /shop/page/projector/product/responsible_entity/persons/person) &gt; 0)">
		
		<iaixsl:variable name="label_no_group"/>

		<section id="projector_dictionary" class="section dictionary">
			<div class="dictionary__group --first">
				<iaixsl:if test="(($product_srp_price_label and /shop/page/projector/product/price/@srp and /shop/page/projector/@srp_in_product_details != 'true') or ($product_producer_label and not(/shop/page/projector/product/firm/@name = '')) or ($product_code_label and /shop/page/projector/product/@code) or ($product_series_label and /shop/page/projector/product/series) or ($product_producer_code_label and count(/shop/page/projector/product/sizes/size[@code_producer and not(@code_producer = '')]) &gt; 0)) or not(/shop/page/projector/product/dictionary/items/item[1]/type = 'group')">
					<iaixsl:attribute name="class">dictionary__group --first --no-group</iaixsl:attribute>
					<iaixsl:if test="$label_no_group">
						
						<div class="dictionary__label mb-3 d-flex flex-column align-items-start justify-content-center">
							<span class="dictionary__label_txt"><iaixsl:value-of select="$label_no_group"/></span>
						</div>
					</iaixsl:if>
				</iaixsl:if>
				
				<iaixsl:if test="$product_srp_price_label and /shop/page/projector/product/price/@srp and /shop/page/projector/@srp_in_product_details != 'true'">
					<iaixsl:variable name="var_srp_price_min"><iaixsl:choose>
						<iaixsl:when test="/shop/page/projector/product/sizes/size[price/@srp]">
							<iaixsl:for-each select="/shop/page/projector/product/sizes/size[price/@srp]">
								<iaixsl:sort select="price/@srp" data-type="number"/>
								<iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@srp_formatted"/></iaixsl:if>
							</iaixsl:for-each>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:value-of select="/shop/page/projector/product/price/@srp_formatted"/>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="var_srp_price_max"><iaixsl:choose>
						<iaixsl:when test="/shop/page/projector/product/sizes/size[price/@srp]">
							<iaixsl:for-each select="/shop/page/projector/product/sizes/size[price/@srp]">
								<iaixsl:sort select="price/@srp" data-type="number" order="descending"/>
								<iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@srp_formatted"/></iaixsl:if>
							</iaixsl:for-each>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:value-of select="/shop/page/projector/product/price/@srp_formatted"/>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="var_srp_price_min_net"><iaixsl:choose>
						<iaixsl:when test="/shop/page/projector/product/sizes/size[price/@srp_net]">
							<iaixsl:for-each select="/shop/page/projector/product/sizes/size[price/@srp_net]">
								<iaixsl:sort select="price/@srp_net" data-type="number"/>
								<iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@srp_net_formatted"/></iaixsl:if>
							</iaixsl:for-each>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:value-of select="/shop/page/projector/product/price/@srp_net_formatted"/>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>
					<iaixsl:variable name="var_srp_price_max_net"><iaixsl:choose>
						<iaixsl:when test="/shop/page/projector/product/sizes/size[price/@srp_net]">
							<iaixsl:for-each select="/shop/page/projector/product/sizes/size[price/@srp_net]">
								<iaixsl:sort select="price/@srp_net" data-type="number" order="descending"/>
								<iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@srp_net_formatted"/></iaixsl:if>
							</iaixsl:for-each>
						</iaixsl:when>
						<iaixsl:otherwise>
							<iaixsl:value-of select="/shop/page/projector/product/price/@srp_net_formatted"/>
						</iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>
					<div class="dictionary__param row mb-2" data-srp-price="true">
						
						<div class="dictionary__name col-6 col-md-4 d-flex flex-column align-items-start">
							<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_srp_price_label"/></span>
						</div>
						
						<div class="dictionary__values col-6 col-md-8">
							<div class="dictionary__value">
								<span class="dictionary__value_txt"><iaixsl:choose>
									<iaixsl:when test="/shop/page/@price_type = 'net'">
										<iaixsl:choose>
											<iaixsl:when test="$var_srp_price_min_net != $var_srp_price_max_net">
												<iaixsl:value-of select="$var_srp_price_min_net"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_srp_price_max_net"/>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:value-of select="/shop/page/projector/product/price/@srp_net_formatted"/>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:choose>
											<iaixsl:when test="$var_srp_price_min != $var_srp_price_max">
												<iaixsl:value-of select="$var_srp_price_min"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_srp_price_max"/>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:value-of select="$var_srp_price_min"/>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</iaixsl:otherwise>
								</iaixsl:choose><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="1">1</span><span class="price_sellby__unit"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_single"/></span></span></span>
							</div>
						</div>
					</div>
				</iaixsl:if>
				
				<iaixsl:if test="$product_producer_label and not(/shop/page/projector/product/firm/@name = '')">
					<div class="dictionary__param row mb-2" data-producer="true">
						
						<div class="dictionary__name col-6 col-md-4 d-flex flex-column align-items-start">
							<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_producer_label"/></span>
						</div>
						
						<div class="dictionary__values col-6 col-md-8">
							<div class="dictionary__value">
								<a class="dictionary__value_txt">
									<iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/firm/@productslink"/></iaixsl:attribute>
									<iaixsl:attribute name="title">Kliknij, by zobaczyć wszystkie produkty tej marki</iaixsl:attribute>
									<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/firm/@name"/>
								</a>
							</div>
						</div>
					</div>
				</iaixsl:if>
				
				<iaixsl:if test="count(/shop/page/projector/product/responsible_entity/producer | /shop/page/projector/product/responsible_entity/persons/person) &gt; 0">
					<div class="dictionary__param row mb-2" data-responsible-entity="true">
						<div class="dictionary__name col-6 col-md-4 d-flex flex-column align-items-start">
							<span class="dictionary__name_txt">Podmiot odpowiedzialny za ten produkt na terenie UE</span>
						</div>
						<div class="dictionary__values col-6 col-md-8">
							<div class="dictionary__value">
								<span class="dictionary__value_txt">
									<iaixsl:variable name="entity_name"><iaixsl:choose>
										<iaixsl:when test="/shop/page/projector/product/responsible_entity/persons/person and /shop/page/projector/product/responsible_entity/producer">
											<iaixsl:value-of select="/shop/page/projector/product/responsible_entity/persons/person/name"/>
										</iaixsl:when>
										<iaixsl:when test="not(/shop/page/projector/product/responsible_entity/producer/name)">
											<iaixsl:value-of select="/shop/page/projector/product/responsible_entity/persons/person/name"/>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:value-of select="/shop/page/projector/product/responsible_entity/producer/name"/>
										</iaixsl:otherwise>
									</iaixsl:choose></iaixsl:variable>
									<span><iaixsl:value-of disable-output-escaping="yes" select="$entity_name"/></span>
									<a href="#showDescription" class="dictionary__more">Więcej</a>
								</span>
								<div class="dictionary__description --value">
									<iaixsl:for-each select="/shop/page/projector/product/responsible_entity/producer | /shop/page/projector/product/responsible_entity/persons/person">
										<div class="dictionary__description --entity">
											<iaixsl:if test="count(/shop/page/projector/product/responsible_entity/producer | /shop/page/projector/product/responsible_entity/persons/person) &gt; 1">
												<iaixsl:if test="name(.) = 'producer'"><span class="entity__title">Producent</span></iaixsl:if>
												<iaixsl:if test="name(.) = 'person'"><span class="entity__title">Podmiot odpowiedzialny</span></iaixsl:if>

												<iaixsl:if test="name">
													<span class="entity__name"><iaixsl:value-of select="name/text()"/></span>
												</iaixsl:if>
											</iaixsl:if>

											<iaixsl:if test="street">
												<span>Adres: 
													<iaixsl:value-of select="street"/>
													<iaixsl:if test="number"><iaixsl:text> </iaixsl:text><iaixsl:value-of select="number"/></iaixsl:if>
													<iaixsl:if test="subnumber"><iaixsl:if test="number">/</iaixsl:if><iaixsl:value-of select="subnumber"/></iaixsl:if>
												</span>
											</iaixsl:if>

											<iaixsl:if test="zipcode">
												<span>Kod pocztowy: <iaixsl:value-of select="zipcode/text()"/></span>
											</iaixsl:if>

											<iaixsl:if test="city">
												<span>Miasto: <iaixsl:value-of select="city/text()"/></span>
											</iaixsl:if>

											<iaixsl:if test="country_name">
												<span>Kraj: <iaixsl:value-of select="country_name/text()"/></span>
											</iaixsl:if>

											<iaixsl:if test="phone">
												<span>Numer telefonu: <iaixsl:value-of select="phone/text()"/></span>
											</iaixsl:if>

											<iaixsl:if test="mail">
												<span>Adres email: <iaixsl:value-of select="mail/text()"/></span>
											</iaixsl:if>

											<iaixsl:if test="description">
												<span>Opis: <iaixsl:value-of select="description/text()"/></span>
											</iaixsl:if>
										</div>
									</iaixsl:for-each>
								</div>
							</div>
						</div>
					</div>
				</iaixsl:if>
				
				<iaixsl:if test="$product_code_label and /shop/page/projector/product/@code">
					<div class="dictionary__param row mb-2" data-code="true">
						
						<div class="dictionary__name col-6 col-md-4 d-flex flex-column align-items-start">
							<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_code_label"/></span>
						</div>
						
						<div class="dictionary__values col-6 col-md-8">
							<div class="dictionary__value">
								<span class="dictionary__value_txt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/@code"/></span>
							</div>
						</div>
					</div>
				</iaixsl:if>
				
				<iaixsl:if test="$product_producer_code_label and count(/shop/page/projector/product/sizes/size[@code_producer and not(@code_producer = '')]) &gt; 0">
					<div class="dictionary__param row mb-2" data-producer_code="true">
						
						<div class="dictionary__name col-6 col-md-4 d-flex flex-column align-items-start">
							<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_producer_code_label"/></span>
						</div>
						
						<div class="dictionary__values col-6 col-md-8">
							<iaixsl:for-each select="/shop/page/projector/product/sizes/size[@code_producer and not(@code_producer = '')]">
								<div class="dictionary__value">
									<span class="dictionary__value_txt"><iaixsl:if test="not(@type = 'onesize')"><span class="dictionary__producer_code --name"><iaixsl:value-of select="@description"/></span></iaixsl:if><span class="dictionary__producer_code --value"><iaixsl:value-of disable-output-escaping="yes" select="@code_producer"/></span></span>
								</div>
							</iaixsl:for-each>
						</div>
					</div>
				</iaixsl:if>
				
				<iaixsl:if test="$product_series_label and /shop/page/projector/product/series">
					<div class="dictionary__param row mb-2" data-series="true">
						
						<div class="dictionary__name col-6 col-md-4 d-flex flex-column align-items-start">
							<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_series_label"/></span>
						</div>
						
						<div class="dictionary__values col-6 col-md-8">
							<div class="dictionary__value">
								<a class="dictionary__value_txt">
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/series/@link"/></iaixsl:attribute>
									<iaixsl:attribute name="title">Kliknij, by zobaczyć wszystkie produkty z tej serii</iaixsl:attribute>
									<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/series/@name"/>
								</a>
							</div>
						</div>
					</div>
				</iaixsl:if>
				
				<iaixsl:if test="$product_warranty_label and /shop/page/projector/product/warranty/@name">
					<div class="dictionary__param row mb-2" data-waranty="true">
						
						<div class="dictionary__name col-6 col-md-4 d-flex flex-column align-items-start">
							<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_warranty_label"/></span>
						</div>
						
						<div class="dictionary__values col-6 col-md-8">
							<div class="dictionary__value">
								<a class="dictionary__value_txt" href="#projector_warranty">
									<iaixsl:attribute name="title">Kliknij, aby przeczytać warunki gwarancji</iaixsl:attribute>
									<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/warranty/@name"/>
								</a>
							</div>
						</div>
					</div>
				</iaixsl:if>
				<iaixsl:for-each select="/shop/page/projector/product/dictionary/items/item">
					<iaixsl:choose>
						<iaixsl:when test="@type = 'group'">
							<iaixsl:if test="position() &gt; 1 or (($product_code_label and /shop/page/projector/product/@code) or ($product_series_label and /shop/page/projector/product/series))">
								<iaixsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;div class=&quot;dictionary__group&quot;&gt;</iaixsl:text>
							</iaixsl:if>
							
							<div class="dictionary__label mb-3 d-flex flex-column align-items-start justify-content-center">
								<span class="dictionary__label_txt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
								<iaixsl:choose>
									<iaixsl:when test="@gfx_desktop and @gfx_tablet and @gfx_mobile">
										<picture class="dictionary__picture --label">
											<source>
												<iaixsl:attribute name="media">(min-width:979px)</iaixsl:attribute>
												<iaixsl:attribute name="data-srcset"><iaixsl:value-of select="@gfx_desktop"/></iaixsl:attribute>
											</source>
											<source>
												<iaixsl:attribute name="media">(min-width:757px)</iaixsl:attribute>
												<iaixsl:attribute name="data-srcset"><iaixsl:value-of select="@gfx_tablet"/></iaixsl:attribute>
											</source>
											<img src="/gfx/standards/loader.gif?r=1778592039" class="dictionary__img --label b-lazy">
												<iaixsl:attribute name="data-src"><iaixsl:value-of select="@gfx_mobile"/></iaixsl:attribute>
												<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
											</img>
										</picture>
									</iaixsl:when>
									<iaixsl:when test="@gfx">
										<picture class="dictionary__picture --label">
											<img src="/gfx/standards/loader.gif?r=1778592039" class="dictionary__img --label b-lazy">
												<iaixsl:attribute name="data-src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
												<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
											</img>
										</picture>
									</iaixsl:when>
								</iaixsl:choose>
								<iaixsl:if test="desc != ''">
									<div class="dictionary__description --label --active"><iaixsl:value-of disable-output-escaping="yes" select="desc"/></div>
								</iaixsl:if>
							</div>
						</iaixsl:when>
						<iaixsl:otherwise>
							
							<div class="dictionary__param row mb-2">
								<iaixsl:if test="(@gfx_desktop and @gfx_tablet and @gfx_mobile) or @gfx">
									<iaixsl:attribute name="data-gfx_name">true</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:if test="values/value[(@gfx_desktop and @gfx_tablet and @gfx_mobile) or @gfx]">
									<iaixsl:attribute name="data-gfx_value">true</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:if test="desc != ''">
									<iaixsl:attribute name="data-desc_name">true</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:if test="values/value[desc != '']">
									<iaixsl:attribute name="data-desc_value">true</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:variable name="paramName"><iaixsl:value-of select="@name"/></iaixsl:variable>
								<iaixsl:if test="/shop/page/projector/product/traits/trait[@groupdescription = $paramName]">
									<iaixsl:attribute name="data-duplicate">true</iaixsl:attribute>
								</iaixsl:if>
								
								<div class="dictionary__name col-6 col-md-4 d-flex flex-column align-items-start">
									<iaixsl:if test="(@gfx_desktop and @gfx_tablet and @gfx_mobile) or @gfx">
										<iaixsl:attribute name="data-gfx">true</iaixsl:attribute>
									</iaixsl:if>
									<iaixsl:if test="desc != ''">
										<iaixsl:attribute name="data-desc">true</iaixsl:attribute>
									</iaixsl:if>
									<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/><iaixsl:if test="desc != ''"><a href="#showDescription" class="dictionary__more">Więcej</a></iaixsl:if></span>
									<iaixsl:choose>
										<iaixsl:when test="@gfx_desktop and @gfx_tablet and @gfx_mobile">
											<picture class="dictionary__picture --name">
												<source>
													<iaixsl:attribute name="media">(min-width:979px)</iaixsl:attribute>
													<iaixsl:attribute name="data-srcset"><iaixsl:value-of select="@gfx_desktop"/></iaixsl:attribute>
												</source>
												<source>
													<iaixsl:attribute name="media">(min-width:757px)</iaixsl:attribute>
													<iaixsl:attribute name="data-srcset"><iaixsl:value-of select="@gfx_tablet"/></iaixsl:attribute>
												</source>
												<img src="/gfx/standards/loader.gif?r=1778592039" class="dictionary__img --name b-lazy">
													<iaixsl:attribute name="data-src"><iaixsl:value-of select="@gfx_mobile"/></iaixsl:attribute>
													<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
												</img>
											</picture>
										</iaixsl:when>
										<iaixsl:when test="@gfx">
											<picture class="dictionary__picture --name">
												<img src="/gfx/standards/loader.gif?r=1778592039" class="dictionary__img --name b-lazy">
													<iaixsl:attribute name="data-src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
													<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
												</img>
											</picture>
										</iaixsl:when>
									</iaixsl:choose>
									<iaixsl:if test="desc != ''">
										<div class="dictionary__description --name"><iaixsl:value-of disable-output-escaping="yes" select="desc"/></div>
									</iaixsl:if>
								</div>
								
								<div class="dictionary__values col-6 col-md-8">
									<iaixsl:for-each select="values/value">
										<iaixsl:if test="position() &gt; 1"/>
										<div class="dictionary__value">
											<iaixsl:if test="(@gfx_desktop and @gfx_tablet and @gfx_mobile) or @gfx">
												<iaixsl:attribute name="data-gfx">true</iaixsl:attribute>
											</iaixsl:if>
											<iaixsl:if test="desc != ''">
												<iaixsl:attribute name="data-desc">true</iaixsl:attribute>
											</iaixsl:if>
											<span class="dictionary__value_txt"><iaixsl:value-of disable-output-escaping="yes" select="@value"/><iaixsl:if test="desc != ''"><a href="#showDescription" class="dictionary__more">Więcej</a></iaixsl:if></span>
											<iaixsl:choose>
												<iaixsl:when test="@gfx_desktop and @gfx_tablet and @gfx_mobile">
													<picture class="dictionary__picture --value">
														<source>
															<iaixsl:attribute name="media">(min-width:979px)</iaixsl:attribute>
															<iaixsl:attribute name="data-srcset"><iaixsl:value-of select="@gfx_desktop"/></iaixsl:attribute>
														</source>
														<source>
															<iaixsl:attribute name="media">(min-width:757px)</iaixsl:attribute>
															<iaixsl:attribute name="data-srcset"><iaixsl:value-of select="@gfx_tablet"/></iaixsl:attribute>
														</source>
														<img src="/gfx/standards/loader.gif?r=1778592039" class="dictionary__img --value b-lazy">
															<iaixsl:attribute name="data-src"><iaixsl:value-of select="@gfx_mobile"/></iaixsl:attribute>
															<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
														</img>
													</picture>
												</iaixsl:when>
												<iaixsl:when test="@gfx">
													<picture class="dictionary__picture --value">
														<img src="/gfx/standards/loader.gif?r=1778592039" class="dictionary__img --value b-lazy">
															<iaixsl:attribute name="data-src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
															<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
														</img>
													</picture>
												</iaixsl:when>
											</iaixsl:choose>
											<iaixsl:if test="desc != ''">
												<div class="dictionary__description --value"><iaixsl:value-of disable-output-escaping="yes" select="desc"/></div>
											</iaixsl:if>
										</div>
									</iaixsl:for-each>
								</div>
							</div>
						</iaixsl:otherwise>
					</iaixsl:choose>
				</iaixsl:for-each>
			</div>
		</section>
	</iaixsl:if>
<!-- (projector_longdescription, 60dd8f73c1bf09.77752886.7)-->
			<iaixsl:if test="page/projector/product/vlongdescription and not(page/projector/product/vlongdescription = '')">
				<section id="projector_longdescription" class="section longdescription cm">
					<iaixsl:if test="/shop/page/projector/product/traits/trait[not(contains(@groupdescription, 'gs1:'))]">
						<iaixsl:attribute name="data-traits">true</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:if test="count(/shop/page/projector/product/dictionary/items) &gt; 0 or not(/shop/page/projector/product/firm/@name = '') or /shop/page/projector/product/@code or /shop/page/projector/product/series">
						<iaixsl:attribute name="data-dictionary">true</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/vlongdescription/text()"/>
				</section>
			</iaixsl:if>
		<!-- (projector_enclosures, 60dd8f73e7f3b2.73683556.10)-->
	<iaixsl:if test="(/shop/page/projector/product/enclosures/documents/item) or (/shop/page/projector/product/enclosures/audio/item)  or (/shop/page/projector/product/enclosures/other)  or (/shop/page/projector/product/enclosures/images_attachments/item) or (/shop/page/projector/product/enclosures/video/item)">
		
		<iaixsl:variable name="label_enclosures">Do pobrania</iaixsl:variable>

		<section id="projector_enclosures" class="section enclosures">
			<iaixsl:if test="$label_enclosures">
				<div class="enclosures__label mb-3">
					<span class="enclosures__label_txt"><iaixsl:value-of select="$label_enclosures"/></span>
				</div>
			</iaixsl:if>
			<script class="ajaxLoad">
			window.enclosuresGPSRConfig = {<iaixsl:for-each select="/shop/page/projector/product/enclosures/*">&quot;<iaixsl:value-of select="name()"/>&quot;: [<iaixsl:for-each select="item">{name: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="@name"/></iaixsl:call-template>,position: &quot;<iaixsl:value-of select="@position"/>&quot;,url: &quot;<iaixsl:value-of select="@url"/>&quot;,preview_url: &quot;<iaixsl:value-of select="@preview_url"/>&quot;,extension: &quot;<iaixsl:value-of select="@extension"/>&quot;,type: &quot;<iaixsl:value-of select="@type"/>&quot;,<iaixsl:if test="count(document_types/document_type) &gt; 0">document_types: [<iaixsl:for-each select="document_types/document_type">{type: &quot;<iaixsl:value-of select="@type"/>&quot;,description: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="normalize-space(description/text())"/></iaixsl:call-template>,name: <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="normalize-space(name/text())"/></iaixsl:call-template>,},</iaixsl:for-each>],</iaixsl:if>},</iaixsl:for-each>],</iaixsl:for-each>
			};
			</script>
			<div class="enclosures__wrapper">
				<iaixsl:if test="/shop/page/projector/product/enclosures/*/item[document_types/document_type]">
					<div class="enclosures__items --gpsr --skeleton">
						<strong class="enclosures__gpsr_label">Zasoby dotyczące bezpieczeństwa i produktów</strong>
						<ul class="enclosures__gpsr">
							<iaixsl:for-each select="//item/document_types/document_type[not(@type = preceding::item/document_types/document_type/@type)]">
								<iaixsl:variable name="documentType"><iaixsl:value-of select="@type"/></iaixsl:variable>
								<iaixsl:if test="count(/shop/page/projector/product/enclosures/*/item[document_types/document_type/@type = $documentType]) &gt; 0">
									<li class="enclosures__gpsr_item">
										<strong class="enclosures__type"/>
										<ul class="enclosures__type_list">
											<iaixsl:for-each select="/shop/page/projector/product/enclosures/*/item[document_types/document_type/@type = $documentType]">
												<li class="enclosures__type_item"/>
											</iaixsl:for-each>
										</ul>
									</li>
								</iaixsl:if>
							</iaixsl:for-each>
						</ul>
					</div>
				</iaixsl:if>
				<iaixsl:if test="/shop/page/projector/product/enclosures/*/item[not(document_types/document_type)]">
					<div class="enclosures__items --other">
						<ul class="enclosures__list">
							<iaixsl:for-each select="/shop/page/projector/product/enclosures/*/item[not(document_types/document_type)]">
								<li class="enclosures__item">
									<a target="_blank">
										<iaixsl:choose>
											<iaixsl:when test="@extension = 'swf'">
												<iaixsl:attribute name="class">enclosures__name --swf</iaixsl:attribute>
											</iaixsl:when>
											<iaixsl:when test="@type = 'video'">
												<iaixsl:attribute name="class">enclosures__name --video</iaixsl:attribute>
											</iaixsl:when>
											<iaixsl:when test="@type = 'audio/mpeg'">
												<iaixsl:attribute name="class">enclosures__name --audio</iaixsl:attribute>
											</iaixsl:when>
											<iaixsl:when test="@type = 'image/image'">
												<iaixsl:attribute name="class">enclosures__name --image</iaixsl:attribute>
											</iaixsl:when>
											<iaixsl:when test="@type = 'doc'">
												<iaixsl:attribute name="class">enclosures__name --document</iaixsl:attribute>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:attribute name="class">enclosures__name --download</iaixsl:attribute>
											</iaixsl:otherwise>
										</iaixsl:choose>
										<iaixsl:attribute name="href"><iaixsl:value-of select="@url"/></iaixsl:attribute>
										<iaixsl:value-of select="@name"/>
									</a>
								</li>
							</iaixsl:for-each>
						</ul>
					</div>
				</iaixsl:if>
			</div>
		</section>
	</iaixsl:if>
<!-- (projector_associated_zone1, 665eba916dc575.07556535.5)-->
  <iaixsl:if test="page/projector/products_associated_zone1">
    <section id="products_associated_zone1" class="hotspot__wrapper">
      <iaixsl:attribute name="data-pageType">projector</iaixsl:attribute>
      <iaixsl:attribute name="data-zone">1</iaixsl:attribute>
      <iaixsl:attribute name="data-products"><iaixsl:value-of select="/shop/page/projector/product/@id"/></iaixsl:attribute>
		<div class="hotspot --list skeleton">
			<span class="headline"/>
			<div class="products d-flex flex-wrap">
				<div class="product col-12 px-0 py-3 d-sm-flex align-items-sm-center py-sm-1">
					<span class="product__icon d-flex justify-content-center align-items-center p-1 m-0"/>
					<span class="product__name mb-1 mb-md-0"/>
					<div class="product__prices"/>
				</div>
				<div class="product col-12 px-0 py-3 d-sm-flex align-items-sm-center py-sm-1">
					<span class="product__icon d-flex justify-content-center align-items-center p-1 m-0"/>
					<span class="product__name mb-1 mb-md-0"/>
					<div class="product__prices"/>
				</div>
				<div class="product col-12 px-0 py-3 d-sm-flex align-items-sm-center py-sm-1">
					<span class="product__icon d-flex justify-content-center align-items-center p-1 m-0"/>
					<span class="product__name mb-1 mb-md-0"/>
					<div class="product__prices"/>
				</div>
				<div class="product col-12 px-0 py-3 d-sm-flex align-items-sm-center py-sm-1">
					<span class="product__icon d-flex justify-content-center align-items-center p-1 m-0"/>
					<span class="product__name mb-1 mb-md-0"/>
					<div class="product__prices"/>
				</div>
			</div>
		</div>
						
    <template class="hotspot_wrapper">
      <div class="hotspot --list">
        <h3 class="hotspot__name headline__wrapper"/>
        <div class="products hotspot__products d-flex flex-wrap">

        </div>
      </div>
    </template>
    <template class="hotspot_headline">
        <span class="headline"><span class="headline__name"/></span>
    </template>
    <template class="hotspot_link_headline">
        <a class="headline" tabindex="0"><span class="headline__name"/></a>
    </template>




    <template class="hotspot_product">
      <div class="product hotspot__product col-12 px-0 py-1 mb-1 mb-md-0 d-flex">
        
        <div class="product__yousave --hidden">
          <span class="product__yousave --label"/>
					<span class="product__yousave --value"/>
        </div>

        <a class="product__icon d-flex justify-content-center align-items-center p-1 m-0" tabindex="-1"/>
				<div class="product__wrapper pl-2 d-flex flex-column flex-md-row align-items-md-center">
				  <span class="product__name_wrapper">
				    <strong class="label_icons --hidden"/>
  					<a class="product__name mb-1 mb-md-0" tabindex="0"/>
					</span>
					<div class="product__prices d-md-flex flex-md-column align-items-md-end ml-md-auto">
            <div class="product__prices_sub flex-md-row align-items-md-center">
              <div class="product__price_wrapper">
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
        			</div>
            </div>
              <span class="price --before-rebate --hidden"/>
              <span class="price --new-price new_price --hidden"/>
        			<span class="price --omnibus omnibus_price --hidden"/>
        			<span class="price --max --hidden"/>
							<span class="price --deposit deposit_price --hidden">
								<span class="deposit_price__label">+ kaucja</span>
								<strong class="deposit_price__value"/>
							</span>
					</div>
					<a class="product__see d-none d-md-block" tabindex="-1">Zobacz</a>
				</div>
      </div>
    </template>
        </section>
  </iaixsl:if>
  <iaixsl:if test="/shop/page/projector/products_associated_zone1/@hotspot_ajax"/>
	<iaixsl:if test="/shop/page/projector/products_associated_zone1/@iairs_ajax"/>
	<iaixsl:if test="/shop/page/projector/products_associated_zone1/@cache_html"/>
<!-- (projector_associated_zone2, 665ebafe933b46.76995570.5)-->
  <iaixsl:if test="page/projector/products_associated_zone2">
    <section id="products_associated_zone2" class="hotspot__wrapper">
      <iaixsl:attribute name="data-pageType">projector</iaixsl:attribute>
      <iaixsl:attribute name="data-zone">2</iaixsl:attribute>
      <iaixsl:attribute name="data-products"><iaixsl:value-of select="/shop/page/projector/product/@id"/></iaixsl:attribute>
  <div class="hotspot skeleton --slider_gallery">
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
    <div class="hotspot --slider_gallery">
      <h3 class="hotspot__name headline__wrapper"/>
      <div class="swiper-navigation">
        <a href="" class="hotspot__arrow --prev"><span>Poprzedni z tej kategorii</span></a>
        <a href="" class="hotspot__arrow --next"><span>Następny z tej kategorii</span></a>
      </div>
      <div class="products__wrapper swiper">
        <div class="products hotspot__products swiper-wrapper"/>
      </div>
      <div class="swiper-pagination"/>
    </div>
  </template>
  <template class="hotspot_headline">
      <span class="headline"><span class="headline__name"/></span>
  </template>
  <template class="hotspot_link_headline">
      <a class="headline" tabindex="0"><span class="headline__name"/></a>
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

<div class="--slider"/>
    </section>
  </iaixsl:if>
	<iaixsl:if test="/shop/page/projector/products_associated_zone2/@hotspot_ajax"> </iaixsl:if>
	<iaixsl:if test="/shop/page/projector/products_associated_zone2/@iairs_ajax"> </iaixsl:if>
	<iaixsl:if test="/shop/page/projector/products_associated_zone2/@cache_html"> </iaixsl:if>
<!-- (projector_warranty, 60dd8f740328d3.91232176.5)-->
            <iaixsl:if test="page/projector/product/warranty and not(page/projector/product/warranty= '')">
                <section id="projector_warranty" class="section warranty">
                    <iaixsl:attribute name="data-type"><iaixsl:value-of select="page/projector/product/warranty/@type"/></iaixsl:attribute>
                    <iaixsl:attribute name="data-period"><iaixsl:value-of select="page/projector/product/warranty/@period"/></iaixsl:attribute>

                    
                    <div class="warranty__label mb-4">
                        <span class="warranty__label_txt"><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/warranty/@name"/></span>
                    </div>

                    
                    <iaixsl:if test="page/projector/product/warranty/@gfx">
                        <div class="warranty__img_wrapper mb-3">
                            <img class="warranty__img">
                                <iaixsl:attribute name="src"><iaixsl:value-of select="page/projector/product/warranty/@gfx"/></iaixsl:attribute>
                                <iaixsl:attribute name="alt"><iaixsl:value-of select="page/projector/product/warranty/@name"/></iaixsl:attribute>
                            </img>
                        </div>
                    </iaixsl:if>

                    
                    <div class="warranty__description"><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/warranty/text()"/></div>
                </section>
            </iaixsl:if>
        <!-- (projector_product_questions, 61b0b16da39390.24988229.8)-->
	<section id="product_questions_list" class="section questions">
		<iaixsl:if test="count(page/projector/questions/question)">
			<iaixsl:attribute name="data-questions">true</iaixsl:attribute>
		</iaixsl:if>

		
		<iaixsl:if test="count(page/projector/questions/question)">
			<div class="questions__label headline">
				<span class="questions__label_txt headline__name">Pytania innych klientów</span>
			</div>
		</iaixsl:if>

		<div class="questions__wrapper row align-items-start">
			
			<iaixsl:if test="count(page/projector/questions/question)">
				<div class="questions__block --questions col-12 col-md-7 col-lg-8 mb-2 mb-md-0">
					<iaixsl:for-each select="page/projector/questions/question">
						<details class="questions__item">
							<summary class="questions__question"><iaixsl:value-of disable-output-escaping="yes" select="@question"/></summary>
							<div class="questions__answer">
							  <iaixsl:value-of disable-output-escaping="yes" select="@answer"/>
							</div>
						</details>
					</iaixsl:for-each>
				</div>
			</iaixsl:if>
			
			<div class="questions__block --banner col-12 col-md-5 col-lg-4">
				<div class="questions__banner">
					<strong class="questions__banner_item --label">Potrzebujesz pomocy? Masz pytania?</strong>
					<span class="questions__banner_item --text">Zadaj pytanie a my odpowiemy niezwłocznie, najciekawsze pytania i odpowiedzi publikując dla innych.</span>
					<div class="questions__banner_item --button">
						<a href="#product_askforproduct" class="btn --solid --medium questions__button">Zadaj pytanie</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	
	<section id="product_askforproduct" class="askforproduct mb-5 col-12">
		<iaixsl:if test="count(page/projector/questions/question)">
			<iaixsl:attribute name="data-questions">true</iaixsl:attribute>
		</iaixsl:if>

		
		<iaixsl:variable name="label_askforproduct">Zapytaj o produkt</iaixsl:variable>
		<iaixsl:variable name="privacy_text1_askforproduct">Dane są przetwarzane zgodnie z </iaixsl:variable>
		<iaixsl:variable name="privacy_text2_askforproduct">polityką prywatności</iaixsl:variable>
		<iaixsl:variable name="privacy_text3_askforproduct">. Przesyłając je, akceptujesz jej postanowienia. </iaixsl:variable>
		<iaixsl:variable name="button_legend_askforproduct"/>

		
		<iaixsl:if test="$label_askforproduct">
			<div class="askforproduct__label headline">
				<span class="askforproduct__label_txt headline__name"><iaixsl:value-of select="$label_askforproduct"/></span>
			</div>
		</iaixsl:if>

		<form action="/settings.php" class="askforproduct__form row flex-column align-items-center" method="post" novalidate="novalidate">
			
			<div class="askforproduct__description col-12 col-sm-7 mb-4">
				<span class="askforproduct__description_txt">Jeżeli powyższy opis jest dla Ciebie niewystarczający, prześlij nam swoje pytanie odnośnie tego produktu. Postaramy się odpowiedzieć tak szybko jak tylko będzie to możliwe.
				</span>
				<span class="askforproduct__privacy"><iaixsl:value-of select="$privacy_text1_askforproduct"/><a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute><iaixsl:value-of select="$privacy_text2_askforproduct"/></a><iaixsl:value-of select="$privacy_text3_askforproduct"/></span>
			</div>

			<input type="hidden" name="question_product_id"><iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute></input>
			<input type="hidden" name="question_action" value="add"/>

			<div class="askforproduct__inputs col-12 col-sm-7">
				
				<div class="f-group askforproduct__email">
					<div class="f-feedback askforproduct__feedback --email">
						<input id="askforproduct__email_input" type="email" class="f-control --validate" name="question_email" required="required" data-graphql="email">
							<iaixsl:if test="page/projector/sender/@email and not(page/projector/sender/@email = '') ">
								<iaixsl:attribute name="class">f-control --validate --focused</iaixsl:attribute>
								<iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/sender/@email"/></iaixsl:attribute>
							</iaixsl:if>
							<iaixsl:if test="/shop/action/zipdelivery/@region_id != ''">
								<iaixsl:attribute name="data-region"><iaixsl:value-of select="/shop/action/zipdelivery/@region_id"/></iaixsl:attribute>
							</iaixsl:if>
						</input>
						<label for="askforproduct__email_input" class="f-label">
							E-mail
						</label>
						<span class="f-control-feedback"/>
					</div>
				</div>

				
				<div class="f-group askforproduct__question">
					<div class="f-feedback askforproduct__feedback --question">
						<textarea id="askforproduct__question_input" rows="6" cols="52" type="question" class="f-control --validate" name="product_question" minlength="3" required="required"/>
						<label for="askforproduct__question_input" class="f-label">
							Pytanie
						</label>
						<span class="f-control-feedback"/>
					</div>
				</div>
			</div>

			
			<div class="askforproduct__submit  col-12 col-sm-7">
				<button class="btn --solid --medium px-5 askforproduct__button">
					Wyślij
				</button>
				<iaixsl:if test="$button_legend_askforproduct">
					<div class="askforproduct__button_legend">
						<iaixsl:value-of select="$button_legend_askforproduct"/>
					</div>
				</iaixsl:if>
			</div>
		</form>
	</section>

	
	<iaixsl:if test="/shop/@projector_askforproduct"> </iaixsl:if>
<!-- (projector_associated_zone3, 665dd092ec0641.46756292.5)-->
  <iaixsl:if test="page/projector/products_associated_zone3">
    <section id="products_associated_zone3" class="hotspot__wrapper">
      <iaixsl:attribute name="data-pageType">projector</iaixsl:attribute>
      <iaixsl:attribute name="data-zone">3</iaixsl:attribute>
      <iaixsl:attribute name="data-products"><iaixsl:value-of select="/shop/page/projector/product/@id"/></iaixsl:attribute>
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
	<iaixsl:if test="/shop/page/projector/products_associated_zone3/@hotspot_ajax"> </iaixsl:if>
	<iaixsl:if test="/shop/page/projector/products_associated_zone3/@iairs_ajax"> </iaixsl:if>
	<iaixsl:if test="/shop/page/projector/products_associated_zone3/@cache_html"> </iaixsl:if>
<!-- (projector_projector_opinons_form, 60dd8e837276d5.00911207.16)-->
	<section id="opinions_section" class="section opinions">
		<iaixsl:variable name="count_opinions">3</iaixsl:variable>
		<iaixsl:variable name="more_opinions">Zobacz więcej</iaixsl:variable>
		
		<iaixsl:if test="/shop/page/projector/comments/@all &gt; '0'">
			<h2 class="headline">
				<span class="headline__name">Opinie o <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></span>
			</h2>
			
			<div class="opinions__manage">
				<div class="opinions__summary">
					<div class="opinions__notes">
						<iaixsl:for-each select="page/projector/comments/opinionClient/notes/note">
							<i class="icon-star opinions__star">
								<iaixsl:if test="/shop/page/projector/comments/@avg &gt; (position() - 0.5)"><iaixsl:attribute name="class">icon-star opinions__star --active</iaixsl:attribute></iaixsl:if>
							</i>
						</iaixsl:for-each>
					</div>
					<span class="opinions__score"><iaixsl:value-of disable-output-escaping="yes" select="page/projector/comments/@avg"/></span>
					<span class="opinions__desc">Liczba wystawionych opinii: <iaixsl:value-of select="page/projector/comments/@all"/></span>
					
					<div class="opinions__add">
						<iaixsl:choose>
							<iaixsl:when test="(page/projector/comments/opinionClient/opinion/@stat = 'y')">
								<div class="menu_messages_message small">
									Twoja opinia jest już zatwierdzona. Nie możesz dodać więcej opinii do tego produktu.
								</div>
							</iaixsl:when>
							<iaixsl:otherwise>
								<iaixsl:if test="(page/projector/comments/opinionClient/opinion/@stat = 'n')">
									<div class="menu_messages_message small">
											Przed opublikowaniem Twoja opinia zostanie sprawdzona pod względem obyczajowym.
									</div>
								</iaixsl:if>
								<a href="#showOpinionForm" id="show_opinion_form" class="btn --solid --medium">
									<iaixsl:choose>
										<iaixsl:when test="(page/projector/comments/opinionClient/opinion/@stat = 'n')">
											<iaixsl:attribute name="title">Zmień swoją opinię</iaixsl:attribute>
											Zmień swoją opinię
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:attribute name="title">Napisz swoją opinię</iaixsl:attribute>
											Napisz swoją opinię
										</iaixsl:otherwise>
									</iaixsl:choose>
								</a>
								<iaixsl:if test="/shop/page/projector/comments/opinionClient/@points">
									<div class="opinions__points">
										<iaixsl:choose>
											<iaixsl:when test="/shop/page/projector/comments/opinionClient/image/@points">
												Za opinię ze zdjęciem otrzymasz
											</iaixsl:when>
											<iaixsl:otherwise>
												Za opinię otrzymasz
											</iaixsl:otherwise>
										</iaixsl:choose>
										<strong>
											<iaixsl:choose>
												<iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/@points, '.') = '00'">
													<iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/@points, '.')"/>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:value-of select="/shop/page/projector/comments/opinionClient/@points"/>
												</iaixsl:otherwise>
											</iaixsl:choose>
											<iaixsl:text> </iaixsl:text>pkt.</strong>
										<br/>w naszym programie lojalnościowym.
									</div>
								</iaixsl:if>
							</iaixsl:otherwise>
						</iaixsl:choose>
					</div>
				</div>
				<div class="opinions__filter">
					<iaixsl:variable name="totalOpinionsAll"><iaixsl:value-of select="page/projector/comments/@all"/></iaixsl:variable>
					
					<iaixsl:if test="/shop/page/projector/comments/opinions/opinion[@confirmedByPurchase = 'true']">
						<div class="opinions__confirmed f-group --checkbox">
							<input type="checkbox" class="f-control" id="opinions_filter_confirmed"/>
							<label class="f-label" for="opinions_filter_confirmed">Pokaż tylko opinie potwierdzone zakupem</label>
						</div>
					</iaixsl:if>
					
					<div class="opinions__average">
						<iaixsl:for-each select="page/projector/comments/opinionClient/notes/note">
							<iaixsl:sort select="@value" data-type="number" order="descending"/>
							<iaixsl:variable name="id"><iaixsl:value-of select="@value"/></iaixsl:variable>
							<iaixsl:variable name="textid">shop-opinion_rate_<iaixsl:value-of select="$id"/></iaixsl:variable>
							<div class="opinions__rating" id="{$textid}">
								<span class="opinions__number"><iaixsl:value-of select="@value"/></span><span class="opinions__star --active"><i class="icon-star"> </i></span>
								<div class="opinions__bar">
									<div class="opinions__barfill">
										<iaixsl:variable name="total"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note=$id])"/></iaixsl:variable>
										<iaixsl:attribute name="style">width: <iaixsl:value-of select="$total div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
									</div>
								</div>
								<span class="opinions__count"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note=$id])"/></span>
							</div>
						</iaixsl:for-each>
					</div>
					<div class="opinions__guide">Kliknij ocenę aby filtrować opinie</div>
				</div>
			</div>
			
			<div class="opinions__register">
				
				<ul class="opinions__list">
					<iaixsl:for-each select="/shop/page/projector/comments/opinions/opinion">
						<iaixsl:variable name="opinion_rate">
							<iaixsl:choose>
								<iaixsl:when test="@note &gt; 4.5">shop-opinion_rate_5</iaixsl:when>
								<iaixsl:when test="@note &gt; 3.5">shop-opinion_rate_4</iaixsl:when>
								<iaixsl:when test="@note &gt; 2.5">shop-opinion_rate_3</iaixsl:when>
								<iaixsl:when test="@note &gt; 1.5">shop-opinion_rate_2</iaixsl:when>
								<iaixsl:when test="@note &gt; 0.5">shop-opinion_rate_1</iaixsl:when>
							</iaixsl:choose>
						</iaixsl:variable>
						
						<li class="opinion" data-opinion_rate="{$opinion_rate}" data-hide="{position() &gt; $count_opinions}" data-confirmed="{@confirmedByPurchase}" data-photo="{@image_small and not(@image_small = '')}">
							
							<iaixsl:if test="@image_small and not(@image_small = '')">
								<div class="opinion__photo">
									<a data-imagelightbox="o" target="_blank" href="{@image_large}">
											<img loading="lazy" width="{@width_large}" height="{@height_large}" alt="{@client}" title="{@client}" src="{@image_large}"/>
									</a>
								</div>
							</iaixsl:if>
							<div class="opinion__wrapper">
								
								<div class="opinion__top">
									
									<iaixsl:if test="@note">
										<div class="opinion__notes">
											<i class="icon-star opinions__star">
												<iaixsl:if test="@note &gt; 0.5"><iaixsl:attribute name="class">icon-star opinions__star --active</iaixsl:attribute></iaixsl:if>
											</i>
											<i class="icon-star opinions__star">
												<iaixsl:if test="@note &gt; 1.5"><iaixsl:attribute name="class">icon-star opinions__star --active</iaixsl:attribute></iaixsl:if>
											</i>
											<i class="icon-star opinions__star">
												<iaixsl:if test="@note &gt; 2.5"><iaixsl:attribute name="class">icon-star opinions__star --active</iaixsl:attribute></iaixsl:if>
											</i>
											<i class="icon-star opinions__star">
												<iaixsl:if test="@note &gt; 3.5"><iaixsl:attribute name="class">icon-star opinions__star --active</iaixsl:attribute></iaixsl:if>
											</i>
											<i class="icon-star opinions__star">
												<iaixsl:if test="@note &gt; 4.5"><iaixsl:attribute name="class">icon-star opinions__star --active</iaixsl:attribute></iaixsl:if>
											</i>
											<strong><iaixsl:value-of select="@note"/>/5</strong>
										</div>
										
									</iaixsl:if>
									
									<div class="opinion__confirmation" data-confirmed="{@confirmedByPurchase}">
										<strong><iaixsl:choose><iaixsl:when test="@confirmedByPurchase = 'true'">Opinia potwierdzona zakupem</iaixsl:when><iaixsl:otherwise>Opinia niepotwierdzona zakupem</iaixsl:otherwise></iaixsl:choose></strong>
									</div>
								</div>
								
								<div class="opinion__content">
									<iaixsl:choose>
										<iaixsl:when test="text and response"><iaixsl:value-of select="text/text()" disable-output-escaping="yes"/></iaixsl:when>
										<iaixsl:otherwise><iaixsl:value-of select="text()" disable-output-escaping="yes"/></iaixsl:otherwise>
									</iaixsl:choose>
								</div>
								
								<div class="opinion__bottom">
									<div class="opinion__date"><iaixsl:value-of select="@date"/></div>
									<div class="opinion__author"><iaixsl:value-of select="@client"/></div>
									<div class="opinion__rating">
										<span>Czy opinia była pomocna?</span>
											<a href="#" rel="" class="opinion__rate --yes">
												<iaixsl:attribute name="title">Oznacz opinię jako pomocną</iaixsl:attribute>
												<input name="opinionState" type="hidden">
													<iaixsl:attribute name="value">positive</iaixsl:attribute>
												</input>
												<i class="icon-thumbs-up-empty"/> Tak <span class="opinion__ratecount"><iaixsl:value-of select="@rate_yes"/></span>
											</a>
											<a href="#" class="opinion__rate --no">
												<iaixsl:attribute name="title">Oznacz opinię jako niepomocną</iaixsl:attribute>
												<input name="opinionState" type="hidden">
													<iaixsl:attribute name="value">negative</iaixsl:attribute>
												</input>
												<i class="icon-thumbs-down"/> Nie <span class="opinion__ratecount"><iaixsl:value-of select="@rate_no"/></span>
											</a>
											<input name="opinionId" type="hidden">
												<iaixsl:attribute name="value"><iaixsl:value-of select="@opinionId"/></iaixsl:attribute>
											</input>
									</div>
								</div>
								
								<iaixsl:if test="response and response != ''">
									<div class="opinion__response">
										<div class="opinion__response-top">
											<b>Odpowiedź sklepu</b><span class="opinion__date"><iaixsl:value-of select="response/@date"/></span>
										</div>
										<div class="opinion__response-text"><iaixsl:value-of select="response" disable-output-escaping="yes"/></div>
									</div>
								</iaixsl:if>
							</div>
						</li>
					</iaixsl:for-each>
				</ul>
				
				<div class="menu_messages_message d-none" id="no_opinions_of_type">
					Brak opinii z taką liczbą gwiazdek.
				</div>
				
				<iaixsl:if test="$more_opinions and count(/shop/page/projector/comments/opinions/opinion) &gt; $count_opinions">
					<div class="opinions__more">
						<a href="#more_opinions" class="opinions__more_txt"><iaixsl:value-of select="$more_opinions"/></a>
					</div>
				</iaixsl:if>
			</div>
		</iaixsl:if>
		
		
		<iaixsl:if test="not(page/projector/comments/opinionClient/opinion/@stat = 'y')">
			<div class="opinions-form">
				<iaixsl:if test="/shop/page/projector/comments/@all &gt; '0'">
					<iaixsl:attribute name="class">opinions-form d-none</iaixsl:attribute>
				</iaixsl:if>

				<div class="big_label">
					<iaixsl:choose>
						<iaixsl:when test="(/shop/page/projector/comments/opinionClient/opinion/@stat = 'n')">
							Zmień swoją opinię
						</iaixsl:when>
						<iaixsl:otherwise>
							Napisz swoją opinię
						</iaixsl:otherwise>
					</iaixsl:choose>
				</div>
				<form class="opinions-form__form" enctype="multipart/form-data" id="shop_opinion_form2" action="/settings.php" method="post">
					<input type="hidden" name="product">
						<iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute>
					</input>

					
					<div class="opinions-form__top">
						<div class="opinions-form__name">
							Twoja ocena:
						</div>
						<div class="opinions-form__rating">
							<iaixsl:variable name="starSelected">
								<iaixsl:choose>
									<iaixsl:when test="/shop/page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value">
										<iaixsl:value-of select="/shop/page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value"/>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:value-of select="count(/shop/page/projector/comments/opinionClient/notes/note)"/>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</iaixsl:variable>
							<div class="opinions-form__notes">
								<iaixsl:for-each select="/shop/page/projector/comments/opinionClient/notes/note">
									<a href="#" class="opinions__star">
										<iaixsl:choose>
											<iaixsl:when test="@value &gt; $starSelected">
												<iaixsl:attribute name="class">opinions__star</iaixsl:attribute>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:attribute name="class">opinions__star --active</iaixsl:attribute>
											</iaixsl:otherwise>
										</iaixsl:choose>
										<iaixsl:attribute name="rel"><iaixsl:value-of select="@value"/></iaixsl:attribute>
										<iaixsl:attribute name="title">
											<iaixsl:value-of select="@value"/>/<iaixsl:value-of select="count(../note)"/>
										</iaixsl:attribute>
										<span>
											<i class="icon-star"> </i>
										</span>
									</a>
								</iaixsl:for-each>
							</div>
							<strong class="opinions-form__rate">
								<iaixsl:value-of select="$starSelected"/>/<iaixsl:value-of select="count(/shop/page/projector/comments/opinionClient/notes/note)"/>
							</strong>
							<input class="opinion_star_input" type="hidden" name="note">
									<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
									<iaixsl:choose>
										<iaixsl:when test="/shop/page/projector/comments/opinionClient/notes/note/@selected = 'true'">
											<iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value"/></iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:attribute name="value"><iaixsl:value-of select="count(/shop/page/projector/comments/opinionClient/notes/note)"/></iaixsl:attribute>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</input>
						</div>
					</div>

					
					<div class="form-group">
						<div class="has-feedback">
							<textarea id="add_opinion_textarea" class="form-control" name="opinion">
								<iaixsl:attribute name="aria-label">Treść twojej opinii</iaixsl:attribute>
								<iaixsl:if test="/shop/page/projector/comments/opinionClient/opinion and not(/shop/page/projector/comments/opinionClient/opinion = '')">
									<iaixsl:attribute name="class">form-control focused</iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:value-of select="/shop/page/projector/comments/opinionClient/opinion"/>
							</textarea>
							<label for="add_opinion_textarea" class="control-label">
								Treść twojej opinii
							</label>
							<span class="form-control-feedback"/>

							
							<iaixsl:if test="/shop/page/projector/comments/opinionClient/opinion/@points">
								<strong class="opinions__points">
									<iaixsl:text>+ </iaixsl:text>
									<iaixsl:choose>
										<iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/opinion/@points, '.') = '00'">
											<iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/opinion/@points, '.')"/>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:value-of select="/shop/page/projector/comments/opinionClient/opinion/@points"/>
										</iaixsl:otherwise>
									</iaixsl:choose>
									pkt.
								</strong>
							</iaixsl:if>
						</div>
					</div>

					
					<iaixsl:if test="(page/projector/comments/opinionClient/image/@enabled='true')">
						<div class="opinions-form__addphoto">
							<div class="opinions-form__addphoto_wrapper">
								<span class="opinions-form__addphoto_wrapper_text">
									<i class="icon-file-image"/>  Dodaj własne zdjęcie produktu:
								</span>
								<input class="opinions-form__addphoto_input" type="file" name="opinion_photo">
									<iaixsl:attribute name="aria-label">Dodaj własne zdjęcie produktu</iaixsl:attribute>
									<iaixsl:if test="/shop/form_data/upload_file/max_filesize/@bytes">
										<iaixsl:attribute name="data-max_filesize"><iaixsl:value-of select="/shop/form_data/upload_file/max_filesize/@bytes"/></iaixsl:attribute>
									</iaixsl:if>
								</input>

								
								<iaixsl:if test="/shop/page/projector/comments/opinionClient/image/@points">
									<strong class="opinions-form__points">
										<iaixsl:text>+ </iaixsl:text>
										<iaixsl:choose>
											<iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/image/@points, '.') = '00'">
												<iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/image/@points, '.')"/>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:value-of select="/shop/page/projector/comments/opinionClient/image/@points"/>
											</iaixsl:otherwise>
										</iaixsl:choose>
										pkt.
									</strong>
								</iaixsl:if>
							</div>
							
							<iaixsl:if test="/shop/page/projector/comments/opinionClient/image/@points">
								<div class="opinions-form__picturepoints">
									Dodaj zrobione przez siebie zdjęcie tego produktu <br/> i zdobądź dodatkowe
									<strong>
										<iaixsl:choose>
											<iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/image/@points, '.') = '00'">
												<iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/image/@points, '.')"/>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:value-of select="/shop/page/projector/comments/opinionClient/image/@points"/>
											</iaixsl:otherwise>
										</iaixsl:choose>
										pkt.
									</strong>
									w naszym programie lojalnościowym.
								</div>
							</iaixsl:if>
						</div>
					</iaixsl:if>

					
					<iaixsl:if test="/shop/page/projector/sender/@opinion_unregistered = 'true'">
						<div class="form-group">
							<div class="has-feedback has-required">
								<input id="addopinion_name" class="form-control" type="text" name="addopinion_name" value="">
									<iaixsl:attribute name="required">required</iaixsl:attribute>
								</input>
								<label for="addopinion_name" class="control-label">
									Twoje imię
								</label>
								<span class="form-control-feedback"/>
							</div>
						</div>
						<div class="form-group">
							<div class="has-feedback has-required">
								<input id="addopinion_email" class="form-control" type="email" name="addopinion_email" value="">
									<iaixsl:attribute name="required">required</iaixsl:attribute>
								</input>
								<label for="addopinion_email" class="control-label">
									Twój email
								</label>
								<span class="form-control-feedback"/>
							</div>
						</div>
					</iaixsl:if>
					<div class="opinions-form__button">
						<button type="submit" class="btn --solid --medium">
							<iaixsl:choose>
								<iaixsl:when test="/shop/page/projector/comments/opinionClient/opinion and not(/shop/page/projector/comments/opinionClient/opinion = '')">
									<iaixsl:attribute name="title">Zmień swoją opinię</iaixsl:attribute>
									<iaixsl:attribute name="data-button_edit">true</iaixsl:attribute>
									Zmień opinię
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:attribute name="title">Dodaj opinię</iaixsl:attribute>
									Wyślij opinię
								</iaixsl:otherwise>
							</iaixsl:choose>
						</button>
					</div>
				</form>
			</div>
		</iaixsl:if>

	</section>
	<iaixsl:if test="/shop/page/projector/sender/@active='true'">
		<iaixsl:if test="/shop/page/projector/comments/opinions/opinion/response"/>
	</iaixsl:if>
<!-- (projector_associated_zone4, 60dd8e7841cdd9.19179168.2)-->

            <iaixsl:if test="/shop/page/projector/products_associated_zone4/@name"> </iaixsl:if>
            <iaixsl:if test="page/projector/products_associated_zone4/opinion"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/products_associated_zone4"> </iaixsl:if>

        <!-- (projector_blog_items, 60dd8e812b4558.34086826.6)-->
	<iaixsl:variable name="projector_blog_date"/>
	<iaixsl:variable name="projector_blog_after_label"/>
	<iaixsl:variable name="projector_blog_see_more">Czytaj więcej</iaixsl:variable>

	<iaixsl:if test="count(/shop/page/projector/blog_entries/item) &gt; 0">
		<section id="projector_blog" class="section article">
			<h2>
				<a href="/blog-list.php" class="headline">
					<iaixsl:attribute name="title">Kliknij, by zobaczyć wszystkie wpisy bloga</iaixsl:attribute>
					<iaixsl:if test="/shop/page/mainpage2/@link and /shop/page/mainpage2/@link!=''">
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/mainpage2/@link"/></iaixsl:attribute>
					</iaixsl:if>
					Z naszego bloga
				</a>

				<iaixsl:if test="$projector_blog_after_label">
					<a href="/blog-list.php" class="headline__after">
						<iaixsl:attribute name="title">Kliknij, by zobaczyć wszystkie wpisy bloga</iaixsl:attribute>
						<iaixsl:if test="/shop/page/mainpage2/@link and /shop/page/mainpage2/@link!=''">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/mainpage2/@link"/></iaixsl:attribute>
						</iaixsl:if>
            <span class="link__text"><iaixsl:value-of select="$projector_blog_after_label"/></span>
            <i class="icon icon-ds-arrow-right pl-1"/>
					</a>
				</iaixsl:if>
			</h2>

			<div class="article__block">
				<iaixsl:for-each select="/shop/page/projector/blog_entries/item">
					<article class="article__item">
						
						<iaixsl:choose>
							<iaixsl:when test="image/@src and image/@src != ''">
								<iaixsl:choose>
									<iaixsl:when test="(link/@href) != ''">
										<a href="{link/@href}" class="article__image_wrapper" tabindex="-1">
											<img class="article__image" src="{image/@src}" width="{image/@width}" height="{image/@height}" loading="lazy">
												<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="title/text()"/></iaixsl:attribute>
											</img>
										</a>
									</iaixsl:when>
									<iaixsl:otherwise>
										<span class="article__image_wrapper">
											<img class="article__image" src="{image/@src}" width="{image/@width}" height="{image/@height}" loading="lazy">
												<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="title/text()"/></iaixsl:attribute>
											</img>
										</span>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</iaixsl:when>

							
							<iaixsl:otherwise>
								<div class="article__image_wrapper">
									<iaixsl:choose>
										<iaixsl:when test="/shop/mask/top/link/image_mobile/@src and /shop/mask/top/link/image_tablet/@src">
											<picture>
												<iaixsl:if test="/shop/mask/top/link/image/@src">
													<source media="(min-width:979px)" srcset="{/shop/mask/top/link/image/@src}" width="{/shop/mask/top/link/image/@width}" height="{/shop/mask/top/link/image/@height}"/>
												</iaixsl:if>
												<iaixsl:if test="/shop/mask/top/link/image_tablet/@src">
													<source media="(min-width:757px)" srcset="{/shop/mask/top/link/image_tablet/@src}" width="{/shop/mask/top/link/image_tablet/@width}" height="{/shop/mask/top/link/image_tablet/@height}"/>
												</iaixsl:if>
												<img class="article__image" src="{/shop/mask/top/link/image_mobile/@src}" alt="{/shop/mask/top/link/description}" width="{/shop/mask/top/link/image_mobile/@width}" height="{/shop/mask/top/link/image_mobile/@height}" loading="lazy"/>
											</picture>
										</iaixsl:when>
										<iaixsl:otherwise>
											<img class="article__image" src="{/shop/mask/top/link/image/@src}" alt="{/shop/mask/top/link/description}" width="{/shop/mask/top/link/image/@width}" height="{/shop/mask/top/link/image/@height}" loading="lazy"/>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</div>
							</iaixsl:otherwise>
						</iaixsl:choose>

						
						<div class="article__content" data-enabled-data="{$projector_blog_date}">
							<iaixsl:if test="$projector_blog_date">
								<div class="article__date"><iaixsl:value-of disable-output-escaping="yes" select="date"/></div>
							</iaixsl:if>

							<iaixsl:choose>
								<iaixsl:when test="(link/@href) != ''">
									<h3 class="article__name_wrapper">
										<a class="article__name" href="{link/@href}" tabindex="0">
											<iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="title"/></iaixsl:attribute>
											<iaixsl:value-of disable-output-escaping="yes" select="title"/>
										</a>
									</h3>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:if test="title != ''">
										<h3 class="article__name_wrapper">
											<span class="article__name"><iaixsl:value-of disable-output-escaping="yes" select="title"/></span>
										</h3>
									</iaixsl:if>
								</iaixsl:otherwise>
							</iaixsl:choose>

							
							<div class="article__text">
								<iaixsl:value-of disable-output-escaping="yes" select="description"/>
							</div>

							<iaixsl:if test="more/@href and $projector_blog_see_more">
								<a class="article__more_link" href="{more/@href}" tabindex="-1">
									<iaixsl:if test="not((link/@href) != '')">
										<iaixsl:attribute name="tabindex">0</iaixsl:attribute>
									</iaixsl:if>
									<iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="title"/></iaixsl:attribute>
									<span class="link__text"><iaixsl:value-of select="$projector_blog_see_more"/></span>
									<i class="icon icon-ds-arrow-right pl-1"/>
								</a>
							</iaixsl:if>
						</div>
					</article>
				</iaixsl:for-each>
			</div>
		</section>
	</iaixsl:if>
<!-- (projector_cms_sizes, 60dd8e79e99273.66491246.8)-->
	<iaixsl:if test="/shop/page/projector/product/sizes_chart">
		<div class="component_projector_sizes_chart">
			<iaixsl:attribute name="id">component_projector_sizes_cms_not</iaixsl:attribute>
			<iaixsl:if test="/shop/page/projector/product/sizes_chart/descriptions/description">
			 <div class="table-responsive"> 
  				<table class="table-condensed">
  					<iaixsl:attribute name="class">ui-responsive table-stroke ui-table ui-table-reflow table-condensed</iaixsl:attribute>
  					<thead>
  						<tr>
  							<th class="table-first-column">Rozmiar</th>
  							<iaixsl:for-each select="/shop/page/projector/product/sizes_chart/descriptions/description">
  								<th>
  									<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
  								</th>
  							</iaixsl:for-each>
  						</tr>
  					</thead>
  					<tbody>
  					<iaixsl:for-each select="/shop/page/projector/product/sizes_chart/sizes/size">
  						<tr>
  							<td class="table-first-column">
  								<iaixsl:value-of disable-output-escaping="yes" select="@description"/>
  							</td>
  							<iaixsl:for-each select="description">
  								<td>
  									<iaixsl:value-of disable-output-escaping="yes" select="@text"/>
  								</td>
  							</iaixsl:for-each>
  						</tr>
  					</iaixsl:for-each>
  				</tbody>
  			</table>
			</div>
		</iaixsl:if>
		<div class="sizes_chart_cms">
			<iaixsl:if test="/shop/page/projector/product/sizes_chart/text">
				<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/sizes_chart/text"/>
			</iaixsl:if>
		</div>
		</div>
	</iaixsl:if>
	<iaixsl:if test="not(/shop/page/projector/product/sizes_chart) and ((page/projector/text_sizesgroup) and (page/projector/text_sizesgroup != ''))">
		<div class="component_projector_sizes_chart">
			<iaixsl:attribute name="id">component_projector_sizes_cms_not</iaixsl:attribute>
			<div class="sizes_chart_cms">
				<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/text_sizesgroup"/>
			</div>
		</div>
	</iaixsl:if>

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
<!-- (menu_alert, 665dd0d85a8c20.15522758.5)-->
	<iaixsl:if test="/shop/action_alert/@type = 'add_basket'">
		<div id="menu_preloader_add" class="added">
			<h2 class="headline added__headline p-0">
				<span class="headline__name added__headline_name">Dodano do koszyka</span>
			</h2>
			<div class="added__block">
				<div class="added__product product">
					<iaixsl:if test="/shop/action_alert/products/product/@product_type = 'product_bundle'">
						<iaixsl:attribute name="data-bundle">true</iaixsl:attribute>
					</iaixsl:if>
					
					<a class="added__icon product__icon m-0 d-flex justify-content-center align-items-center">
						<iaixsl:attribute name="data-product-id"><iaixsl:value-of select="/shop/action_alert/products/product/@id"/></iaixsl:attribute>
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action_alert/products/product/@link"/></iaixsl:attribute>
						<iaixsl:attribute name="title"><iaixsl:value-of select="/shop/action_alert/products/product/name"/></iaixsl:attribute>

						 <iaixsl:choose>
              <iaixsl:when test="/shop/action_alert/products/product/icon_second and not(/shop/action_alert/products/product/icon_second = '/' or /shop/action_alert/products/product/icon_second = '')">
                <picture>
                  <source type="image/webp">
                    <iaixsl:attribute name="srcset"><iaixsl:value-of select="/shop/action_alert/products/product/icon"/></iaixsl:attribute>
                  </source>

                  <img src="/gfx/standards/loader.gif?r=1778592039" class="b-lazy">
      							<iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="/shop/action_alert/products/product/icon_second"/>
      							</iaixsl:attribute>
      							<iaixsl:attribute name="alt">
      								<iaixsl:value-of disable-output-escaping="yes" select="/shop/action_alert/products/product/name"/>
      							</iaixsl:attribute>
      						</img>

                </picture>
              </iaixsl:when>
              <iaixsl:otherwise>
    						<img src="/gfx/standards/loader.gif?r=1778592039" class="b-lazy">
    							<iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="/shop/action_alert/products/product/icon"/>
    							</iaixsl:attribute>
    							<iaixsl:attribute name="alt">
    								<iaixsl:value-of disable-output-escaping="yes" select="/shop/action_alert/products/product/name"/>
    							</iaixsl:attribute>
    						</img>
              </iaixsl:otherwise>
            </iaixsl:choose>
					</a>
					
					<h3 class="added__name_h3 d-flex">
						<a class="added__name product__name">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action_alert/products/product/@link"/></iaixsl:attribute>
							<iaixsl:attribute name="title"><iaixsl:value-of select="/shop/action_alert/products/product/name"/></iaixsl:attribute>
							<iaixsl:value-of select="/shop/action_alert/products/product/name"/>
						</a>
					</h3>
					
					<div class="added__prices product__prices">
						<strong class="price">
							<iaixsl:if test="/shop/action_alert/products/product/add_basket_info/size/@count &gt; 1">
								<span class="price__count"><iaixsl:value-of select="/shop/action_alert/products/product/add_basket_info/size/@count"/> x </span>
							</iaixsl:if>
							<span class="price__unit">
								<iaixsl:choose>
									<iaixsl:when test="/shop/page/@price_type = 'net'">
										<iaixsl:value-of select="/shop/action_alert/products/product/price/@price_net_formatted"/>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:value-of select="/shop/action_alert/products/product/price/@price_formatted"/>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</span>
							<span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span>
						</strong>
						<iaixsl:if test="/shop/action_alert/products/product/price/@points != '' and not(/shop/action_alert/products/product/add_basket_info/size/@count &gt; 1)">
							<span class="price --points">
								<iaixsl:value-of select="/shop/action_alert/products/product/price/@points"/><span class="currency"> pkt. </span>
							</span>
						</iaixsl:if>
						<iaixsl:if test="/shop/action_alert/products/product/add_basket_info/size/@count &gt; 1">
							<span class="price --value">
								<span class="price__value_text">Wartość: </span>
								<strong class="price__value">
									<iaixsl:choose>
										<iaixsl:when test="/shop/page/@price_type = 'net'">
											<iaixsl:value-of select="/shop/action_alert/summary/products_worth/@value_net_formatted"/>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:value-of select="/shop/action_alert/summary/products_worth/@value_formatted"/>
										</iaixsl:otherwise>
									</iaixsl:choose>
									<span class="price_vat"><iaixsl:value-of select="$priceTypeText"/></span>
								</strong>
							</span>
						</iaixsl:if>
					</div>
					
					<div class="added__buttons justify-content-center align-items-center">
						<a class="added__button --close" href="#close">Kontynuuj zakupy</a>
						<a class="added__button --basket btn --solid --medium">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/basket/@link"/></iaixsl:attribute>
							Przejdź do koszyka
							</a>
					</div>
				</div>
			</div>


				<iaixsl:if test="/shop/page/projector/products_associated_zone4">
					<section id="products_associated_zone4" class="hotspot__wrapper mx-n4 mt-4 mb-n4 p-4 --added">
				   <iaixsl:attribute name="data-pagetype">projector</iaixsl:attribute>
           <iaixsl:attribute name="data-zone">4</iaixsl:attribute>
           <iaixsl:attribute name="data-products"><iaixsl:value-of select="/shop/page/projector/product/@id"/></iaixsl:attribute>
  <div class="hotspot mb-5 skeleton">
    <span class="headline"/>
    <div class="products d-flex flex-wrap">
      <div class="product col-6 col-sm-3 col-xl-2 py-3">
        <span class="product__icon d-flex justify-content-center align-items-center"/>
        <span class="product__name"/>
        <div class="product__prices"/>
      </div>
      <div class="product col-6 col-sm-3 col-xl-2 py-3">
        <span class="product__icon d-flex justify-content-center align-items-center"/>
        <span class="product__name"/>
        <div class="product__prices"/>
      </div>
      <div class="product col-6 col-sm-3 col-xl-2 py-3">
        <span class="product__icon d-flex justify-content-center align-items-center"/>
        <span class="product__name"/>
        <div class="product__prices"/>
      </div>
      <div class="product col-6 col-sm-3 col-xl-2 py-3">
        <span class="product__icon d-flex justify-content-center align-items-center"/>
        <span class="product__name"/>
        <div class="product__prices"/>
      </div>
    </div>
  </div>
  
  
  <template class="hotspot_wrapper">
    <div class="hotspot --added">
      <h3 class="hotspot__name headline__wrapper"/>
      <div class="products hotspot__products d-flex flex-wrap align-items-start mx-n3">
  
      </div>
    </div>
  </template>
  <template class="hotspot_headline">
      <span class="headline"><span class="headline__name"/></span>
  </template>
  <template class="hotspot_link_headline">
      <a class="headline" tabindex="0"><span class="headline__name"/></a>
  </template>
  <template class="hotspot_product">
    <div class="product hotspot__product col-12 py-2 col-sm-6">
      
      <div class="product__yousave --hidden">
        <span class="product__yousave --label"/>
  			<span class="product__yousave --value"/>
      </div>
  
      <a class="product__icon d-flex justify-content-center align-items-center" tabindex="-1"/>

      <div class="product__content_wrapper">
        <span class="product__name_wrapper">
          <strong class="label_icons --hidden"/>
          <a class="product__name" tabindex="0"/>
        </span>
        
    
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
		  	</section>
			</iaixsl:if>
		</div>
	</iaixsl:if>
	<iaixsl:if test="/shop/page/projector/products_associated_zone4/@hotspot_ajax"> </iaixsl:if>
	<iaixsl:if test="/shop/page/projector/products_associated_zone4/@iairs_ajax"> </iaixsl:if>
  <iaixsl:if test="/shop/page/projector/products_associated_zone4/@hotspot_ajax"> </iaixsl:if>
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
<!-- (menu_compare, 6374c9a3a9b958.90333095.4)--><!-- (menu_shoppinglist, 6374c7c8e99458.25728203.8)-->
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




		</footer>
	</iaixsl:if>
	<iaixsl:variable name="projector_script_bottom">true</iaixsl:variable>
	<iaixsl:if test="/shop/page/@type = 'main' or /shop/page/@type = 'search' or /shop/page/@type = 'place-order' or /shop/page/@type = 'noproduct' or ($projector_script_bottom and /shop/page/@type = 'projector')">
		
		<iaixsl:choose>
			<iaixsl:when test="/shop/@preview &gt; 0">
				<script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
			</iaixsl:when>
			<iaixsl:otherwise>
				
			</iaixsl:otherwise>
		</iaixsl:choose>

		
		
<iaixsl:choose>
    <iaixsl:when test="/shop/@preview &gt; 0"><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/projector_shop.js?r=1778592114</iaixsl:attribute></script></iaixsl:when>
    <iaixsl:otherwise><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/projector_shop.js.gzip?r=1778592114</iaixsl:attribute></script></iaixsl:otherwise>
</iaixsl:choose>


		
		<script src="/gfx/pol/projector_photos_core.js.gzip?r=1778592114" type="module"></script>
	</iaixsl:if>

	
	<script src="/gfx/pol/envelope.js.gzip?r=1778592114"></script><script src="/gfx/pol/menu_suggested_shop_for_language.js.gzip?r=1778592114"></script><script src="/gfx/pol/menu_alert.js.gzip?r=1778592114"></script><script src="/gfx/pol/add_codes_to_basket.js.gzip?r=1778592114"></script><script src="/gfx/pol/menu_compare.js.gzip?r=1778592114"></script><script src="/gfx/pol/menu_shoppinglist.js.gzip?r=1778592114"></script><script src="/gfx/pol/menu_additionalpayments.js.gzip?r=1778592114"></script><script src="/gfx/pol/hotspots_javascript.js.gzip?r=1778592114"></script><script src="/gfx/pol/hotspots_slider.js.gzip?r=1778592114"></script><script src="/gfx/pol/hotspots_add_to_basket.js.gzip?r=1778592114"></script><script src="/gfx/pol/projector_dictionary.js.gzip?r=1778592114"></script><script src="/gfx/pol/projector_projector_opinons_form.js.gzip?r=1778592114"></script><script src="/gfx/pol/projector_cms_sizes.js.gzip?r=1778592114"></script>

	
	<iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>

	<script>app_shop.runApp();</script>
	
	<iaixsl:if test="/shop/page/seolink_with_language_directory"/>

	<iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
		<iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
	</iaixsl:if>
</iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-backslash"><iaixsl:param name="str" select="."/><iaixsl:choose><iaixsl:when test="contains($str, '\')"><iaixsl:value-of select="concat(substring-before($str, '\'), '\\' )"/><iaixsl:call-template name="escape-backslash"><iaixsl:with-param name="str" select="substring-after($str, '\')"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape_backslash"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:choose><iaixsl:when test="not($escape_backslash)"><iaixsl:value-of select="$str"/></iaixsl:when><iaixsl:otherwise><iaixsl:call-template name="escape-backslash"><iaixsl:with-param name="str" select="$str"/></iaixsl:call-template></iaixsl:otherwise></iaixsl:choose></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>