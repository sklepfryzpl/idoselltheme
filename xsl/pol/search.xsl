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
    <iaixsl:when test="/shop/@preview &gt; 0"><link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/search_style.css?r=779111371</iaixsl:attribute></link></iaixsl:when>
    <iaixsl:otherwise><link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/search_style.css.gzip?r=779111371</iaixsl:attribute></link></iaixsl:otherwise>
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
    <iaixsl:when test="/shop/@preview &gt; 0"><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/search_shop.js?r=1778592114</iaixsl:attribute></script></iaixsl:when>
    <iaixsl:otherwise><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/search_shop.js.gzip?r=1778592114</iaixsl:attribute></script></iaixsl:otherwise>
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
        <!-- (menu_additional2, 60dd8e8a776792.56913480.5)-->
	<div id="menu_categories2" class="mb-4">
		<iaixsl:choose>
			<iaixsl:when test="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/item and page/@type='search'">
				<div class="menu_categories_headline">
					<iaixsl:choose>
						<iaixsl:when test="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/@link">
							<a class="menu_categories_label">
								<iaixsl:attribute name="href"><iaixsl:value-of select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/@link"/></iaixsl:attribute>
								<iaixsl:attribute name="title"><iaixsl:value-of select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/@name"/></iaixsl:attribute>
								<iaixsl:value-of disable-output-escaping="yes" select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/@name"/>
							</a>
						</iaixsl:when>
						<iaixsl:otherwise>
							<span class="menu_categories_label"><iaixsl:value-of disable-output-escaping="yes" select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/@name"/></span>
						</iaixsl:otherwise>
					</iaixsl:choose>
					<iaixsl:if test="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@link">
						<a class="menu_go_up">
							<iaixsl:attribute name="href"><iaixsl:value-of select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@link"/></iaixsl:attribute>
							<iaixsl:attribute name="title"><iaixsl:value-of select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@name"/></iaixsl:attribute>
						</a>
					</iaixsl:if>
				</div>
				<ul>
					<iaixsl:if test="not(navigation/descendant::item[@ni=/shop/navigation/current/@ni]/item[@ni = /shop/navigation/current/@ni])">
						<iaixsl:attribute name="class">no_active</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:for-each select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/item">
						<li>
							<a>
								<iaixsl:if test="@link"><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute></iaixsl:if>
								<iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
								<iaixsl:if test="@ni = /shop/navigation/current/@ni"><iaixsl:attribute name="class">active</iaixsl:attribute></iaixsl:if>
								<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
							</a>
						</li>
					</iaixsl:for-each>
				</ul>
			</iaixsl:when>
			<iaixsl:when test="navigation/descendant::item[@ni=/shop/navigation/current/@ni] and not(navigation/descendant::item[@ni=/shop/navigation/current/@ni]/item) and page/@type='search'">
				<iaixsl:choose>
					<iaixsl:when test="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@ni">
						<iaixsl:choose>
							<iaixsl:when test="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@link">
								<a class="menu_categories_label menu_go_up">
									<iaixsl:attribute name="href"><iaixsl:value-of select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@link"/></iaixsl:attribute>
									<iaixsl:attribute name="title"><iaixsl:value-of select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@name"/></iaixsl:attribute>
									<iaixsl:value-of disable-output-escaping="yes" select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@name"/>
								</a>
							</iaixsl:when>
							<iaixsl:otherwise>
								<span class="menu_categories_label"><iaixsl:value-of disable-output-escaping="yes" select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@name"/></span>
							</iaixsl:otherwise>
						</iaixsl:choose>
					</iaixsl:when>
					<iaixsl:otherwise>
						<a class="menu_categories_label" href="/categories.php">Kategorie </a>
					</iaixsl:otherwise>
				</iaixsl:choose>
				<ul>
					<iaixsl:if test="not(navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../item[@ni = /shop/navigation/current/@ni])">
						<iaixsl:attribute name="class">no_active</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:for-each select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../item">
						<li>
							<a>
								<iaixsl:if test="@link"><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute></iaixsl:if>
								<iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
								<iaixsl:if test="@ni = /shop/navigation/current/@ni"><iaixsl:attribute name="class">active</iaixsl:attribute></iaixsl:if>
								<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
							</a>
						</li>
					</iaixsl:for-each>
				</ul>
			</iaixsl:when>
			<iaixsl:otherwise>
				<a class="menu_categories_label" href="/categories.php">Kategorie </a>
				<ul>
					<iaixsl:if test="not(navigation/item[@ni = /shop/navigation/current/@ni])">
						<iaixsl:attribute name="class">no_active</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:for-each select="navigation/item">
						<li>
							<iaixsl:if test="@ni = /shop/navigation/current/@ni"><iaixsl:attribute name="class">active</iaixsl:attribute></iaixsl:if>
							<a>
								<iaixsl:if test="@link"><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute></iaixsl:if>
								<iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
								<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
							</a>
						</li>
					</iaixsl:for-each>
				</ul>
			</iaixsl:otherwise>
		</iaixsl:choose>
	</div>
<!-- (menu_filter, 60dd8f7ee41f39.48466762.16)-->
	
	<iaixsl:variable name="showAll">5</iaixsl:variable>
	<iaixsl:variable name="showPriceRange">TRUE</iaixsl:variable>
	
	<iaixsl:variable name="samedayCouriersAvail"><iaixsl:value-of select="/shop/page/sameday/@couriers_available"/></iaixsl:variable>
	<iaixsl:variable name="samedayClientLocal"><iaixsl:value-of select="/shop/page/sameday/@client_localized"/></iaixsl:variable>
	<iaixsl:variable name="samedayServiceAvail"><iaixsl:value-of select="/shop/page/sameday/@service_available_for_current_location"/></iaixsl:variable>
	
	<iaixsl:variable name="nextdayCouriersAvail"><iaixsl:value-of select="/shop/page/nextday/@couriers_available"/></iaixsl:variable>
	<iaixsl:variable name="nextdayClientLocal"><iaixsl:value-of select="/shop/page/nextday/@client_localized"/></iaixsl:variable>
	<iaixsl:variable name="nextdayServiceAvail"><iaixsl:value-of select="/shop/page/nextday/@service_available_for_current_location"/></iaixsl:variable>
	

	<iaixsl:if test="count(/shop/page/products/navigation/filtering/filter)">
		<section id="Filters" class="filters mb-4">
			<iaixsl:attribute name="aria-label">Filtry</iaixsl:attribute>
			<form class="filters__form is-validated" method="get">
				<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/page/products/navigation/search_link/@value"/></iaixsl:attribute>

				
				<iaixsl:for-each select="/shop/page/products/navigation/filtering/filter[not(@id = 'filter_nextday' or @id = 'filter_sameday')]">
					<iaixsl:variable name="firstDual"><iaixsl:value-of select="/shop/page/products/navigation/filtering/filter[@type = 'dual'][not(@id = 'filter_nextday' or @id = 'filter_sameday')][1]/@id"/></iaixsl:variable>

					<iaixsl:if test="(@type = 'dual' and @id = $firstDual) or not(@type = 'dual')">
						
						<iaixsl:variable name="id"><iaixsl:choose><iaixsl:when test="@type = 'dual'">filter_dual</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="translate (@id, '[]', '')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

						<div class="filters__block">
							
							<iaixsl:if test="not(@type = 'text') and not(@type = 'dual')">
								<input type="hidden" class="__serialize">
									<iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_input</iaixsl:attribute>
									<iaixsl:attribute name="name"><iaixsl:value-of select="@id"/></iaixsl:attribute>
									<iaixsl:attribute name="value"><iaixsl:for-each select="item[@selected]"><iaixsl:value-of select="@value"/><iaixsl:if test="not(position() = last())">,</iaixsl:if></iaixsl:for-each><iaixsl:for-each select="group"><iaixsl:for-each select="item[@selected]"><iaixsl:value-of select="@value"/><iaixsl:if test="not(position() = last())">,</iaixsl:if></iaixsl:for-each><iaixsl:if test="not(position() = last())">,</iaixsl:if></iaixsl:for-each></iaixsl:attribute>
									<iaixsl:if test="($id = 'filter_price' or $id = 'filter_pricenet') and (@selected and not(@selected) = '')">
										<iaixsl:attribute name="value"><iaixsl:value-of select="@selected"/></iaixsl:attribute>
									</iaixsl:if>
								</input>
							</iaixsl:if>

							
							<button class="filters__toggler">
								<iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>
							  <iaixsl:attribute name="aria-expanded">true</iaixsl:attribute>

								<iaixsl:attribute name="class">filters__toggler
									<iaixsl:choose>
										<iaixsl:when test="@type = 'dual' and /shop/page/products/navigation/filtering/filter[@type = 'dual'][not(@id = 'filter_nextday' or @id = 'filter_sameday')]/@selected">
											 --selected
										</iaixsl:when>
										<iaixsl:when test="@selected">
											 --selected
										</iaixsl:when>
									</iaixsl:choose>
										<iaixsl:if test="@selected"/>
								</iaixsl:attribute>

								
								<div class="btn --icon-right d-block pr-4">
									<iaixsl:choose>
										<iaixsl:when test="@type = 'dual'">
											<span>Pokaż tylko</span>
										</iaixsl:when>
										<iaixsl:otherwise>
											<span><iaixsl:value-of select="@name"/></span>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</div>
							</button>

							
							<div class="filters__expand">
								<iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_expand</iaixsl:attribute>

								<iaixsl:choose>
									
									<iaixsl:when test="@type = 'text'">
										<div class="filters__content --search">
											<div class="f-group mb-0">
												<input type="text" class="f-control --search_by_text __serialize">
													<iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_input</iaixsl:attribute>
													<iaixsl:attribute name="name"><iaixsl:value-of select="$id"/></iaixsl:attribute>

													<iaixsl:if test="(@selected) and not (@selected = '')">
														<iaixsl:attribute name="value"><iaixsl:value-of select="@selected"/></iaixsl:attribute>
													</iaixsl:if>

													<iaixsl:attribute name="placeholder">Wpisz czego szukasz</iaixsl:attribute>
													<iaixsl:attribute name="aria-label">Wpisz czego szukasz</iaixsl:attribute>
												</input>
												<button type="submit" class="btn --secondary">
												  <iaixsl:attribute name="aria-label">Szukaj</iaixsl:attribute>
													<i class="icon-search"/>
												</button>
											</div>
										</div>
									</iaixsl:when>

									
									<iaixsl:when test="@display = 'gfx' or @display = 'name_gfx'">
										<ul class="filters__content d-flex">
											<iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_content</iaixsl:attribute>
											<iaixsl:attribute name="class">filters__content
												<iaixsl:if test="@display = 'gfx'"> --gfx d-flex flex-wrap</iaixsl:if>
												<iaixsl:if test="@display = 'name_gfx'"> --gfx-name</iaixsl:if>
											</iaixsl:attribute>

											<iaixsl:for-each select="item">
												<iaixsl:sort select="@selected" order="descending"/>

												<li class="filters__item">
													<iaixsl:attribute name="class">filters__item 
														<iaixsl:if test="position() = $showAll and ../@display = 'name_gfx'"> --last-not-hidden</iaixsl:if>
														<iaixsl:if test="position() &gt; $showAll and ../@display = 'name_gfx'"> --hidden</iaixsl:if>
													</iaixsl:attribute>
													<div class="f-group --small --checkbox mb-0">
														<input type="checkbox" class="f-control">
															<iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>
															<iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

															<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>

															<iaixsl:if test="@selected='selected'">
																<iaixsl:attribute name="checked">checked</iaixsl:attribute>
															</iaixsl:if>

															<iaixsl:if test="@quantity = '0'">
																<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
															</iaixsl:if>
														</input>

														<label class="f-label">
															<iaixsl:attribute name="for"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>
															<iaixsl:attribute name="aria-label"><iaixsl:value-of select="@name"/></iaixsl:attribute>

															
															<span class="--name">
																<iaixsl:if test="@gfx_normal">
																	<img class="--img">
																		<iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_normal"/></iaixsl:attribute>
																		<iaixsl:attribute name="alt">Grafika <iaixsl:value-of select="@name"/></iaixsl:attribute>
																		<iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																	</img>
																</iaixsl:if>
																<iaixsl:if test="../@display = 'name_gfx'">
																	<span><iaixsl:value-of select="@name"/></span>
																</iaixsl:if>
															</span>

															
															<span class="--quantity">
																<iaixsl:if test="not(@quantity)">
																	<iaixsl:attribute name="class">--quantity d-none</iaixsl:attribute>
																</iaixsl:if>
																<iaixsl:choose>
																	<iaixsl:when test="@quantity">
																		<iaixsl:value-of select="@quantity"/>
																	</iaixsl:when>
																	<iaixsl:otherwise>0</iaixsl:otherwise>
																</iaixsl:choose>
															</span>
														</label>
													</div>
												</li>

											</iaixsl:for-each>
										</ul>
										
										<div class="filters__options">
											
											<button type="submit" class="--submit d-none btn py-0 pl-0 pr-3">
												Zastosuj
											</button>

											
											<iaixsl:if test="count(item) &gt; $showAll and @display = 'name_gfx'">
												<a class="--show-hidden btn py-0 pl-3 pr-0" href="#showHiddenFilters">
													<iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

													<span class="--show">+ Rozwiń</span>
													<span class="--hide">- Ukryj</span>
												</a>
											</iaixsl:if>
										</div>
									</iaixsl:when>

									
									<iaixsl:when test="(@id = 'filter_price' or @id = 'filter_pricenet') and not($showPriceRange = '')">
										<div class="filters__content --range">
													<iaixsl:if test="/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected">
															<input type="hidden" id="min_price_set"><iaixsl:attribute name="value"><iaixsl:value-of select="substring-before(/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected,'-')"/></iaixsl:attribute></input>
															<input type="hidden" id="max_price_set"><iaixsl:attribute name="value"><iaixsl:value-of select="substring-after(/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected,'-')"/></iaixsl:attribute></input>
													</iaixsl:if>
													<input type="hidden" id="min_price_start"><iaixsl:attribute name="value">0</iaixsl:attribute></input>
													<input type="hidden" id="max_price_start"><iaixsl:attribute name="value"><iaixsl:value-of select="substring-before(substring-after(/shop/page/products/navigation/filtering/filter[@id = 'filter_price']/item[position() = last()]/@name,'- '), '.')"/></iaixsl:attribute></input>

													<div class="filters__price-slider"><div class="--price"/></div>
													<div class="filters__price">
															<div class="filters__range d-flex justify-content-between align-items-center">
																	<label for="PriceRangeFrom" class="--from">
																			<input id="PriceRangeFrom" type="text" class="--input-from">
																					<iaixsl:choose>
																							<iaixsl:when test="not(item[@selected = 'selected']) and (@selected and not(@selected = ''))">
																									<iaixsl:attribute name="value"><iaixsl:value-of select="substring-before(@selected, '-')"/></iaixsl:attribute>
																							</iaixsl:when>
																							<iaixsl:otherwise>
																									<iaixsl:attribute name="value">0</iaixsl:attribute>
																							</iaixsl:otherwise>
																					</iaixsl:choose>
																			</input>
																			<span class="--currency"><iaixsl:value-of select="/shop/currency/option[@selected = 'true']/@symbol"/></span>
																	</label>
																	<span class="--gap">
																			-
																	</span>
																	<label for="PriceRangeTo" class="--to">
																			<input id="PriceRangeTo" type="text" class="--input-to">
																					<iaixsl:choose>
																							<iaixsl:when test="not(item[@selected = 'selected']) and (@selected and not(@selected = ''))">
																									<iaixsl:attribute name="value"><iaixsl:value-of select="substring-after(@selected, '-')"/></iaixsl:attribute>
																							</iaixsl:when>
																							<iaixsl:otherwise>
																									<iaixsl:attribute name="value"><iaixsl:value-of select="substring-before(substring-after(/shop/page/products/navigation/filtering/filter[@id = 'filter_price']/item[position() = last()]/@name,'- '), '.')"/></iaixsl:attribute>
																							</iaixsl:otherwise>
																					</iaixsl:choose>
																			</input>
																			<span class="--currency"><iaixsl:value-of select="/shop/currency/option[@selected = 'true']/@symbol"/></span>
																	</label>
															</div>
															<div class="filters__options">
																	<button type="submit" class="btn p-md-0 mt-md-2">
																			Zastosuj zakres cen
																	</button>
															</div>
													</div>
										</div>
									</iaixsl:when>

									
									<iaixsl:when test="@id = 'filter_date'">
										<ul class="filters__content --date">
											<iaixsl:for-each select="item[@desc = '1week' or @desc = '1month' or @desc = '3months' or @desc = '6months' or @desc = '1year']">
												<li class="filters__item mb-2">
													<div class="f-group --small --checkbox mb-0">
														<input type="checkbox" class="f-control">
															<iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>
															<iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

															<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>

															<iaixsl:if test="@selected='selected'">
																<iaixsl:attribute name="checked">checked</iaixsl:attribute>
															</iaixsl:if>

															<iaixsl:if test="@quantity = '0'">
																<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
															</iaixsl:if>
														</input>
														<label class="f-label">
															<iaixsl:attribute name="for"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>

															
															<span class="--name">
																<iaixsl:choose>
																	<iaixsl:when test="@desc = '1week'">Ostatni tydzień</iaixsl:when>
																	<iaixsl:when test="@desc = '1month'">Ostatni miesiąc</iaixsl:when>
																	<iaixsl:when test="@desc = '3months'">Ostatnie 3 miesiące</iaixsl:when>
																	<iaixsl:when test="@desc = '6months'">Ostatnie pół roku</iaixsl:when>
																	<iaixsl:when test="@desc = '1year'">Ostatni rok</iaixsl:when>
																</iaixsl:choose>
															</span>

															
															<span class="--quantity">
																<iaixsl:if test="not(@quantity)">
																	<iaixsl:attribute name="class">--quantity d-none</iaixsl:attribute>
																</iaixsl:if>
																<iaixsl:choose>
																	<iaixsl:when test="@quantity">
																		<iaixsl:value-of select="@quantity"/>
																	</iaixsl:when>
																	<iaixsl:otherwise>0</iaixsl:otherwise>
																</iaixsl:choose>
															</span>
														</label>
													</div>
												</li>
											</iaixsl:for-each>
										</ul>
										
										<div class="filters__options">
											
											<button type="submit" class="--submit d-none btn py-0 pl-0 pr-3">
												Zastosuj
											</button>
										</div>
									</iaixsl:when>

									
									<iaixsl:otherwise>
										<iaixsl:choose>
											
											<iaixsl:when test="group">
												<ul class="filters__content --group">
													<iaixsl:for-each select="group">
														<li class="filters__item mb-1">
															<iaixsl:if test="not(@id = -1)">
																<button class="filters__toggler">
							                    <iaixsl:attribute name="aria-expanded">true</iaixsl:attribute>
																	<div class="btn d-block">
																		<span>
																			<iaixsl:choose>
																				<iaixsl:when test="@title and not(@title = '')">
																					<iaixsl:value-of select="@title"/>
																				</iaixsl:when>
																				<iaixsl:otherwise>
																					Pozostałe
																				</iaixsl:otherwise>
																			</iaixsl:choose>
																		</span>
																	</div>
																</button>
															</iaixsl:if>
															<ul class="filters__content --list">
																<iaixsl:attribute name="id"><iaixsl:value-of select="$id"/><iaixsl:value-of select="position()"/>_content</iaixsl:attribute>

																<iaixsl:for-each select="item">
																	<iaixsl:sort select="@selected" order="descending"/>

																	<li class="filters__item mb-2">
																		<iaixsl:attribute name="class">filters__item mb-2
																			<iaixsl:if test="position() = $showAll"> --last-not-hidden</iaixsl:if>
																			<iaixsl:if test="position() &gt; $showAll"> --hidden</iaixsl:if>
																		</iaixsl:attribute>

																		<div class="f-group --small --checkbox mb-0">
																			<input type="checkbox" class="f-control">
																				<iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>
																				<iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

																				<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>

																				<iaixsl:if test="@selected='selected'">
																					<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																				</iaixsl:if>

																				<iaixsl:if test="@quantity = '0'">
																					<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
																				</iaixsl:if>
																			</input>

																			<label class="f-label">
																				<iaixsl:attribute name="for"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>

																				
																				<span class="--name">
																					<iaixsl:value-of select="@name"/>
																				</span>

																				
																				<span class="--quantity">
																					<iaixsl:if test="not(@quantity)">
																						<iaixsl:attribute name="class">--quantity d-none</iaixsl:attribute>
																					</iaixsl:if>
																					<iaixsl:choose>
																						<iaixsl:when test="@quantity">
																							<iaixsl:value-of select="@quantity"/>
																						</iaixsl:when>
																						<iaixsl:otherwise>0</iaixsl:otherwise>
																					</iaixsl:choose>
																				</span>
																			</label>
																		</div>
																	</li>
																</iaixsl:for-each>
															</ul>
															
															<div class="filters__options">
																
																<button type="submit" class="--submit d-none btn py-0 pl-0 pr-3">
																	Zastosuj
																</button>

																
																<iaixsl:if test="count(item) &gt; $showAll">
																	<a class="--show-hidden btn py-0 pl-3 pr-0" href="#showHiddenFilters">
																		<iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/><iaixsl:value-of select="position()"/></iaixsl:attribute>

																		<span class="--show">+ Rozwiń</span>
																		<span class="--hide">- Ukryj</span>
																	</a>
																</iaixsl:if>
															</div>
														</li>
													</iaixsl:for-each>
												</ul>
											</iaixsl:when>

											
											<iaixsl:otherwise>
												<ul class="filters__content --list">
													<iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_content</iaixsl:attribute>

													<iaixsl:choose>
														<iaixsl:when test="@type = 'dual'">
															<iaixsl:for-each select="/shop/page/products/navigation/filtering/filter[@type = 'dual'][not(@id = 'filter_nextday' or @id = 'filter_sameday')]">
																
																<iaixsl:variable name="id_dual"><iaixsl:value-of select="translate (@id, '[]', '')"/></iaixsl:variable>

																<iaixsl:for-each select="item[@value = 'y']">
																	<li class="filters__item mb-2">
																		<div class="f-group --small --checkbox mb-0">
																			<input type="checkbox" class="f-control __serialize">
																				<iaixsl:attribute name="id"><iaixsl:value-of select="$id_dual"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>
																				<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
																				<iaixsl:attribute name="name"><iaixsl:value-of select="$id_dual"/></iaixsl:attribute>

																				<iaixsl:if test="@selected='selected'">
																					<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																				</iaixsl:if>

																				<iaixsl:if test="@quantity = '0'">
																					<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
																				</iaixsl:if>
																			</input>
																			<label class="f-label">
																				<iaixsl:attribute name="for"><iaixsl:value-of select="$id_dual"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>

																				
																				<span class="--name">
																					<iaixsl:value-of select="../@name"/>
																				</span>

																				
																				<span class="--quantity">
																					<iaixsl:if test="not(@quantity)">
																						<iaixsl:attribute name="class">--quantity d-none</iaixsl:attribute>
																					</iaixsl:if>
																					<iaixsl:choose>
																						<iaixsl:when test="@quantity">
																							<iaixsl:value-of select="@quantity"/>
																						</iaixsl:when>
																						<iaixsl:otherwise>0</iaixsl:otherwise>
																					</iaixsl:choose>
																				</span>
																			</label>
																		</div>
																	</li>
																</iaixsl:for-each>
															</iaixsl:for-each>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:for-each select="item">
																<iaixsl:sort select="@selected" order="descending"/>

																<li class="filters__item mb-2">
																	<iaixsl:attribute name="class">filters__item mb-2
																		<iaixsl:if test="position() = $showAll"> --last-not-hidden</iaixsl:if>
																		<iaixsl:if test="position() &gt; $showAll"> --hidden</iaixsl:if>
																	</iaixsl:attribute>

																	<div class="f-group --small --checkbox mb-0">
																		<input type="checkbox" class="f-control">
																			<iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>
																			<iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

																			<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>

																			<iaixsl:if test="@selected='selected'">
																				<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																			</iaixsl:if>

																			<iaixsl:if test="@quantity = '0'">
																				<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
																			</iaixsl:if>
																		</input>

																		<label class="f-label">
																			<iaixsl:attribute name="for"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>

																			
																			<span class="--name">
																				<iaixsl:value-of select="@name"/>
																			</span>

																			
																			<span class="--quantity">
																				<iaixsl:if test="not(@quantity)">
																					<iaixsl:attribute name="class">--quantity d-none</iaixsl:attribute>
																				</iaixsl:if>
																				<iaixsl:choose>
																					<iaixsl:when test="@quantity">
																						<iaixsl:value-of select="@quantity"/>
																					</iaixsl:when>
																					<iaixsl:otherwise>0</iaixsl:otherwise>
																				</iaixsl:choose>
																			</span>
																		</label>
																	</div>
																</li>
															</iaixsl:for-each>
														</iaixsl:otherwise>
													</iaixsl:choose>
												</ul>

												
												<div class="filters__options">
													
													<button type="submit" class="--submit d-none btn py-0 pl-0 pr-3">
														Zastosuj
													</button>

													
													<iaixsl:if test="count(item) &gt; $showAll">
														<a class="--show-hidden btn py-0 pl-3 pr-0" href="#showHiddenFilters">
															<iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

															<span class="--show">+ Rozwiń</span>
															<span class="--hide">- Ukryj</span>
														</a>
													</iaixsl:if>
												</div>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</div>
						</div>
					</iaixsl:if>
				</iaixsl:for-each>

				
				<iaixsl:if test="/shop/page/products/navigation/filtering/filter[@type='dual'] and ($samedayCouriersAvail = 'true' and $samedayClientLocal = 'false') or ($samedayCouriersAvail = 'true' and $samedayClientLocal = 'true' and $samedayServiceAvail = 'true') or ($nextdayCouriersAvail = 'true' and $nextdayClientLocal = 'false') or ($nextdayCouriersAvail = 'true' and $nextdayClientLocal = 'true' and $nextdayServiceAvail = 'true')">
					
					<iaixsl:variable name="id">filter_xpress</iaixsl:variable>

					<div class="filters__block">
						<button class="filters__toggler">
							<iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>
							<iaixsl:attribute name="aria-expanded">true</iaixsl:attribute>

							<iaixsl:attribute name="class">filters__toggler
								<iaixsl:if test="@selected"> --selected</iaixsl:if>
							</iaixsl:attribute>

							
							<div class="btn --icon-right d-block pr-4">
								<span>Ekspresowa dostawa</span>
							</div>
						</button>

						
						<div class="filters__expand">
							<iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_expand</iaixsl:attribute>

							<ul class="filters__content --dual">
								
								<iaixsl:if test="($nextdayCouriersAvail = 'true' and $nextdayClientLocal = 'false') or ($nextdayCouriersAvail = 'true' and $nextdayClientLocal = 'true' and $nextdayServiceAvail = 'true')">
									<li class="filters__item mb-2">
										<div class="f-group --small --checkbox mb-0">
											<input name="filter_nextday" type="checkbox" class="f-control __serialize">
												<iaixsl:attribute name="id">filter_nextday_form</iaixsl:attribute>
												<iaixsl:attribute name="value">y</iaixsl:attribute>
												<iaixsl:attribute name="name">filter_nextday</iaixsl:attribute>

												<iaixsl:attribute name="data-xpress">true</iaixsl:attribute>
												<iaixsl:attribute name="data-localized"><iaixsl:value-of select="$nextdayClientLocal"/></iaixsl:attribute>
												<iaixsl:attribute name="data-available"><iaixsl:value-of select="$nextdayCouriersAvail"/></iaixsl:attribute>

												<iaixsl:if test="/shop/page/products/navigation/filtering/filter[@id = 'filter_nextday']/@selected">
													<iaixsl:attribute name="checked">checked</iaixsl:attribute>
												</iaixsl:if>
											</input>

											<label for="filter_nextday_form" class="f-label">
												
												<span class="--name">
													Następnego dnia <strong>24h</strong>
												</span>
											</label>
										</div>
									</li>
								</iaixsl:if>

								
								<iaixsl:if test="($samedayCouriersAvail = 'true' and $samedayClientLocal = 'false') or ($samedayCouriersAvail = 'true' and $samedayClientLocal = 'true' and $samedayServiceAvail = 'true')">
									<li class="filters__item mb-2">
										<div class="f-group --small --checkbox mb-0">
											<input name="filter_sameday" type="checkbox" class="f-control __serialize">
												<iaixsl:attribute name="id">filter_sameday_form</iaixsl:attribute>
												<iaixsl:attribute name="value">y</iaixsl:attribute>
												<iaixsl:attribute name="name">filter_sameday</iaixsl:attribute>

												<iaixsl:attribute name="data-xpress">true</iaixsl:attribute>
												<iaixsl:attribute name="data-localized"><iaixsl:value-of select="$samedayClientLocal"/></iaixsl:attribute>
												<iaixsl:attribute name="data-available"><iaixsl:value-of select="$samedayCouriersAvail"/></iaixsl:attribute>

												<iaixsl:if test="/shop/page/products/navigation/filtering/filter[@id = 'filter_sameday']/@selected">
													<iaixsl:attribute name="checked">checked</iaixsl:attribute>
												</iaixsl:if>
											</input>

											<label for="filter_sameday_form" class="f-label">
												
												<span class="--name">
													Tego samego dnia <i class="icon-clock"/>
												</span>
											</label>
										</div>
									</li>
								</iaixsl:if>
							</ul>
							
							<div class="filters__options">
								
								<button type="submit" class="--submit d-none btn py-0 pl-0 pr-3">
									Zastosuj
								</button>
							</div>
						</div>
					</div>
				</iaixsl:if>

				
				<div class="f-group filters__buttons mt-3">
					
					<button type="submit" class="btn --large --solid d-block">
						<iaixsl:attribute name="title">Kliknij aby zastosować wybrane filtry</iaixsl:attribute>
						Zastosuj wybrane filtry
					</button>

					
					<iaixsl:if test="(/shop/page/products/navigation/filtering/filter/item/@selected='selected') or count(/shop/page/products/navigation/filtering/filter/@selected)">
						<a class="btn d-block" href="/settings.php?filter_remove=all">
							<iaixsl:if test="/shop/page/products/navigation/search_link/@value">
								<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/products/navigation/search_link/@value "/></iaixsl:attribute>
							</iaixsl:if>
							<iaixsl:attribute name="title">Kliknij aby wyczyścić listę aktywnych filtrów</iaixsl:attribute>
							Usuń wszystkie filtry
						</a>
					</iaixsl:if>
				</div>
			</form>
		</section>
		<iaixsl:if test="(/shop/page/sameday/@couriers_available = 'true' and /shop/page/sameday/@client_localized = 'false') or (/shop/page/nextday/@couriers_available = 'true' and /shop/page/nextday/@client_localized = 'false')">
			<div id="xpress_modal" class="xpress">
				<h2 class="headline">
					<span class="headline__name">Lokalizacja</span>
				</h2>
				<div class="xpress__zipcode mb-3">
					<p class="xpress__text mb-3">Podaj kod pocztowy adresu dostawy</p>
					<div class="f-group">
						<div class="f-feedback">
							<input id="xpress_zipcode_input" type="text" class="f-control --validate" name="xpress_zipcode" required="required" data-graphql="zipcode" data-region="1143020003"/>
							<label class="f-label">Kod pocztowy</label>
							<span class="f-control-feedback"/>
						</div>
					</div>
					<div class="xpress__submit_zipcode">
						<button class="xpress_submit btn --solid --medium" type="button">Zatwierdź</button>
					</div>
				</div>
				<div class="xpress__geolocation">
					<p class="xpress__text mb-3">lub udostępnij położenie, abyśmy mogli określić czy dla tego miejsca dostępna jest dostawa ekspresowa</p>
					<button class="xpress__get_geo btn --solid --medium --secondary" type="button">Udostępnij położenie</button>
				</div>
			</div>
			<div id="xpress_error_modal" class="xpress_error">
				<h2 class="headline">
					<span class="headline__name">Lokalizacja</span>
				</h2>
				<p class="xpress_error__text mb-2">Przykro nam, ale nasz ekspresowy kurier nie obsługuje tej okolicy.</p>
				<p class="xpress_error__text">Twoje zamówienie zostanie dostarczone w standardowym czasie, a kuriera wybierzesz podczas składania zamówienia.</p>
			</div>
		</iaixsl:if>
	</iaixsl:if>
	<iaixsl:if test="/shop/page/products/navigation/filtering/filter/@mode"> </iaixsl:if>
	<iaixsl:if test="/shop/page/products/navigation/filtering/filter/@id='filter_instock'"> </iaixsl:if>
<!-- (menu_buttons3, 60dd8e7e6e3ca3.91526215.6)-->
	<iaixsl:variable name="hidebuttons3COP"/>

	<iaixsl:if test="not($hidebuttons3COP) or ( $hidebuttons3COP and not(( page/@type = 'basketedit') or ( page/@type='login' and page/login/onceorder/@display='y') or ( ((page/@type = 'client-new') and not(page/client-data/@register='true') and not(page/client-data/@edit='true'))) or ( page/@type = 'order1') or ( page/@type = 'order-nonstandardized') or ( page/@type = 'pickup-sites') or ( page/@type = 'order2') or ( page/@type = 'client-save') or ( page/@type = 'prepaid') or ( page/@type = 'order-payment') or ( page/@type = 'order-newpayment')) ) ">
		<iaixsl:if test="count(commercial_button3/link)">
			<div id="menu_buttons3" class="mb-4 d-none d-md-block">
				<iaixsl:for-each select="commercial_button3/link">
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
												<iaixsl:otherwise>Obrazek w sekcji graficznej 3 - <iaixsl:value-of select="position()"/></iaixsl:otherwise>
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
			</div>
		</iaixsl:if>
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

        <!-- (search_categoriesdescription, 61b0b1bb13c029.21803121.7)-->
	<iaixsl:variable name="searchNameLabel"><iaixsl:choose>
		<iaixsl:when test="not(/shop/page/products/additional/category_list/name = '')">
			<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/products/additional/category_list/name"/>
		</iaixsl:when>
		<iaixsl:otherwise>
			Wyniki wyszukiwania
		</iaixsl:otherwise>
	</iaixsl:choose></iaixsl:variable>
	<section class="search_name">
		<iaixsl:attribute name="aria-label"><iaixsl:value-of select="$searchNameLabel"/></iaixsl:attribute>
		<h1 class="search_name__label headline">
			<span class="headline__name"><iaixsl:value-of select="$searchNameLabel"/></span>
		</h1>
		<iaixsl:if test="not(/shop/page/products/@hideproducts = 'true')">
			<span class="search_name__total">( ilość produktów: <span class="search_name__total_value"><iaixsl:value-of select="/shop/page/products/navigation/@total"/></span> )</span>
		</iaixsl:if>
	</section>

	<iaixsl:if test="not(/shop/page/products/additional/category_list/description = '') and (/shop/page/products/additional/category_list/description)">
		<iaixsl:if test="(/shop/page/products/@hideproducts = 'true' ) or ((/shop/page/products/navigation/item[1]/@counter = 1) and (/shop/page/products/navigation/item[1]/@type = 'current'))">
			<section class="search_description --top --skeleton cm">
				<iaixsl:attribute name="aria-label">Opis kategorii</iaixsl:attribute>
				<div class="search_description__wrapper">
					<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/products/additional/category_list/description"/>
				</div>
			</section>
		</iaixsl:if>
	</iaixsl:if>
<!-- (search_paging, 61b0b1be264db6.06395620.8)-->

	<iaixsl:variable name="select_sort_label"/>
	<iaixsl:variable name="select_portions_label"/>
	<iaixsl:variable name="prev_page">Poprzednia strona</iaixsl:variable>
	<iaixsl:variable name="next_page">Następna strona</iaixsl:variable>

	<iaixsl:if test="not(page/products/@hideproducts = 'true')">
		<div id="paging_setting_top" class="s_paging">
			<iaixsl:if test="not(/shop/page/products/navigation/@disable_sort_change = 'y')">
				<form class="s_paging__item --sort" action="/settings.php">
					<iaixsl:if test="$select_sort_label">
						<label for="select_top_sort"><iaixsl:value-of disable-output-escaping="yes" select="$select_sort_label"/></label>
					</iaixsl:if>
					<select class="s_paging__select --order --small-md" id="select_top_sort" name="sort_order">
						<iaixsl:attribute name="aria-label">Zmień sortowanie</iaixsl:attribute>
						<option value="relevance-d" class="option_relevance-d"><iaixsl:if test="page/products/navigation/@sort = 'relevance' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Najlepsza trafność</option>
						<option value="name-a" class="option_name-a"><iaixsl:if test="page/products/navigation/@sort = 'name' and page/products/navigation/@order = 'a'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po nazwie rosnąco</option>
						<option value="name-d" class="option_name-d"><iaixsl:if test="page/products/navigation/@sort = 'name' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po nazwie malejąco</option>
						<option value="price-a" class="option_price-a"><iaixsl:if test="page/products/navigation/@sort = 'price' and page/products/navigation/@order = 'a'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po cenie rosnąco</option>
						<option value="price-d" class="option_price-d"><iaixsl:if test="page/products/navigation/@sort = 'price' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po cenie malejąco</option>
						<option value="date-a" class="option_date-a"><iaixsl:if test="page/products/navigation/@sort = 'date' and page/products/navigation/@order = 'a'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po dacie rosnąco</option>
						<option value="date-d" class="option_date-d"><iaixsl:if test="page/products/navigation/@sort = 'date' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po dacie malejąco</option>
					</select>
				</form>
			</iaixsl:if>

			<iaixsl:if test="not(/shop/page/products/navigation/@disable_portions_change = 'y') and count(page/products/navigation/portions) &gt; 1">
				<form class="s_paging__item --portions d-none d-md-block" action="/settings.php">
					<iaixsl:if test="$select_portions_label">
						<label for="select_top_portions"><iaixsl:value-of disable-output-escaping="yes" select="$select_portions_label"/></label>
					</iaixsl:if>
					<select class="s_paging__select --portions --small-md" id="select_top_portions" name="portions">
						<iaixsl:attribute name="aria-label">Zmień ilość wyświetlanych produktów</iaixsl:attribute>
						<iaixsl:for-each select="page/products/navigation/portions">
							<option><iaixsl:attribute name="value"><iaixsl:value-of select="@counter"/></iaixsl:attribute><iaixsl:if test="@selected = 'true'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Pokaż <iaixsl:value-of select="@counter"/>
							</option>
						</iaixsl:for-each>
					</select>
				</form>
			</iaixsl:if>

			<iaixsl:if test="count(/shop/page/products/navigation/filtering/filter)">
				<div class="s_paging__item --filters d-md-none mb-2 mb-sm-3">
					<a class="btn --solid --large" href="#menu_filter">
						Filtrowanie
					</a>
				</div>
			</iaixsl:if>

			<iaixsl:if test="count(page/products/navigation/item) &gt; 1">
				<ul class="s_paging__item pagination d-flex mb-2 mb-sm-3">
					<iaixsl:attribute name="aria-label">Nawiguj między stronami</iaixsl:attribute>
					
					<iaixsl:if test="page/products/navigation/prev">
						<li class="pagination__element --prev">
							<iaixsl:if test="$prev_page">
								<iaixsl:attribute name="class">pagination__element --prev --button</iaixsl:attribute>
							</iaixsl:if>
							<a class="pagination__link">
								<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="page/products/navigation/prev/@counter = '0'"><iaixsl:value-of disable-output-escaping="yes" select="substring-before(page/products/navigation/path/@value, '&amp;counter=')"/><iaixsl:value-of disable-output-escaping="yes" select="substring-before(page/products/navigation/path/@value, '?counter=')"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/prev/@counter"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>
								<iaixsl:attribute name="aria-label"><iaixsl:value-of disable-output-escaping="yes" select="$prev_page"/></iaixsl:attribute>
							</a>
							<iaixsl:if test="$prev_page">
								<a class="pagination__button --prev btn --secondary --solid --large --icon-left icon-angle-left d-sm-none">
									<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="page/products/navigation/prev/@counter = '0'"><iaixsl:value-of disable-output-escaping="yes" select="substring-before(page/products/navigation/path/@value, '&amp;counter=')"/><iaixsl:value-of disable-output-escaping="yes" select="substring-before(page/products/navigation/path/@value, '?counter=')"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/prev/@counter"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>
									<iaixsl:value-of disable-output-escaping="yes" select="$prev_page"/>
								</a>
							</iaixsl:if>
						</li>
					</iaixsl:if>
					
					<iaixsl:if test="not(page/products/navigation/prev)">
						<li class="pagination__element --prev --disabled">
							<iaixsl:if test="$prev_page">
								<iaixsl:attribute name="class">pagination__element --prev --disabled --button</iaixsl:attribute>
							</iaixsl:if>
							<span class="pagination__link"/>
							<iaixsl:if test="$prev_page">
								<span class="pagination__button --prev btn --secondary --solid --icon-left icon-angle-left d-sm-none"><iaixsl:value-of disable-output-escaping="yes" select="$prev_page"/></span>
							</iaixsl:if>
						</li>
					</iaixsl:if>
					
					<iaixsl:for-each select="page/products/navigation/item">
						<iaixsl:if test="@gap">
							<li class="pagination__element --gap --disabled">
								<span class="pagination__link">...</span>
							</li>
						</iaixsl:if>
						<iaixsl:if test="not(@type = 'current') and not(@gap)">
							<li class="pagination__element --item">
								<a class="pagination__link">
									<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="@counter = '1'"><iaixsl:value-of disable-output-escaping="yes" select="substring-before(../path/@value, '&amp;counter=')"/><iaixsl:value-of disable-output-escaping="yes" select="substring-before(../path/@value, '?counter=')"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="../path/@value"/><iaixsl:value-of select="@counter - 1"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>
									<iaixsl:value-of select="@counter"/>
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="@type = 'current'">
							<li class="pagination__element --item --active">
								<span class="pagination__link"><iaixsl:attribute name="aria-current">page</iaixsl:attribute><iaixsl:value-of select="@counter"/></span>
							</li>
						</iaixsl:if>
					</iaixsl:for-each>
					
					<iaixsl:if test="page/products/navigation/next">
						<li class="pagination__element --next">
							<iaixsl:if test="$next_page">
								<iaixsl:attribute name="class">pagination__element --next --button</iaixsl:attribute>
							</iaixsl:if>
							<a class="pagination__link">
								<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/next/@counter"/></iaixsl:attribute>
								<iaixsl:attribute name="aria-label"><iaixsl:value-of disable-output-escaping="yes" select="$next_page"/></iaixsl:attribute>
							</a>
							<iaixsl:if test="$next_page">
								<a class="pagination__button --next btn --secondary --solid --icon-right icon-angle-right d-md-none">
									<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/next/@counter"/></iaixsl:attribute>
									<iaixsl:value-of disable-output-escaping="yes" select="$next_page"/>
								</a>
							</iaixsl:if>
						</li>
					</iaixsl:if>
					
					<iaixsl:if test="not(page/products/navigation/next)">
						<li class="pagination__element --next --disabled">
							<iaixsl:if test="$next_page">
								<iaixsl:attribute name="class">pagination__element --next --disabled --button</iaixsl:attribute>
							</iaixsl:if>
							<span class="pagination__link"/>
							<iaixsl:if test="$next_page">
								<span class="pagination__button --next btn --secondary --solid --icon-right icon-angle-right d-md-none"><iaixsl:value-of disable-output-escaping="yes" select="$next_page"/></span>
							</iaixsl:if>
						</li>
					</iaixsl:if>
				</ul>
			</iaixsl:if>
		</div>
	</iaixsl:if>
<!-- (search_filters, 60dd8e79c0ea13.64200683.9)-->
	<iaixsl:if test="(count(/shop/page/products/navigation/filtering/filter/@selected) &gt; 0) or count(/shop/page/products/navigation/filtering/filter/item/@selected) &gt; 0">
		<iaixsl:variable name="show_remove_button">true</iaixsl:variable>
		<div id="filter_list">
			<div class="filter_list_content">
				<iaixsl:if test="$show_remove_button">
					<a class="remove_all_list_filters btn --solid --secondary mr-2 mr-sm-3" href="/settings.php?filter_remove=all">
						<iaixsl:if test="/shop/page/products/navigation/search_link/@value">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/products/navigation/search_link/@value "/></iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:attribute name="title">Usuń wszystkie filtry</iaixsl:attribute>
						Usuń filtry
					</a>
				</iaixsl:if>
				<iaixsl:for-each select="/shop/page/products/navigation/filtering/filter[(@type='list') or (@type='text')]">
					<iaixsl:if test="(@selected != '') or count(item/@selected) &gt; 0">
						<iaixsl:choose>
							
							<iaixsl:when test="(@id = 'filter_price') and (@selected) and not(@selected = '')">
								<iaixsl:choose>
									<iaixsl:when test="item[@selected = 'selected']">
										<iaixsl:for-each select="item[@selected = 'selected']">
											<a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
												<iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
												<span class="sr-only">Usuń filtr</span>
												<span><iaixsl:value-of select="@name_formatted"/></span>
											</a>
										</iaixsl:for-each>
									</iaixsl:when>
									<iaixsl:otherwise>
										<a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
											<iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
											<span class="sr-only">Usuń filtr</span>
											<span>
												<iaixsl:if test="substring-before(@selected, '-') != ''">
													<iaixsl:value-of select="substring-before(@selected, '-')"/> <iaixsl:value-of select="/shop/currency/@name"/>
												</iaixsl:if>
												 - 
												<iaixsl:if test="substring-after(@selected, '-') != ''">
													<iaixsl:value-of select="substring-after(@selected, '-')"/> <iaixsl:value-of select="/shop/currency/@name"/>
												</iaixsl:if>
											</span>
										</a>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</iaixsl:when>
							
							<iaixsl:when test="(@id = 'filter_date') and (@selected) and not(@selected = '')">
								<iaixsl:choose>
									<iaixsl:when test="item[@selected = 'selected']">
										<iaixsl:for-each select="item[@selected = 'selected']">
											<a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
												<iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
												<span class="sr-only">Usuń filtr</span>
												<span>
													<iaixsl:choose>
														<iaixsl:when test="@desc = '1week'">Ostatni tydzień</iaixsl:when>
														<iaixsl:when test="@desc = '1month'">Ostatni miesiąc</iaixsl:when>
														<iaixsl:when test="@desc = '3months'">Ostatnie 3 miesiące</iaixsl:when>
														<iaixsl:when test="@desc = '6months'">Ostatnie pół roku</iaixsl:when>
														<iaixsl:when test="@desc = '1year'">Ostatni rok</iaixsl:when>
													</iaixsl:choose>
												</span>
											</a>
										</iaixsl:for-each>
									</iaixsl:when>
									<iaixsl:otherwise>
										<a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
											<iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
											<span class="sr-only">Usuń filtr</span>
											<span><iaixsl:value-of select="@selected"/></span>
										</a>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</iaixsl:when>
							<iaixsl:when test="(@id = 'filter_text') and (@selected) and not(@selected = '')">
								<a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
									<iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
									<span class="sr-only">Usuń filtr</span>
									<span><iaixsl:value-of select="@selected"/></span>
								</a>
							</iaixsl:when>
							<iaixsl:otherwise>
								<iaixsl:for-each select="item[@selected = 'selected']">
									<a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
										<iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
										<span class="sr-only">Usuń filtr</span>
										<span><iaixsl:value-of select="@name"/></span>
									</a>
								</iaixsl:for-each>
							</iaixsl:otherwise>
						</iaixsl:choose>
					</iaixsl:if>
				</iaixsl:for-each>
				<iaixsl:for-each select="/shop/page/products/navigation/filtering/filter[@type='dual']/item[@selected = 'selected']">
					<a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
						<iaixsl:attribute name="href"><iaixsl:value-of select="../@link_remove"/></iaixsl:attribute>
						<span class="sr-only">Usuń filtr</span>
						<span><iaixsl:value-of select="../@name"/></span>
					</a>
				</iaixsl:for-each>
				<iaixsl:for-each select="/shop/page/products/navigation/filtering/filter[@selected != '' or count(item/@selected) &gt; 0]/group/item[@selected = 'selected']">
					<a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
						<iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
						<span class="sr-only">Usuń filtr</span>
						<span><iaixsl:value-of select="@name"/></span>
					</a>
				</iaixsl:for-each>
			</div>
		</div>
	</iaixsl:if>
<!-- (search_settings, 60dd8e7eed6f96.87778143.8)-->
	<iaixsl:if test="compare/@count &gt; 0 or /shop/page/@cache_html = 'true'">
		<div id="menu_compare_product" class="compare pt-2 mb-2 pt-sm-3 mb-sm-3">
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
<!-- (search, 614c5da8946f69.22843522.15)-->
	
	<iaixsl:variable name="param_search"/>
	<iaixsl:variable name="param_search_gfx"/>
	<iaixsl:variable name="versions_search">true</iaixsl:variable>
	<iaixsl:variable name="var_yousave_search"/>
	<iaixsl:variable name="var_net_prices_search"><iaixsl:if test="/shop/page/@price_type = 'net'"><iaixsl:value-of select="$priceTypeText"/></iaixsl:if></iaixsl:variable>
	<iaixsl:variable name="var_gross_prices_search"><iaixsl:if test="/shop/page/@price_type = 'gross'"><iaixsl:value-of select="$priceTypeText"/></iaixsl:if></iaixsl:variable>
	<iaixsl:variable name="var_b2b_search"/>
	
	<iaixsl:variable name="addcompare_txt">+ Dodaj do porównania</iaixsl:variable>

	<iaixsl:if test="/shop/page/products/display_mode/@active = 'normal'">
		<section id="search" class="search products mb-3">

    	
			
    	<iaixsl:variable name="var_omnibus_enabled"><iaixsl:if test="/shop/@omnibus = 1">true</iaixsl:if></iaixsl:variable>
    	

			<iaixsl:for-each select="/shop/page/products/product">
				<div class="product">
					<iaixsl:attribute name="data-product_id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
					<iaixsl:attribute name="data-product_page"><iaixsl:value-of select="/shop/page/products/navigation/item[@type = 'current']/@counter - 1"/></iaixsl:attribute>
					<iaixsl:if test="position() = 1">
						<iaixsl:attribute name="data-product_first">true</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:if test="sizes/availability/@status = 'disable'">
						<iaixsl:attribute name="data-product_disable">true</iaixsl:attribute>
					</iaixsl:if>
					
					<iaixsl:if test="/shop/page/@ecommerce_module_class">
						<iaixsl:attribute name="class">
							product

							<iaixsl:variable name="ecommerce_module_separator">{productId}</iaixsl:variable>

							<iaixsl:variable name="ecommerce_module_class_before"><iaixsl:value-of select="substring-before(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)"/></iaixsl:variable>
							<iaixsl:variable name="ecommerce_module_class_after"><iaixsl:value-of select="substring-after(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)"/></iaixsl:variable>

							<iaixsl:value-of select="$ecommerce_module_class_before"/><iaixsl:value-of select="@id"/><iaixsl:value-of select="$ecommerce_module_class_after"/>
						</iaixsl:attribute>
					</iaixsl:if>
          
          <iaixsl:variable name="var_omnibus_min"><iaixsl:choose>
            <iaixsl:when test="$var_net_prices_search and not($var_net_prices_search = '')">
              <iaixsl:choose>
                <iaixsl:when test="sizes/size[price/@omnibus_price_unit_net]">
                  <iaixsl:for-each select="sizes/size[price/@omnibus_price_unit_net]">
                    <iaixsl:sort select="price/@omnibus_price_unit_net" data-type="number"/>
                    <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@omnibus_price_unit_net_formatted"/></iaixsl:if>
                  </iaixsl:for-each>
                </iaixsl:when>
                <iaixsl:when test="sizes/size[price/@omnibus_price_net]">
                  <iaixsl:for-each select="sizes/size[price/@omnibus_price_net]">
                    <iaixsl:sort select="price/@omnibus_price_net" data-type="number"/>
                    <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@omnibus_price_net_formatted"/></iaixsl:if>
                  </iaixsl:for-each>
                </iaixsl:when>
                <iaixsl:when test="price/@omnibus_price_unit_net">
                  <iaixsl:value-of select="price/@omnibus_price_unit_net_formatted"/>
                </iaixsl:when>
                <iaixsl:otherwise>
                  <iaixsl:value-of select="price/@omnibus_price_net_formatted"/>
                </iaixsl:otherwise>
              </iaixsl:choose>
            </iaixsl:when>
            <iaixsl:otherwise>
              <iaixsl:choose>
                <iaixsl:when test="sizes/size[price/@omnibus_price_unit]">
                  <iaixsl:for-each select="sizes/size[price/@omnibus_price_unit]">
                    <iaixsl:sort select="price/@omnibus_price_unit" data-type="number"/>
                    <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@omnibus_price_unit_formatted"/></iaixsl:if>
                  </iaixsl:for-each>
                </iaixsl:when>
                <iaixsl:when test="sizes/size[price/@omnibus_price]">
                  <iaixsl:for-each select="sizes/size[price/@omnibus_price]">
                    <iaixsl:sort select="price/@omnibus_price" data-type="number"/>
                    <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@omnibus_price_formatted"/></iaixsl:if>
                  </iaixsl:for-each>
                </iaixsl:when>
                <iaixsl:when test="price/@omnibus_price_unit">
                  <iaixsl:value-of select="price/@omnibus_price_unit_formatted"/>
                </iaixsl:when>
                <iaixsl:otherwise>
                  <iaixsl:value-of select="price/@omnibus_price_formatted"/>
                </iaixsl:otherwise>
              </iaixsl:choose>
            </iaixsl:otherwise>
          </iaixsl:choose></iaixsl:variable>

          
          <iaixsl:variable name="var_omnibus"><iaixsl:if test="$var_omnibus_enabled = 'true'"><iaixsl:choose>
            <iaixsl:when test="$var_net_prices_search and not($var_net_prices_search = '')">
              <iaixsl:choose>
                
                <iaixsl:when test="(sizes/prices/@minprice_net_formatted != sizes/prices/@maxprice_net_formatted) or (sizes/prices/@minprice_unit_formatted != sizes/prices/@maxprice_unit_formatted)"/>
                <iaixsl:when test="$var_omnibus_min != ''">
                  <iaixsl:value-of select="$var_omnibus_min"/>
                </iaixsl:when>
                <iaixsl:when test="@product_type = 'virtual' and (count(sizes/size[price/@omnibus_price_net]) = 0) and price/@omnibus_price_net_formatted">
                  <iaixsl:value-of select="price/@omnibus_price_net_formatted"/>
                </iaixsl:when>
              </iaixsl:choose>
            </iaixsl:when>
            <iaixsl:otherwise>
              <iaixsl:choose>
								
								<iaixsl:when test="(sizes/prices/@minprice_formatted != sizes/prices/@maxprice_formatted) or (sizes/prices/@minprice_unit_formatted != sizes/prices/@maxprice_unit_formatted)"/>
								<iaixsl:when test="$var_omnibus_min != ''">
									<iaixsl:value-of select="$var_omnibus_min"/>
								</iaixsl:when>
								<iaixsl:when test="@product_type = 'virtual' and (count(sizes/size[price/@omnibus_price]) = 0) and price/@omnibus_price_formatted">
									<iaixsl:value-of select="price/@omnibus_price_formatted"/>
								</iaixsl:when>
							</iaixsl:choose>
            </iaixsl:otherwise>
          </iaixsl:choose></iaixsl:if></iaixsl:variable>

          
          <iaixsl:variable name="var_regular_price"><iaixsl:choose>
            <iaixsl:when test="$var_net_prices_search and not($var_net_prices_search = '')">
              <iaixsl:choose>
                <iaixsl:when test="sizes/size[price/@maxprice_unit_net]">
                  <iaixsl:for-each select="sizes/size[price/@maxprice_unit_net]">
                    <iaixsl:sort select="price/@maxprice_unit_net" data-type="number"/>
                    <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@maxprice_unit_net_formatted"/></iaixsl:if>
                  </iaixsl:for-each>
                </iaixsl:when>
                <iaixsl:when test="sizes/size[price/@maxprice_net]">
                  <iaixsl:for-each select="sizes/size[price/@maxprice_net]">
                    <iaixsl:sort select="price/@maxprice_net" data-type="number"/>
                    <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@maxprice_net_formatted"/></iaixsl:if>
                  </iaixsl:for-each>
                </iaixsl:when>
                <iaixsl:when test="price/@maxprice_unit_net">
                  <iaixsl:value-of select="price/@maxprice_unit_net_formatted"/>
                </iaixsl:when>
                <iaixsl:otherwise>
                  <iaixsl:value-of select="price/@maxprice_net_formatted"/>
                </iaixsl:otherwise>
              </iaixsl:choose>
            </iaixsl:when>
            <iaixsl:otherwise>
              <iaixsl:choose>
                <iaixsl:when test="sizes/size[price/@maxprice_unit]">
                  <iaixsl:for-each select="sizes/size[price/@maxprice_unit]">
                    <iaixsl:sort select="price/@maxprice_unit" data-type="number"/>
                    <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@maxprice_unit_formatted"/></iaixsl:if>
                  </iaixsl:for-each>
                </iaixsl:when>
                <iaixsl:when test="sizes/size[price/@maxprice]">
                  <iaixsl:for-each select="sizes/size[price/@maxprice]">
                    <iaixsl:sort select="price/@maxprice" data-type="number"/>
                    <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@maxprice_formatted"/></iaixsl:if>
                  </iaixsl:for-each>
                </iaixsl:when>
                <iaixsl:when test="price/@maxprice_unit">
                  <iaixsl:value-of select="price/@maxprice_unit_formatted"/>
                </iaixsl:when>
                <iaixsl:otherwise>
                  <iaixsl:value-of select="price/@maxprice_formatted"/>
                </iaixsl:otherwise>
              </iaixsl:choose>
            </iaixsl:otherwise>
          </iaixsl:choose></iaixsl:variable>

          
          <iaixsl:variable name="var_omnibus_short"><iaixsl:if test="$var_omnibus_enabled = 'true' and $var_regular_price = $var_omnibus">true</iaixsl:if></iaixsl:variable>

          
          <iaixsl:variable name="var_omnibus_rebate_code"><iaixsl:if test="/shop/rebatecode/@activate_omnibus = 'true' and price/@rebate_code_active = 'y'">true</iaixsl:if></iaixsl:variable>

          
          <iaixsl:variable name="var_omnibus_higher"><iaixsl:choose>
            <iaixsl:when test="sizes/size[price/@omnibus_price]">
              <iaixsl:for-each select="sizes/size[price/@omnibus_price]">
                <iaixsl:sort select="price/@omnibus_price" data-type="number"/>
                <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@omnibus_price_is_higher_than_selling_price"/></iaixsl:if>
              </iaixsl:for-each>
            </iaixsl:when>
            <iaixsl:otherwise>
              <iaixsl:value-of select="price/@omnibus_price_is_higher_than_selling_price"/>
            </iaixsl:otherwise>
          </iaixsl:choose></iaixsl:variable>

          
          <iaixsl:variable name="var_beforerebate_price"><iaixsl:choose>
            <iaixsl:when test="$var_net_prices_search and not($var_net_prices_search = '')">
              <iaixsl:choose>
                <iaixsl:when test="sizes/size[price/@beforerebate_unit_net]">
                  <iaixsl:for-each select="sizes/size[price/@beforerebate_unit_net]">
                    <iaixsl:sort select="price/@beforerebate_unit_net" data-type="number"/>
                    <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@beforerebate_unit_net_formatted"/></iaixsl:if>
                  </iaixsl:for-each>
                </iaixsl:when>
                <iaixsl:when test="sizes/size[price/@beforerebate_net]">
                  <iaixsl:for-each select="sizes/size[price/@beforerebate_net]">
                    <iaixsl:sort select="price/@beforerebate_net" data-type="number"/>
                    <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@beforerebate_net_formatted"/></iaixsl:if>
                  </iaixsl:for-each>
                </iaixsl:when>
                <iaixsl:when test="price/@beforerebate_unit_net">
                  <iaixsl:value-of select="price/@beforerebate_unit_net_formatted"/>
                </iaixsl:when>
                <iaixsl:otherwise>
                  <iaixsl:value-of select="price/@beforerebate_net_formatted"/>
                </iaixsl:otherwise>
              </iaixsl:choose>
            </iaixsl:when>
            <iaixsl:otherwise>
              <iaixsl:choose>
                <iaixsl:when test="sizes/size[price/@beforerebate_unit]">
                  <iaixsl:for-each select="sizes/size[price/@beforerebate_unit]">
                    <iaixsl:sort select="price/@beforerebate_unit" data-type="number"/>
                    <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@beforerebate_unit_formatted"/></iaixsl:if>
                  </iaixsl:for-each>
                </iaixsl:when>
                <iaixsl:when test="sizes/size[price/@beforerebate]">
                  <iaixsl:for-each select="sizes/size[price/@beforerebate]">
                    <iaixsl:sort select="price/@beforerebate" data-type="number"/>
                    <iaixsl:if test="position() = 1"><iaixsl:value-of select="price/@beforerebate_formatted"/></iaixsl:if>
                  </iaixsl:for-each>
                </iaixsl:when>
                <iaixsl:when test="price/@beforerebate_unit">
                  <iaixsl:value-of select="price/@beforerebate_unit_formatted"/>
                </iaixsl:when>
                <iaixsl:otherwise>
                  <iaixsl:value-of select="price/@beforerebate_formatted"/>
                </iaixsl:otherwise>
              </iaixsl:choose>
            </iaixsl:otherwise>
          </iaixsl:choose></iaixsl:variable>

					
					<iaixsl:variable name="var_beforerebate_short"><iaixsl:if test="$var_beforerebate_price = $var_omnibus">true</iaixsl:if></iaixsl:variable>

          
          <iaixsl:variable name="var_beforerebate_percent"><iaixsl:choose>
            <iaixsl:when test="sizes/size[price/@beforerebate]">
              <iaixsl:for-each select="sizes/size[price/@beforerebate]">
                <iaixsl:sort select="price/@beforerebate" data-type="number"/>
                <iaixsl:if test="position() = 1">-<iaixsl:value-of select="price/@beforerebate_yousave_percent"/>%</iaixsl:if>
              </iaixsl:for-each>
            </iaixsl:when>
            <iaixsl:otherwise>-<iaixsl:value-of select="price/@beforerebate_yousave_percent"/>%</iaixsl:otherwise>
          </iaixsl:choose></iaixsl:variable>

          
          <iaixsl:variable name="var_omnibus_percent"><iaixsl:choose>
            <iaixsl:when test="sizes/size[price/@omnibus_price]">
              <iaixsl:for-each select="sizes/size[price/@omnibus_price]">
                <iaixsl:sort select="price/@omnibus_price" data-type="number"/>
                <iaixsl:if test="position() = 1"><iaixsl:choose><iaixsl:when test="price/@omnibus_yousave_percent = '0'"/><iaixsl:when test="$var_omnibus_higher = 'false'">+</iaixsl:when><iaixsl:otherwise>-</iaixsl:otherwise></iaixsl:choose><iaixsl:value-of select="price/@omnibus_yousave_percent"/>%</iaixsl:if>
              </iaixsl:for-each>
            </iaixsl:when>
            <iaixsl:otherwise>
              <iaixsl:choose><iaixsl:when test="price/@omnibus_yousave_percent = '0'"/><iaixsl:when test="$var_omnibus_higher = 'false'">+</iaixsl:when><iaixsl:otherwise>-</iaixsl:otherwise></iaixsl:choose><iaixsl:value-of select="price/@omnibus_yousave_percent"/>%
            </iaixsl:otherwise>
          </iaixsl:choose></iaixsl:variable>

          
          <iaixsl:variable name="var_regular_percent"><iaixsl:choose>
            <iaixsl:when test="sizes/size[price/@maxprice]">
              <iaixsl:for-each select="sizes/size[price/@maxprice]">
                <iaixsl:sort select="price/@maxprice" data-type="number"/>
                <iaixsl:if test="position() = 1">-<iaixsl:value-of select="price/@yousave_percent"/>%</iaixsl:if>
              </iaixsl:for-each>
            </iaixsl:when>
            <iaixsl:otherwise>-<iaixsl:value-of select="price/@yousave_percent"/>%</iaixsl:otherwise>
          </iaixsl:choose></iaixsl:variable>

          
          <iaixsl:variable name="var_new_price_date"><iaixsl:choose>
						<iaixsl:when test="$var_omnibus_rebate_code != ''"/>
						<iaixsl:otherwise><iaixsl:value-of select="price/@omnibus_new_price_effective_until"/></iaixsl:otherwise>
					</iaixsl:choose></iaixsl:variable>
          

					
					<iaixsl:variable name="var_deposit_price"><iaixsl:choose>
						<iaixsl:when test="$var_net_prices_search and not($var_net_prices_search = '')">
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
					

					
					<iaixsl:if test="$var_yousave_search and not($var_yousave_search = '') and price/@yousave_formatted != ''">
						<div class="product__yousave">
							<span class="product__yousave --label"><iaixsl:value-of select="$var_yousave_search"/></span>
							<span class="product__yousave --value"><iaixsl:value-of select="price/@yousave_formatted"/></span>
						</div>
					</iaixsl:if>

					
					<a class="product__icon d-flex justify-content-center align-items-center" tabindex="-1">
						<iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
						<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
						<iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
				    <iaixsl:choose>
              <iaixsl:when test="icon_small_second and not(icon_small_second = '' or icon_small_second = '/')">
                <picture>
                  <source media="(min-width: 421px)" type="image/webp">
                    <iaixsl:attribute name="srcset"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                  </source>
                  <source media="(min-width: 421px)" type="image/jpeg">
                    <iaixsl:attribute name="srcset"><iaixsl:value-of select="icon_second"/></iaixsl:attribute>
                  </source>
                  <source type="image/webp">
                    <iaixsl:attribute name="srcset"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
                  </source>
                  <img>
                    <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
                    <iaixsl:attribute name="src"><iaixsl:value-of disable-output-escaping="yes" select="icon_small_second"/></iaixsl:attribute>
                    <iaixsl:if test="position() &gt; 2">
                      <iaixsl:attribute name="loading">lazy</iaixsl:attribute>
                    </iaixsl:if>
                  </img>
                </picture>
              </iaixsl:when>
              <iaixsl:otherwise>
                <picture>
    							<source>
    								<iaixsl:attribute name="media">(max-width: 420px)</iaixsl:attribute>
										<iaixsl:attribute name="srcset"><iaixsl:value-of disable-output-escaping="yes" select="icon_small"/></iaixsl:attribute>
    							</source>
    							<img>
    								<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
    								<iaixsl:attribute name="src"><iaixsl:value-of disable-output-escaping="yes" select="icon"/></iaixsl:attribute>
  									<iaixsl:if test="position() &gt; 2">
  										<iaixsl:attribute name="loading">lazy</iaixsl:attribute>
  									</iaixsl:if>
    							</img>
    						</picture>
              </iaixsl:otherwise>
            </iaixsl:choose>

						
						<iaixsl:variable name="productUnavailable">Chwilowo niedostępny</iaixsl:variable>
						<iaixsl:choose>
							<iaixsl:when test="not($productUnavailable = '') and sizes/availability/@status = 'disable'">
								<strong class="label_icons">
									<span class="label --disable">
										<iaixsl:value-of select="$productUnavailable"/>
									</span>
								</strong>
							</iaixsl:when>
							<iaixsl:when test="$var_omnibus != '' or @promo or @new or @bestseller or @discount or (@distinguished and not(@bestseller and @discount)) or @subscription">
								<strong class="label_icons">
                  <iaixsl:if test="$var_omnibus != ''">
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
                  </iaixsl:if>
									<iaixsl:if test="@subscription">
										<span class="label --subscription">
											Subskrypcja
										</span>
									</iaixsl:if>
									<iaixsl:if test="@new">
										<span class="label --new">
											Nowość
										</span>
									</iaixsl:if>
									<iaixsl:choose>
										<iaixsl:when test="$var_omnibus != '' and @new">
										</iaixsl:when>
										<iaixsl:when test="$var_omnibus != '' or @new">
											<iaixsl:choose>
												<iaixsl:when test="@bestseller">
													<span class="label --bestseller">
														Nasz bestseller
													</span>
												</iaixsl:when>
												<iaixsl:when test="@discount">
													<span class="label --discount">
														Promocja!
													</span>
												</iaixsl:when>
												<iaixsl:when test="@distinguished">
													<span class="label --distinguished">
														Polecany
													</span>
												</iaixsl:when>
											</iaixsl:choose>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:if test="@bestseller">
												<span class="label --bestseller">
													Nasz bestseller
												</span>
											</iaixsl:if>
											<iaixsl:if test="@discount">
												<span class="label --discount">
													Promocja!
												</span>
											</iaixsl:if>
											<iaixsl:if test="@distinguished and not(@bestseller and @discount)">
												<span class="label --distinguished">
													Polecany
												</span>
											</iaixsl:if>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</strong>
							</iaixsl:when>
						</iaixsl:choose>
					</a>

					<div class="product__content_wrapper">
						
            <div class="product__name_wrapper">
              <a class="product__producer" tabindex="-1">
                <iaixsl:if test="firm/@icon">
                </iaixsl:if>
                <iaixsl:if test="firm/@name">
                  <iaixsl:attribute name="href"><iaixsl:value-of select="firm/@productslink"/></iaixsl:attribute>
                  <iaixsl:attribute name="title"><iaixsl:value-of select="firm/@name"/></iaixsl:attribute>
                  <iaixsl:choose>
                    <iaixsl:when test="firm/@icon2">
                      <picture>
                        <iaixsl:if test="firm/@icon2_desktop">
                          <source>
                            <iaixsl:attribute name="media">(min-width:979px)</iaixsl:attribute>
                            <iaixsl:attribute name="srcset"><iaixsl:value-of select="firm/@icon2_desktop"/></iaixsl:attribute>
                          </source>
                        </iaixsl:if>
                        <iaixsl:if test="firm/@icon2_tablet">
                          <source>
                            <iaixsl:attribute name="media">(min-width:757px)</iaixsl:attribute>
                            <iaixsl:attribute name="srcset"><iaixsl:value-of select="firm/@icon2_tablet"/></iaixsl:attribute>
                          </source>
                        </iaixsl:if>
                        <iaixsl:if test="firm/@icon2_mobile">
                          <source>
                            <iaixsl:attribute name="media">(max-width:757px)</iaixsl:attribute>
                            <iaixsl:attribute name="srcset"><iaixsl:value-of select="firm/@icon2_mobile"/></iaixsl:attribute>
                          </source>
                        </iaixsl:if>
                        <img>
                          <iaixsl:attribute name="src"><iaixsl:value-of select="firm/@icon2"/></iaixsl:attribute>
                          <iaixsl:attribute name="title"><iaixsl:value-of select="firm/@name"/></iaixsl:attribute>
                          <iaixsl:attribute name="alt"><iaixsl:value-of select="firm/@name"/></iaixsl:attribute>
                        </img>
                      </picture>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                      <iaixsl:value-of select="firm/@name"/>
                    </iaixsl:otherwise>
                  </iaixsl:choose>
                </iaixsl:if>
              </a>
              <h2>
                <a class="product__name" tabindex="0">
                  <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                  <iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
                  <iaixsl:value-of disable-output-escaping="yes" select="name"/>
                </a>
              </h2>
            </div>

						<iaixsl:variable name="var_unit"><iaixsl:choose><iaixsl:when test="not(price/@price_unit_formatted)"><iaixsl:value-of select="sizes/@unit_single"/></iaixsl:when><iaixsl:when test="sizes/@unit_sellby &gt; 1"><iaixsl:value-of select="sizes/@unit_plural"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="sizes/@unit_single"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
						<iaixsl:variable name="var_sellby"><iaixsl:choose><iaixsl:when test="not(price/@price_unit_formatted)">1</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="sizes/@unit_sellby"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

						
						<iaixsl:choose>
							
							<iaixsl:when test="$var_net_prices_search and not($var_net_prices_search = '')">
								<div class="product__prices">
									<iaixsl:if test="$var_omnibus != ''"><iaixsl:attribute name="class">product__prices --omnibus<iaixsl:if test="$var_omnibus_short = 'true'"> --omnibus-short</iaixsl:if><iaixsl:if test="$var_omnibus_rebate_code != ''"> --omnibus-code<iaixsl:if test="$var_beforerebate_short != ''"> --omnibus-code-short</iaixsl:if></iaixsl:if><iaixsl:if test="$var_new_price_date != ''"> --omnibus-new-price</iaixsl:if><iaixsl:if test="$var_omnibus_higher = 'true' and $var_new_price_date = ''"> --omnibus-higher</iaixsl:if></iaixsl:attribute></iaixsl:if>

									<iaixsl:choose>
										<iaixsl:when test="(sizes/prices/@minprice_net_formatted != sizes/prices/@maxprice_net_formatted) or (sizes/prices/@minprice_unit_net_formatted != sizes/prices/@maxprice_unit_net_formatted)">
											<strong class="price --main">
											  <span class="sr-only">od </span>
												<span class="price__range --min"><iaixsl:choose>
													<iaixsl:when test="sizes/prices/@minprice_unit_net_formatted">
														<iaixsl:value-of select="sizes/prices/@minprice_unit_net_formatted"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="sizes/prices/@minprice_net_formatted"/>
													</iaixsl:otherwise>
												</iaixsl:choose></span>
													-
											  <span class="sr-only">do </span>
												<span class="price__range --max"><iaixsl:choose>
													<iaixsl:when test="sizes/prices/@maxprice_unit_net_formatted">
														<iaixsl:value-of select="sizes/prices/@maxprice_unit_net_formatted"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="sizes/prices/@maxprice_net_formatted"/>
													</iaixsl:otherwise>
												</iaixsl:choose></span>
												<span class="price_vat"><iaixsl:value-of select="$var_net_prices_search"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
												
												<iaixsl:if test="price/@unit_converted_price_net_formatted"><span class="price --convert">(<iaixsl:value-of select="price/@unit_converted_price_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><span class="price_vat"><iaixsl:value-of select="$var_net_prices_search"/></span>)</span>
												</iaixsl:if>
											</strong>
											
											<iaixsl:copy-of select="$var_deposit_price_html"/>
										</iaixsl:when>
										<iaixsl:when test="price/@price_net = 0 and not(/shop/basket/@wholesaler = 'true') and $var_b2b_search and not($var_b2b_search = '')">
											<a class="price --hurt" tabindex="-1">
												<iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b_search"/></iaixsl:attribute>
												<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
												<iaixsl:value-of select="$var_b2b_search"/>
											</a>
										</iaixsl:when>
										<iaixsl:when test="(sizes/prices/@minprice_net = 0) and not(price/@points)">
											<a class="price --phone" tabindex="-1">
												<iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
												<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/contact/@url"/></iaixsl:attribute>
												Cena na telefon
											</a>
										</iaixsl:when>
										<iaixsl:otherwise>
											<strong class="price --main">
												<iaixsl:choose>
													<iaixsl:when test="price/@price_unit_net_formatted">
														<iaixsl:value-of select="price/@price_unit_net_formatted"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="price/@price_net_formatted"/>
													</iaixsl:otherwise>
												</iaixsl:choose>
												<span class="price_vat"><iaixsl:value-of select="$var_net_prices_search"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
												
												<iaixsl:if test="price/@unit_converted_price_net_formatted"><span class="price --convert">(<iaixsl:value-of select="price/@unit_converted_price_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><span class="price_vat"><iaixsl:value-of select="$var_net_prices_search"/></span>)</span>
												</iaixsl:if>
											</strong>
											<iaixsl:if test="price/@points">
											  <span class="price --points"><iaixsl:value-of select="price/@points"/><span class="currency" aria-hidden="true"> PKT</span><span class="sr-only">punktów</span></span>
											</iaixsl:if>
											
											<iaixsl:if test="$var_omnibus != ''">
												<span class="price --omnibus omnibus_price"><span class="omnibus_price__text">Najniższa cena produktu w okresie 30 dni przed wprowadzeniem obniżki: </span><del class="omnibus_price__value"><iaixsl:value-of select="$var_omnibus"/></del><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span><span class="price_percent"><iaixsl:value-of select="$var_omnibus_percent"/></span></span>
											</iaixsl:if>
											
											<iaixsl:if test="$var_regular_price != ''">
												<span class="price --max">
													<span class="omnibus_label">Cena regularna: </span>
													<del><iaixsl:value-of select="$var_regular_price"/></del><span class="price_vat"><iaixsl:value-of select="$var_net_prices_search"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span><span class="price_percent"><iaixsl:value-of select="$var_regular_percent"/></span>
												</span>
											</iaixsl:if>
											<iaixsl:if test="$var_omnibus_rebate_code != '' and $var_beforerebate_price !=''">
												<span class="price --before-rebate">
													<span class="omnibus_label">Cena bez kodu: </span>
													<del><iaixsl:value-of select="$var_beforerebate_price"/></del><span class="price_vat"><iaixsl:value-of select="$var_net_prices_search"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
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
										</iaixsl:otherwise>
									</iaixsl:choose>
								</div>
							</iaixsl:when>
							
							<iaixsl:otherwise>
								<div class="product__prices">
									<iaixsl:if test="$var_omnibus != ''"><iaixsl:attribute name="class">product__prices --omnibus<iaixsl:if test="$var_omnibus_short = 'true'"> --omnibus-short</iaixsl:if><iaixsl:if test="$var_omnibus_rebate_code != ''"> --omnibus-code<iaixsl:if test="$var_beforerebate_short != ''"> --omnibus-code-short</iaixsl:if></iaixsl:if><iaixsl:if test="$var_new_price_date != ''"> --omnibus-new-price</iaixsl:if><iaixsl:if test="$var_omnibus_higher = 'true' and $var_new_price_date = ''"> --omnibus-higher</iaixsl:if></iaixsl:attribute></iaixsl:if>

									<iaixsl:choose>
										<iaixsl:when test="(sizes/prices/@minprice_formatted != sizes/prices/@maxprice_formatted) or (sizes/prices/@minprice_unit_formatted != sizes/prices/@maxprice_unit_formatted)">
											<strong class="price --main">
											  <span class="sr-only">od </span>
												<span class="price__range --min"><iaixsl:choose>
													<iaixsl:when test="sizes/prices/@minprice_unit_formatted">
														<iaixsl:value-of select="sizes/prices/@minprice_unit_formatted"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="sizes/prices/@minprice_formatted"/>
													</iaixsl:otherwise>
												</iaixsl:choose></span>
													-
											  <span class="sr-only">do </span>
												<span class="price__range --max"><iaixsl:choose>
													<iaixsl:when test="sizes/prices/@maxprice_unit_formatted">
														<iaixsl:value-of select="sizes/prices/@maxprice_unit_formatted"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="sizes/prices/@maxprice_formatted"/>
													</iaixsl:otherwise>
												</iaixsl:choose></span>
												<span class="price_vat"><iaixsl:value-of select="$var_gross_prices_search"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
												
												<iaixsl:if test="price/@unit_converted_price_formatted"><span class="price --convert">(<iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><span class="price_vat"><iaixsl:value-of select="$var_gross_prices_search"/></span>)</span>
												</iaixsl:if>
											</strong>
											
											<iaixsl:copy-of select="$var_deposit_price_html"/>
										</iaixsl:when>
										<iaixsl:when test="(sizes/prices/@minprice = 0) and not(price/@points)">
											<a class="price --phone" tabindex="-1">
												<iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
												<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/contact/@url"/></iaixsl:attribute>
												Cena na telefon
											</a>
										</iaixsl:when>
										<iaixsl:otherwise>
											<strong class="price --main">
												<iaixsl:choose>
													<iaixsl:when test="price/@price_unit_formatted">
														<iaixsl:value-of select="price/@price_unit_formatted"/>
													</iaixsl:when>
													<iaixsl:otherwise>
														<iaixsl:value-of select="sizes/prices/@minprice_formatted"/>
													</iaixsl:otherwise>
												</iaixsl:choose>
												<span class="price_vat"><iaixsl:value-of select="$var_gross_prices_search"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
												
												<iaixsl:if test="price/@unit_converted_price_formatted"><span class="price --convert">(<iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><span class="price_vat"><iaixsl:value-of select="$var_gross_prices_search"/></span>)</span>
												</iaixsl:if>
											</strong>

											<iaixsl:if test="price/@points">
											  <span class="price --points"><iaixsl:value-of select="price/@points"/><span class="currency" aria-hidden="true"> PKT</span><span class="sr-only">punktów</span></span>
											</iaixsl:if>
											
											<iaixsl:if test="$var_omnibus != ''">
												<span class="price --omnibus omnibus_price"><span class="omnibus_price__text">Najniższa cena produktu w okresie 30 dni przed wprowadzeniem obniżki: </span><del class="omnibus_price__value"><iaixsl:value-of select="$var_omnibus"/></del><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span><span class="price_percent"><iaixsl:value-of select="$var_omnibus_percent"/></span></span>
											</iaixsl:if>
											
											<iaixsl:if test="$var_regular_price != ''">
												<span class="price --max">
													<span class="omnibus_label">Cena regularna: </span>
													<del><iaixsl:value-of select="$var_regular_price"/></del><span class="price_vat"><iaixsl:value-of select="$var_gross_prices_search"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span><span class="price_percent"><iaixsl:value-of select="$var_regular_percent"/></span>
												</span>
											</iaixsl:if>
											<iaixsl:if test="$var_omnibus_rebate_code != '' and $var_beforerebate_price !=''">
												<span class="price --before-rebate">
													<span class="omnibus_label">Cena bez kodu: </span>
													<del><iaixsl:value-of select="$var_beforerebate_price"/></del><span class="price_vat"><iaixsl:value-of select="$var_gross_prices_search"/></span><span class="price_sellby"><span class="price_sellby__sep"><iaixsl:text>/</iaixsl:text></span><span class="price_sellby__sellby" data-sellby="{$var_sellby}"><iaixsl:value-of select="$var_sellby"/></span><span class="price_sellby__unit"><iaixsl:value-of select="$var_unit"/></span></span>
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
										</iaixsl:otherwise>
									</iaixsl:choose>
								</div>
							</iaixsl:otherwise>
						</iaixsl:choose>
					</div>

					
					<div class="product__compare">
						<iaixsl:if test="/shop/compare/@active = 'y' and $addcompare_txt">
							<iaixsl:attribute name="class">product__compare --has-child</iaixsl:attribute>

							<iaixsl:choose>
								<iaixsl:when test="@id = /shop/compare/product/@id">
									<a class="product__compare_item --remove" rel="nofollow">
										<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="/shop/action/settings/@url"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:when><iaixsl:otherwise>settings.php</iaixsl:otherwise></iaixsl:choose>?comparers=remove&amp;product=<iaixsl:value-of select="@id"/></iaixsl:attribute>
										<iaixsl:attribute name="title">Kliknij, aby usunąć produkt z porównywarki</iaixsl:attribute>
										- Usuń z porównania
									</a>
								</iaixsl:when>
								<iaixsl:otherwise>
									<a class="product__compare_item --add" rel="nofollow">
										<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="/shop/action/settings/@url"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:when><iaixsl:otherwise>settings.php</iaixsl:otherwise></iaixsl:choose>?comparers=add&amp;product=<iaixsl:value-of select="@id"/></iaixsl:attribute>
										<iaixsl:attribute name="title">Dodaj do porówania</iaixsl:attribute>
										<iaixsl:value-of select="$addcompare_txt"/>
									</a>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:if>
					</div>

					
					<iaixsl:if test="not($versions_search)">
						<iaixsl:if test="(count(versions/version[@gfx_small]) &gt; 1 and count(versions/version) = count(versions/version[@gfx_small])) or (sizes/size/@type and not(sizes/size/@type='uniw'))">
								<div class="product__details py-1 px-3">
										<iaixsl:if test="sizes/size/@type and not(sizes/size/@type='uniw')">
												<div class="product__sizes mb-1">
														<label class="product__size --label">Rozmiar:</label>
														<iaixsl:for-each select="sizes/size">
																<span class="product__size"><iaixsl:value-of select="@description"/></span>
														</iaixsl:for-each>
												</div>
										</iaixsl:if>

										<iaixsl:if test="count(versions/version/@gfx_small) &gt; 1">
												<div class="product__versions mx-n1">
														<iaixsl:for-each select="versions/version">
																<a class="product__version">
																		<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
																		<img>
																				<iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_small"/></iaixsl:attribute>
																				<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																		</img>
																</a>
														</iaixsl:for-each>
												</div>
										</iaixsl:if>
								</div>
						</iaixsl:if>
					</iaixsl:if>

					
					<iaixsl:if test="not($param_search)">
						<iaixsl:if test="traits/trait[not(@gfx)] and traits/trait[not(contains(@groupdescription, 'gs1:'))]">
							<div class="product__traits d-none d-md-block mt-2">
								<ul>
									<iaixsl:for-each select="traits/trait[not(@gfx)]">
										<iaixsl:if test="not(@groupid = preceding-sibling::trait/@groupid) and not(contains(@groupdescription, 'gs1:'))">
											<li class="trait">
												<span class="trait__name"><iaixsl:value-of select="@groupdescription"/>: </span>
												<div class="trait__values">
													<a class="trait__value"><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute><iaixsl:value-of select="@traitdescription"/></a>
													<iaixsl:if test="@groupid = following-sibling::trait/@groupid">
														<iaixsl:variable name="temporaryGroup"><iaixsl:value-of select="@groupid"/></iaixsl:variable><iaixsl:for-each select="following-sibling::trait[(@groupid = $temporaryGroup)]">, <a class="trait__value"><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute><iaixsl:value-of select="@traitdescription"/></a></iaixsl:for-each>
													</iaixsl:if>
												</div>
											</li>
										</iaixsl:if>
									</iaixsl:for-each>
								</ul>
							</div>
						</iaixsl:if>
					</iaixsl:if>

					
					<iaixsl:if test="not($param_search_gfx)">
						<iaixsl:if test="traits/trait[@gfx2]">
							<div class="product__traits --gfx my-2 mb-md-0">
								<ul>
									<iaixsl:for-each select="traits/trait[@gfx2]">
										<li class="trait">
											<a class="trait__gfx">
												<iaixsl:attribute name="title"><iaixsl:value-of select="@groupdescription"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="@traitdescription"/></iaixsl:attribute>
												<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
												<img class="trait__img">
													<iaixsl:attribute name="src"><iaixsl:value-of select="@gfx2"/></iaixsl:attribute>
													<iaixsl:attribute name="alt"><iaixsl:value-of select="@traitdescription"/></iaixsl:attribute>
												</img>
											</a>
										</li>
									</iaixsl:for-each>
								</ul>
							</div>
						</iaixsl:if>
					</iaixsl:if>
				</div>
			</iaixsl:for-each>
		</section>
	</iaixsl:if>
	<iaixsl:if test="/shop/page/search_params/*"> </iaixsl:if>
  <iaixsl:if test=" /shop/page/products/product/firm/@icon"/>
<!-- (search_paging2, 60dd8e7ede9b11.36368455.6)-->

	<iaixsl:variable name="select_sort_label_bottom"/>
	<iaixsl:variable name="select_portions_label_bottom"/>
	<iaixsl:variable name="prev_page_bottom"/>
	<iaixsl:variable name="next_page_bottom">Następna strona</iaixsl:variable>

	<iaixsl:if test="not(page/products/@hideproducts = 'true')">
		<div id="paging_setting_bottom" class="s_paging">
			<iaixsl:if test="not(/shop/page/products/navigation/@disable_sort_change = 'y')">
				<form class="s_paging__item --sort d-none" action="/settings.php">
					<iaixsl:attribute name="aria-label">Zmień sortowanie</iaixsl:attribute>
					<iaixsl:if test="$select_sort_label_bottom">
						<label for="select_bottom_sort"><iaixsl:value-of disable-output-escaping="yes" select="$select_sort_label_bottom"/></label>
					</iaixsl:if>
					<select class="s_paging__select --order --small-md" id="select_bottom_sort" name="sort_order">
					  <iaixsl:attribute name="aria-label">Zmień sortowanie</iaixsl:attribute>
						<option value="name-a" class="option_name-a"><iaixsl:if test="page/products/navigation/@sort = 'name' and page/products/navigation/@order = 'a'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po nazwie rosnąco</option>
						<option value="name-d" class="option_name-d"><iaixsl:if test="page/products/navigation/@sort = 'name' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po nazwie malejąco</option>
						<option value="price-a" class="option_price-a"><iaixsl:if test="page/products/navigation/@sort = 'price' and page/products/navigation/@order = 'a'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po cenie rosnąco</option>
						<option value="price-d" class="option_price-d"><iaixsl:if test="page/products/navigation/@sort = 'price' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po cenie malejąco</option>
						<option value="date-a" class="option_date-a"><iaixsl:if test="page/products/navigation/@sort = 'date' and page/products/navigation/@order = 'a'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po dacie rosnąco</option>
						<option value="date-d" class="option_date-d"><iaixsl:if test="page/products/navigation/@sort = 'date' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po dacie malejąco</option>
					</select>
				</form>
			</iaixsl:if>

			<iaixsl:if test="not(/shop/page/products/navigation/@disable_portions_change = 'y') and count(page/products/navigation/portions) &gt; 1">
				<form class="s_paging__item --portions d-none" action="/settings.php">
					<iaixsl:attribute name="aria-label">Zmień ilość wyświetlanych produktów</iaixsl:attribute>
					<iaixsl:if test="$select_portions_label_bottom">
						<label for="select_bottom_portions"><iaixsl:value-of disable-output-escaping="yes" select="$select_portions_label_bottom"/></label>
					</iaixsl:if>
					<select class="s_paging__select --portions --small-md" id="select_bottom_portions" name="portions">
						<iaixsl:attribute name="aria-label">Zmień ilość wyświetlanych produktów</iaixsl:attribute>
						<iaixsl:for-each select="page/products/navigation/portions">
							<option><iaixsl:attribute name="value"><iaixsl:value-of select="@counter"/></iaixsl:attribute><iaixsl:if test="@selected = 'true'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Pokaż <iaixsl:value-of select="@counter"/>
							</option>
						</iaixsl:for-each>
					</select>
				</form>
			</iaixsl:if>

			<iaixsl:if test="count(page/products/navigation/item) &gt; 1">
				<ul class="s_paging__item pagination mb-2 mb-sm-3">
					<iaixsl:attribute name="aria-label">Nawiguj między stronami</iaixsl:attribute>
					<iaixsl:attribute name="data-total"><iaixsl:value-of select="/shop/page/products/navigation/@total"/></iaixsl:attribute>
					<iaixsl:attribute name="data-from"><iaixsl:value-of select="/shop/page/products/navigation/@from"/></iaixsl:attribute>
					<iaixsl:attribute name="data-to"><iaixsl:value-of select="/shop/page/products/navigation/@to"/></iaixsl:attribute>
					<iaixsl:attribute name="data-portions"><iaixsl:value-of select="/shop/page/products/navigation/@portions"/></iaixsl:attribute>
					
					<iaixsl:if test="page/products/navigation/prev">
						<li class="pagination__element --prev">
							<iaixsl:if test="$prev_page_bottom">
								<iaixsl:attribute name="class">pagination__element --prev --button</iaixsl:attribute>
							</iaixsl:if>
							<a class="pagination__link">
								<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="page/products/navigation/prev/@counter = '0'"><iaixsl:value-of disable-output-escaping="yes" select="substring-before(page/products/navigation/path/@value, '&amp;counter=')"/><iaixsl:value-of disable-output-escaping="yes" select="substring-before(page/products/navigation/path/@value, '?counter=')"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/prev/@counter"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>
								<iaixsl:attribute name="aria-label">Poprzednia strona</iaixsl:attribute>
							</a>
							<iaixsl:if test="$prev_page_bottom">
								<a class="pagination__button --prev btn --secondary --solid --icon-left icon-angle-left d-md-none">
									<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="page/products/navigation/prev/@counter = '0'"><iaixsl:value-of disable-output-escaping="yes" select="substring-before(page/products/navigation/path/@value, '&amp;counter=')"/><iaixsl:value-of disable-output-escaping="yes" select="substring-before(page/products/navigation/path/@value, '?counter=')"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/prev/@counter"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>
									<iaixsl:value-of disable-output-escaping="yes" select="$prev_page_bottom"/>
								</a>
							</iaixsl:if>
						</li>
					</iaixsl:if>
					
					<iaixsl:if test="not(page/products/navigation/prev)">
						<li class="pagination__element --prev --disabled">
							<iaixsl:if test="$prev_page_bottom">
								<iaixsl:attribute name="class">pagination__element --prev --disabled --button</iaixsl:attribute>
							</iaixsl:if>
							<span class="pagination__link"/>
							<iaixsl:if test="$prev_page_bottom">
								<span class="pagination__button --prev btn --secondary --solid --icon-left icon-angle-left d-md-none"><iaixsl:value-of disable-output-escaping="yes" select="$prev_page_bottom"/></span>
							</iaixsl:if>
						</li>
					</iaixsl:if>
					
					<iaixsl:for-each select="page/products/navigation/item">
						<iaixsl:if test="@gap">
							<li class="pagination__element --gap --disabled">
								<span class="pagination__link">...</span>
							</li>
						</iaixsl:if>
						<iaixsl:if test="not(@type = 'current') and not(@gap)">
							<li class="pagination__element --item">
								<a class="pagination__link">
									<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="@counter = '1'"><iaixsl:value-of disable-output-escaping="yes" select="substring-before(../path/@value, '&amp;counter=')"/><iaixsl:value-of disable-output-escaping="yes" select="substring-before(../path/@value, '?counter=')"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="../path/@value"/><iaixsl:value-of select="@counter - 1"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>
									<iaixsl:value-of select="@counter"/>
								</a>
							</li>
						</iaixsl:if>
						<iaixsl:if test="@type = 'current'">
							<li class="pagination__element --item --active">
								<span class="pagination__link"><iaixsl:attribute name="aria-current">page</iaixsl:attribute><iaixsl:value-of select="@counter"/></span>
							</li>
						</iaixsl:if>
					</iaixsl:for-each>
					
					<iaixsl:if test="page/products/navigation/next">
						<li class="pagination__element --next">
							<iaixsl:if test="$next_page_bottom">
								<iaixsl:attribute name="class">pagination__element --next --button</iaixsl:attribute>
							</iaixsl:if>
							<a class="pagination__link">
								<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/next/@counter"/></iaixsl:attribute>
								<iaixsl:attribute name="aria-label"><iaixsl:value-of disable-output-escaping="yes" select="$next_page_bottom"/></iaixsl:attribute>
							</a>
							<iaixsl:if test="$next_page_bottom">
								<a class="pagination__button --next btn --secondary --solid --icon-right icon-angle-right d-md-none">
									<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/next/@counter"/></iaixsl:attribute>
									<iaixsl:value-of disable-output-escaping="yes" select="$next_page_bottom"/>
								</a>
							</iaixsl:if>
						</li>
					</iaixsl:if>
					
					<iaixsl:if test="not(page/products/navigation/next)">
						<li class="pagination__element --next --disabled">
							<iaixsl:if test="$next_page_bottom">
								<iaixsl:attribute name="class">pagination__element --next --disabled --button</iaixsl:attribute>
							</iaixsl:if>
							<span class="pagination__link"/>
							<iaixsl:if test="$next_page_bottom">
								<span class="pagination__button --next btn --secondary --solid --icon-right icon-angle-right d-md-none"><iaixsl:value-of disable-output-escaping="yes" select="$next_page_bottom"/></span>
							</iaixsl:if>
						</li>
					</iaixsl:if>
				</ul>
			</iaixsl:if>
		</div>
	</iaixsl:if>
<!-- (search_hotspot_zone1, 60dd8e786dac63.37616518.2)-->

        <iaixsl:if test="/shop/page/products/additional/hotspot/products_zone1/@iairs_ajax"> </iaixsl:if>
        <iaixsl:if test="/shop/page/products/additional/hotspot/products_zone1/@hotspot_ajax"> </iaixsl:if>
        <iaixsl:if test="/shop/page/products/additional/hotspot/products_zone1/@name"> </iaixsl:if>

        <!-- (search_categoriesdescription_bottom, 61b0b16a3ca862.45673090.4)-->
			<iaixsl:if test="not(/shop/page/products/additional/category_list/description_bottom = '') and (/shop/page/products/additional/category_list/description_bottom)">
				<iaixsl:if test="(/shop/page/products/@hideproducts = 'true' ) or ((/shop/page/products/navigation/item[1]/@counter = 1) and (/shop/page/products/navigation/item[1]/@type = 'current'))">
					<section class="search_description --bottom --skeleton cm">
						<div class="search_description__wrapper">
							<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/products/additional/category_list/description_bottom"/>
						</div>
					</section>
				</iaixsl:if>
			</iaixsl:if>
		<!-- (search_promo_products, 61f913c81ea771.79063863.12)-->
        <iaixsl:if test="/shop/page/@dynamic_display = 'true'"> 
            <script>
               var  _additional_ajax = true;
            </script>
        </iaixsl:if>
        
				</main>
			</iaixsl:if>
		</div>
	</div>

	
	<iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'footer')">
		<footer>
			<iaixsl:attribute name="class">max-width-1200</iaixsl:attribute>
			<!-- (menu_search_hotspot1_bis, 665dd037efe385.25714391.6)-->

  <iaixsl:if test="page/products/additional/hotspot/products_zone1">
    <section id="search_hotspot_zone1" class="hotspot__wrapper">
      <iaixsl:attribute name="data-pagetype">search</iaixsl:attribute>
      <iaixsl:attribute name="data-zone">1</iaixsl:attribute>
			<iaixsl:attribute name="aria-label">Dodatkowa strefa produktowa</iaixsl:attribute>
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
	<iaixsl:if test="/shop/page/products/additional/hotspot/products_zone1/@hotspot_ajax"> </iaixsl:if>
	<iaixsl:if test="/shop/page/products/additional/hotspot/products_zone1/@iairs_ajax"> </iaixsl:if>
	<iaixsl:if test="/shop/page/products/additional/hotspot/products_zone1/@cache_html"> </iaixsl:if>
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
<!-- (menu_compare, 6374c9a3a9b958.90333095.4)--><!-- (menu_maps, 63764495e0cb08.91568922.4)--><!-- (menu_slider_modules, 6655a6e6f03996.64967288.4)-->






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
    <iaixsl:when test="/shop/@preview &gt; 0"><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/search_shop.js?r=1778592114</iaixsl:attribute></script></iaixsl:when>
    <iaixsl:otherwise><script ><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/search_shop.js.gzip?r=1778592114</iaixsl:attribute></script></iaixsl:otherwise>
</iaixsl:choose>


		
		
	</iaixsl:if>

	
	<script src="/gfx/pol/envelope.js.gzip?r=1778592114"></script><script src="/gfx/pol/menu_suggested_shop_for_language.js.gzip?r=1778592114"></script><script src="/gfx/pol/menu_filter.js.gzip?r=1778592114"></script><script src="/gfx/pol/add_codes_to_basket.js.gzip?r=1778592114"></script><script src="/gfx/pol/menu_compare.js.gzip?r=1778592114"></script><script src="/gfx/pol/hotspots_javascript.js.gzip?r=1778592114"></script><script src="/gfx/pol/hotspots_slider.js.gzip?r=1778592114"></script><script src="/gfx/pol/hotspots_add_to_basket.js.gzip?r=1778592114"></script><script src="/gfx/pol/search_categoriesdescription.js.gzip?r=1778592114"></script><script src="/gfx/pol/search_paging.js.gzip?r=1778592114"></script><script src="/gfx/pol/search_filters.js.gzip?r=1778592114"></script><script src="/gfx/pol/search_categoriesdescription_bottom.js.gzip?r=1778592114"></script><script src="/gfx/pol/search_promo_products.js.gzip?r=1778592114"></script>

	
	<iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>

	<script>app_shop.runApp();</script>
	
	<iaixsl:if test="/shop/page/seolink_with_language_directory"/>

	<iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
		<iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
	</iaixsl:if>
</iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-backslash"><iaixsl:param name="str" select="."/><iaixsl:choose><iaixsl:when test="contains($str, '\')"><iaixsl:value-of select="concat(substring-before($str, '\'), '\\' )"/><iaixsl:call-template name="escape-backslash"><iaixsl:with-param name="str" select="substring-after($str, '\')"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape_backslash"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:choose><iaixsl:when test="not($escape_backslash)"><iaixsl:value-of select="$str"/></iaixsl:when><iaixsl:otherwise><iaixsl:call-template name="escape-backslash"><iaixsl:with-param name="str" select="$str"/></iaixsl:call-template></iaixsl:otherwise></iaixsl:choose></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>