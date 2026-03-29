// GENERATED CODE - DO NOT MODIFY BY HAND

final class SourceTypeKlarna {const SourceTypeKlarna({this.backgroundImageUrl, this.clientToken, this.firstName, this.lastName, this.locale, this.logoUrl, this.pageTitle, this.payLaterAssetUrlsDescriptive, this.payLaterAssetUrlsStandard, this.payLaterName, this.payLaterRedirectUrl, this.payNowAssetUrlsDescriptive, this.payNowAssetUrlsStandard, this.payNowName, this.payNowRedirectUrl, this.payOverTimeAssetUrlsDescriptive, this.payOverTimeAssetUrlsStandard, this.payOverTimeName, this.payOverTimeRedirectUrl, this.paymentMethodCategories, this.purchaseCountry, this.purchaseType, this.redirectUrl, this.shippingDelay, this.shippingFirstName, this.shippingLastName, });

factory SourceTypeKlarna.fromJson(Map<String, dynamic> json) { return SourceTypeKlarna(
  backgroundImageUrl: json['background_image_url'] as String?,
  clientToken: json['client_token'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  locale: json['locale'] as String?,
  logoUrl: json['logo_url'] as String?,
  pageTitle: json['page_title'] as String?,
  payLaterAssetUrlsDescriptive: json['pay_later_asset_urls_descriptive'] as String?,
  payLaterAssetUrlsStandard: json['pay_later_asset_urls_standard'] as String?,
  payLaterName: json['pay_later_name'] as String?,
  payLaterRedirectUrl: json['pay_later_redirect_url'] as String?,
  payNowAssetUrlsDescriptive: json['pay_now_asset_urls_descriptive'] as String?,
  payNowAssetUrlsStandard: json['pay_now_asset_urls_standard'] as String?,
  payNowName: json['pay_now_name'] as String?,
  payNowRedirectUrl: json['pay_now_redirect_url'] as String?,
  payOverTimeAssetUrlsDescriptive: json['pay_over_time_asset_urls_descriptive'] as String?,
  payOverTimeAssetUrlsStandard: json['pay_over_time_asset_urls_standard'] as String?,
  payOverTimeName: json['pay_over_time_name'] as String?,
  payOverTimeRedirectUrl: json['pay_over_time_redirect_url'] as String?,
  paymentMethodCategories: json['payment_method_categories'] as String?,
  purchaseCountry: json['purchase_country'] as String?,
  purchaseType: json['purchase_type'] as String?,
  redirectUrl: json['redirect_url'] as String?,
  shippingDelay: json['shipping_delay'] != null ? (json['shipping_delay'] as num).toInt() : null,
  shippingFirstName: json['shipping_first_name'] as String?,
  shippingLastName: json['shipping_last_name'] as String?,
); }

final String? backgroundImageUrl;

final String? clientToken;

final String? firstName;

final String? lastName;

final String? locale;

final String? logoUrl;

final String? pageTitle;

final String? payLaterAssetUrlsDescriptive;

final String? payLaterAssetUrlsStandard;

final String? payLaterName;

final String? payLaterRedirectUrl;

final String? payNowAssetUrlsDescriptive;

final String? payNowAssetUrlsStandard;

final String? payNowName;

final String? payNowRedirectUrl;

final String? payOverTimeAssetUrlsDescriptive;

final String? payOverTimeAssetUrlsStandard;

final String? payOverTimeName;

final String? payOverTimeRedirectUrl;

final String? paymentMethodCategories;

final String? purchaseCountry;

final String? purchaseType;

final String? redirectUrl;

final int? shippingDelay;

final String? shippingFirstName;

final String? shippingLastName;

Map<String, dynamic> toJson() { return {
  'background_image_url': ?backgroundImageUrl,
  'client_token': ?clientToken,
  'first_name': ?firstName,
  'last_name': ?lastName,
  'locale': ?locale,
  'logo_url': ?logoUrl,
  'page_title': ?pageTitle,
  'pay_later_asset_urls_descriptive': ?payLaterAssetUrlsDescriptive,
  'pay_later_asset_urls_standard': ?payLaterAssetUrlsStandard,
  'pay_later_name': ?payLaterName,
  'pay_later_redirect_url': ?payLaterRedirectUrl,
  'pay_now_asset_urls_descriptive': ?payNowAssetUrlsDescriptive,
  'pay_now_asset_urls_standard': ?payNowAssetUrlsStandard,
  'pay_now_name': ?payNowName,
  'pay_now_redirect_url': ?payNowRedirectUrl,
  'pay_over_time_asset_urls_descriptive': ?payOverTimeAssetUrlsDescriptive,
  'pay_over_time_asset_urls_standard': ?payOverTimeAssetUrlsStandard,
  'pay_over_time_name': ?payOverTimeName,
  'pay_over_time_redirect_url': ?payOverTimeRedirectUrl,
  'payment_method_categories': ?paymentMethodCategories,
  'purchase_country': ?purchaseCountry,
  'purchase_type': ?purchaseType,
  'redirect_url': ?redirectUrl,
  'shipping_delay': ?shippingDelay,
  'shipping_first_name': ?shippingFirstName,
  'shipping_last_name': ?shippingLastName,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SourceTypeKlarna copyWith({String Function()? backgroundImageUrl, String? Function()? clientToken, String Function()? firstName, String Function()? lastName, String Function()? locale, String Function()? logoUrl, String Function()? pageTitle, String Function()? payLaterAssetUrlsDescriptive, String Function()? payLaterAssetUrlsStandard, String Function()? payLaterName, String Function()? payLaterRedirectUrl, String Function()? payNowAssetUrlsDescriptive, String Function()? payNowAssetUrlsStandard, String Function()? payNowName, String Function()? payNowRedirectUrl, String Function()? payOverTimeAssetUrlsDescriptive, String Function()? payOverTimeAssetUrlsStandard, String Function()? payOverTimeName, String Function()? payOverTimeRedirectUrl, String Function()? paymentMethodCategories, String Function()? purchaseCountry, String Function()? purchaseType, String Function()? redirectUrl, int Function()? shippingDelay, String Function()? shippingFirstName, String Function()? shippingLastName, }) { return SourceTypeKlarna(
  backgroundImageUrl: backgroundImageUrl != null ? backgroundImageUrl() : this.backgroundImageUrl,
  clientToken: clientToken != null ? clientToken() : this.clientToken,
  firstName: firstName != null ? firstName() : this.firstName,
  lastName: lastName != null ? lastName() : this.lastName,
  locale: locale != null ? locale() : this.locale,
  logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
  pageTitle: pageTitle != null ? pageTitle() : this.pageTitle,
  payLaterAssetUrlsDescriptive: payLaterAssetUrlsDescriptive != null ? payLaterAssetUrlsDescriptive() : this.payLaterAssetUrlsDescriptive,
  payLaterAssetUrlsStandard: payLaterAssetUrlsStandard != null ? payLaterAssetUrlsStandard() : this.payLaterAssetUrlsStandard,
  payLaterName: payLaterName != null ? payLaterName() : this.payLaterName,
  payLaterRedirectUrl: payLaterRedirectUrl != null ? payLaterRedirectUrl() : this.payLaterRedirectUrl,
  payNowAssetUrlsDescriptive: payNowAssetUrlsDescriptive != null ? payNowAssetUrlsDescriptive() : this.payNowAssetUrlsDescriptive,
  payNowAssetUrlsStandard: payNowAssetUrlsStandard != null ? payNowAssetUrlsStandard() : this.payNowAssetUrlsStandard,
  payNowName: payNowName != null ? payNowName() : this.payNowName,
  payNowRedirectUrl: payNowRedirectUrl != null ? payNowRedirectUrl() : this.payNowRedirectUrl,
  payOverTimeAssetUrlsDescriptive: payOverTimeAssetUrlsDescriptive != null ? payOverTimeAssetUrlsDescriptive() : this.payOverTimeAssetUrlsDescriptive,
  payOverTimeAssetUrlsStandard: payOverTimeAssetUrlsStandard != null ? payOverTimeAssetUrlsStandard() : this.payOverTimeAssetUrlsStandard,
  payOverTimeName: payOverTimeName != null ? payOverTimeName() : this.payOverTimeName,
  payOverTimeRedirectUrl: payOverTimeRedirectUrl != null ? payOverTimeRedirectUrl() : this.payOverTimeRedirectUrl,
  paymentMethodCategories: paymentMethodCategories != null ? paymentMethodCategories() : this.paymentMethodCategories,
  purchaseCountry: purchaseCountry != null ? purchaseCountry() : this.purchaseCountry,
  purchaseType: purchaseType != null ? purchaseType() : this.purchaseType,
  redirectUrl: redirectUrl != null ? redirectUrl() : this.redirectUrl,
  shippingDelay: shippingDelay != null ? shippingDelay() : this.shippingDelay,
  shippingFirstName: shippingFirstName != null ? shippingFirstName() : this.shippingFirstName,
  shippingLastName: shippingLastName != null ? shippingLastName() : this.shippingLastName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeKlarna &&
          backgroundImageUrl == other.backgroundImageUrl &&
          clientToken == other.clientToken &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          locale == other.locale &&
          logoUrl == other.logoUrl &&
          pageTitle == other.pageTitle &&
          payLaterAssetUrlsDescriptive == other.payLaterAssetUrlsDescriptive &&
          payLaterAssetUrlsStandard == other.payLaterAssetUrlsStandard &&
          payLaterName == other.payLaterName &&
          payLaterRedirectUrl == other.payLaterRedirectUrl &&
          payNowAssetUrlsDescriptive == other.payNowAssetUrlsDescriptive &&
          payNowAssetUrlsStandard == other.payNowAssetUrlsStandard &&
          payNowName == other.payNowName &&
          payNowRedirectUrl == other.payNowRedirectUrl &&
          payOverTimeAssetUrlsDescriptive == other.payOverTimeAssetUrlsDescriptive &&
          payOverTimeAssetUrlsStandard == other.payOverTimeAssetUrlsStandard &&
          payOverTimeName == other.payOverTimeName &&
          payOverTimeRedirectUrl == other.payOverTimeRedirectUrl &&
          paymentMethodCategories == other.paymentMethodCategories &&
          purchaseCountry == other.purchaseCountry &&
          purchaseType == other.purchaseType &&
          redirectUrl == other.redirectUrl &&
          shippingDelay == other.shippingDelay &&
          shippingFirstName == other.shippingFirstName &&
          shippingLastName == other.shippingLastName; } 
@override int get hashCode { return Object.hashAll([backgroundImageUrl, clientToken, firstName, lastName, locale, logoUrl, pageTitle, payLaterAssetUrlsDescriptive, payLaterAssetUrlsStandard, payLaterName, payLaterRedirectUrl, payNowAssetUrlsDescriptive, payNowAssetUrlsStandard, payNowName, payNowRedirectUrl, payOverTimeAssetUrlsDescriptive, payOverTimeAssetUrlsStandard, payOverTimeName, payOverTimeRedirectUrl, paymentMethodCategories, purchaseCountry, purchaseType, redirectUrl, shippingDelay, shippingFirstName, shippingLastName]); } 
@override String toString() { return 'SourceTypeKlarna(backgroundImageUrl: $backgroundImageUrl, clientToken: $clientToken, firstName: $firstName, lastName: $lastName, locale: $locale, logoUrl: $logoUrl, pageTitle: $pageTitle, payLaterAssetUrlsDescriptive: $payLaterAssetUrlsDescriptive, payLaterAssetUrlsStandard: $payLaterAssetUrlsStandard, payLaterName: $payLaterName, payLaterRedirectUrl: $payLaterRedirectUrl, payNowAssetUrlsDescriptive: $payNowAssetUrlsDescriptive, payNowAssetUrlsStandard: $payNowAssetUrlsStandard, payNowName: $payNowName, payNowRedirectUrl: $payNowRedirectUrl, payOverTimeAssetUrlsDescriptive: $payOverTimeAssetUrlsDescriptive, payOverTimeAssetUrlsStandard: $payOverTimeAssetUrlsStandard, payOverTimeName: $payOverTimeName, payOverTimeRedirectUrl: $payOverTimeRedirectUrl, paymentMethodCategories: $paymentMethodCategories, purchaseCountry: $purchaseCountry, purchaseType: $purchaseType, redirectUrl: $redirectUrl, shippingDelay: $shippingDelay, shippingFirstName: $shippingFirstName, shippingLastName: $shippingLastName)'; } 
 }
