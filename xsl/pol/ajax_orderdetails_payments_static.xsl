<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop">
	  <div id="orderdetails_payments_static" style="display:none">
	  
		<iaixsl:for-each select="/shop/page/payments_static/*">
			<div data-altid="orderdetails_payments_payment_card">
				<iaixsl:attribute name="class">embeded_card_form_<iaixsl:value-of select="@id"/></iaixsl:attribute>
				<div class="payment_card_sub">
					<div class="payment_card_info_new" data-altid="payment_card_info_new">
						Jesteś w bezpiecznym połączeniu SSL, które uniemożliwia podgląd wpisywanych danych przez osoby niepowołane. Dokonując płatności możesz zdecydować czy chcesz, aby dane karty zostały zapisane w naszym systemie. Wyrażając zgodę nie będziesz musiał podawać danych ponownie w przyszłości.
					</div>

					<iaixsl:if test="payform/headermessage or payform/headerlogo">
						<div class="payment_head_info" style="display: none;">
							<iaixsl:if test="payform/headermessage">
								<div class="payment_headermessage">
									<iaixsl:value-of disable-output-escaping="yes" select="payform/headermessage"/>
								</div>
							</iaixsl:if>
							<iaixsl:if test="payform/headerlogo">
								<div class="payment_headerlogo">
									<img>
										<iaixsl:attribute name="src"><iaixsl:value-of select="payform/headerlogo"/></iaixsl:attribute>
									</img>
								</div>
							</iaixsl:if>
						</div>
					</iaixsl:if>

					<form class="payment_card clearfix">
						<iaixsl:attribute name="action"><iaixsl:value-of select="payform/@action"/></iaixsl:attribute>
						<iaixsl:attribute name="method"><iaixsl:value-of select="payform/@method"/></iaixsl:attribute>
						<iaixsl:for-each select="payform/item">
							<iaixsl:choose>
								<iaixsl:when test="@name = 'creditCard[system]'">
									<div class="payment_card_formel cc_wrapper">
										<label for="credit_card_system" class="card_type_label">Rodzaje obsługiwanych kart:</label>
										<div class="clear_data" data-altid="credit_card_system">
											<iaixsl:for-each select="option">
												<label class="card-icon">
													<iaixsl:attribute name="id">card_icon_<iaixsl:value-of select="@value"/></iaixsl:attribute>
													<input type="radio" class="validate required" data-serialize="#dialog_wrapper #credit_card_system input">
														<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
														<iaixsl:attribute name="name"><iaixsl:value-of select="../@name"/></iaixsl:attribute>
														<iaixsl:if test="@name != ''">
															<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
														</iaixsl:if>
														<iaixsl:if test="@altName != ''">
															<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
														</iaixsl:if>
													</input>
													<div>
														<img>
															<iaixsl:attribute name="src"><iaixsl:value-of select="@data-img"/></iaixsl:attribute>
															<iaixsl:attribute name="alt"><iaixsl:value-of select="@label"/></iaixsl:attribute>
														</img>
														<span><iaixsl:value-of select="@label"/></span>
													</div>
												</label>
											</iaixsl:for-each>
										</div>
										
									</div>
								</iaixsl:when>
								<iaixsl:when test="@name = 'creditCard[number]'">
									<div class="form-group row clearfix">
										<div class="col-12">
											<label for="credit_card_number" class="control-label">Numer karty:</label>
										</div>
										<div class="has-feedback col-12 has-required">
											<input type="text" data-altid="credit_card_number" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_number">
												<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
												<iaixsl:if test="@value != ''">
													<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
												</iaixsl:if>
												<iaixsl:if test="@name != ''">
													<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
												</iaixsl:if>
												<iaixsl:if test="@altName != ''">
													<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
												</iaixsl:if>
											</input>
											<span class="form-control-feedback"/>
										</div>
										
									</div>
								</iaixsl:when>
								<iaixsl:when test="@name = 'creditCard[endDateMonth]'">
									<iaixsl:text disable-output-escaping="yes">&lt;div  class=&quot;row&quot; &gt;</iaixsl:text>
									<div class="form-group date_select col-7 col-sm-8">
										<div class="row clearfix">
											<div class="col-12">
												<label for="credit_card_month" class="control-label">Data ważności: </label>
											</div>
											<div class="col-12">
												<input type="text" data-altid="credit_card_month" class="form-control" data-serialize="#dialog_wrapper #credit_card_month, #dialog_wrapper #credit_card_year">
													<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
													<iaixsl:if test="@value != ''">
														<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
													</iaixsl:if>
													<iaixsl:if test="@name != ''">
														<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
													</iaixsl:if>
													<iaixsl:if test="@altName != ''">
														<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
													</iaixsl:if>
												</input>

												<iaixsl:if test="../item[@name = 'creditCard[endDateYear]']/@name">
													<span class="payment_card_expire"> / </span>
													<input type="text" data-altid="credit_card_year" class="form-control" data-serialize="#dialog_wrapper #credit_card_month, #dialog_wrapper #credit_card_year">
														<iaixsl:attribute name="name"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@name"/></iaixsl:attribute>
														<iaixsl:attribute name="value"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@value"/></iaixsl:attribute>
														<iaixsl:if test="@name != ''">
															<iaixsl:attribute name="data-name"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@name"/></iaixsl:attribute>
														</iaixsl:if>
														<iaixsl:if test="../item[@name = 'creditCard[endDateYear]']/@altName != ''">
															<iaixsl:attribute name="data-altName"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@altName"/></iaixsl:attribute>
														</iaixsl:if>
													</input>
												</iaixsl:if>
											</div>
										</div>
										
									</div>
								</iaixsl:when>
								<iaixsl:when test="@name = 'creditCard[securityCode]'">
									<div class="form-group security_code col-5 col-sm-4">
										<div class="row clearfix">
											<div class="col-12">
												<label for="credit_card_code" class="control-label">CVV2/CVC2:</label>
											</div>
											<div class="has-feedback col-12 has-required">
												<input type="text" data-altid="credit_card_code" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_code">
													<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
													<iaixsl:if test="@value != ''">
														<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
													</iaixsl:if>
													<iaixsl:if test="@name != ''">
														<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
													</iaixsl:if>
													<iaixsl:if test="@altName != ''">
														<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
													</iaixsl:if>
												</input>
												<span class="form-control-feedback"/>
											</div>
										</div>
									</div>
									<iaixsl:text disable-output-escaping="yes">&lt;/div&gt;</iaixsl:text>
								</iaixsl:when>
								<iaixsl:when test="@name = 'creditCard[name]'">
									<div class="form-group row clearfix">
										<div class="col-12">
											<label for="credit_card_name" class="control-label">Imię i nazwisko:</label>
										</div>
										<div class="has-feedback col-12 has-required">
											<input type="text" data-altid="credit_card_name" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_name">
												<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
												<iaixsl:if test="@value != ''">
													<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
												</iaixsl:if>
												<iaixsl:if test="@name != ''">
													<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
												</iaixsl:if>
												<iaixsl:if test="@altName != ''">
													<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
												</iaixsl:if>
											</input>
											<span class="form-control-feedback"/>
										</div>
									</div>
								</iaixsl:when>
								<iaixsl:when test="@name = 'payment'">
									<input data-altid="credit_card_payment" type="hidden">
										<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
										<iaixsl:if test="@value != ''">
											<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="@name != ''">
											<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="@altName != ''">
											<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
										</iaixsl:if>
									</input>
								</iaixsl:when>
								<iaixsl:when test="@name = 'payformid'">
									<input data-altid="credit_card_payformid" type="hidden">
										<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
										<iaixsl:if test="@value != ''">
											<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="@name != ''">
											<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:if test="@altName != ''">
											<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
										</iaixsl:if>
									</input>
								</iaixsl:when>
								<iaixsl:when test="@type = 'hidden'">
									<input type="hidden">
										<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
										<iaixsl:if test="@value != ''">
											<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
										</iaixsl:if>
									</input>
								</iaixsl:when>
							</iaixsl:choose>
						</iaixsl:for-each>
						<div class="clear_data cc_wrapper" data-altid="credit_card_agree">
						</div>
						<div class="credit_card_submit" data-altid="credit_card_submit">
							<button class="credit_card_submit_no_store btn --medium --outline" type="submit">
								<iaixsl:attribute name="title">Zapłać bez zapisywania karty</iaixsl:attribute>
								Zapłać bez zapisywania karty
							</button>
							<button class="credit_card_submit_store btn --medium --solid" type="submit">
								<iaixsl:attribute name="title">Zapłać i zapisz kartę</iaixsl:attribute>
								Zapłać i zapisz kartę
							</button>
						</div>
						<div class="clear_data cc_wrapper" data-altid="credit_card_buttons">
						</div>
						<div class="row">
							<div class="credit_card_pci_dss col-12">
								<span class="pci_dss_label">Payment Card Industry Data Security Standard</span>
								<span class="pci_dss_icon_container">
									<img src="/gfx/standards/pci_css_logo.png?r=1778592039" alt="PCI DSS Compilant"/>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>
		</iaixsl:for-each>
	</div>
  </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-backslash"><iaixsl:param name="str" select="."/><iaixsl:choose><iaixsl:when test="contains($str, '\')"><iaixsl:value-of select="concat(substring-before($str, '\'), '\\' )"/><iaixsl:call-template name="escape-backslash"><iaixsl:with-param name="str" select="substring-after($str, '\')"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape_backslash"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:choose><iaixsl:when test="not($escape_backslash)"><iaixsl:value-of select="$str"/></iaixsl:when><iaixsl:otherwise><iaixsl:call-template name="escape-backslash"><iaixsl:with-param name="str" select="$str"/></iaixsl:call-template></iaixsl:otherwise></iaixsl:choose></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>