// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zaraz_zaraz_config_base_consent_button_text_translations.dart';import 'zaraz_zaraz_config_base_consent_purposes_value.dart';import 'zaraz_zaraz_config_base_consent_purposes_with_translations_value.dart';/// Consent management configuration.
final class ZarazZarazConfigBaseConsent {const ZarazZarazConfigBaseConsent({this.buttonTextTranslations, this.companyEmail, this.companyName, this.companyStreetAddress, this.consentModalIntroHtml, this.consentModalIntroHtmlWithTranslations, this.cookieName, this.customCss, this.customIntroDisclaimerDismissed, this.defaultLanguage, required this.enabled, this.hideModal, this.purposes, this.purposesWithTranslations, this.tcfCompliant, });

factory ZarazZarazConfigBaseConsent.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigBaseConsent(
  buttonTextTranslations: json['buttonTextTranslations'] != null ? ZarazZarazConfigBaseConsentButtonTextTranslations.fromJson(json['buttonTextTranslations'] as Map<String, dynamic>) : null,
  companyEmail: json['companyEmail'] as String?,
  companyName: json['companyName'] as String?,
  companyStreetAddress: json['companyStreetAddress'] as String?,
  consentModalIntroHtml: json['consentModalIntroHTML'] as String?,
  consentModalIntroHtmlWithTranslations: (json['consentModalIntroHTMLWithTranslations'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  cookieName: json['cookieName'] as String?,
  customCss: json['customCSS'] as String?,
  customIntroDisclaimerDismissed: json['customIntroDisclaimerDismissed'] as bool?,
  defaultLanguage: json['defaultLanguage'] as String?,
  enabled: json['enabled'] as bool,
  hideModal: json['hideModal'] as bool?,
  purposes: (json['purposes'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, ZarazZarazConfigBaseConsentPurposesValue.fromJson(v as Map<String, dynamic>))),
  purposesWithTranslations: (json['purposesWithTranslations'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, ZarazZarazConfigBaseConsentPurposesWithTranslationsValue.fromJson(v as Map<String, dynamic>))),
  tcfCompliant: json['tcfCompliant'] as bool?,
); }

final ZarazZarazConfigBaseConsentButtonTextTranslations? buttonTextTranslations;

final String? companyEmail;

final String? companyName;

final String? companyStreetAddress;

final String? consentModalIntroHtml;

/// Object where keys are language codes
final Map<String,String>? consentModalIntroHtmlWithTranslations;

final String? cookieName;

final String? customCss;

final bool? customIntroDisclaimerDismissed;

final String? defaultLanguage;

final bool enabled;

final bool? hideModal;

/// Object where keys are purpose alpha-numeric IDs
final Map<String,ZarazZarazConfigBaseConsentPurposesValue>? purposes;

/// Object where keys are purpose alpha-numeric IDs
final Map<String,ZarazZarazConfigBaseConsentPurposesWithTranslationsValue>? purposesWithTranslations;

final bool? tcfCompliant;

Map<String, dynamic> toJson() { return {
  if (buttonTextTranslations != null) 'buttonTextTranslations': buttonTextTranslations?.toJson(),
  'companyEmail': ?companyEmail,
  'companyName': ?companyName,
  'companyStreetAddress': ?companyStreetAddress,
  'consentModalIntroHTML': ?consentModalIntroHtml,
  'consentModalIntroHTMLWithTranslations': ?consentModalIntroHtmlWithTranslations,
  'cookieName': ?cookieName,
  'customCSS': ?customCss,
  'customIntroDisclaimerDismissed': ?customIntroDisclaimerDismissed,
  'defaultLanguage': ?defaultLanguage,
  'enabled': enabled,
  'hideModal': ?hideModal,
  if (purposes != null) 'purposes': purposes?.map((k, v) => MapEntry(k, v.toJson())),
  if (purposesWithTranslations != null) 'purposesWithTranslations': purposesWithTranslations?.map((k, v) => MapEntry(k, v.toJson())),
  'tcfCompliant': ?tcfCompliant,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
ZarazZarazConfigBaseConsent copyWith({ZarazZarazConfigBaseConsentButtonTextTranslations Function()? buttonTextTranslations, String Function()? companyEmail, String Function()? companyName, String Function()? companyStreetAddress, String Function()? consentModalIntroHtml, Map<String, String> Function()? consentModalIntroHtmlWithTranslations, String Function()? cookieName, String Function()? customCss, bool Function()? customIntroDisclaimerDismissed, String Function()? defaultLanguage, bool? enabled, bool Function()? hideModal, Map<String, ZarazZarazConfigBaseConsentPurposesValue> Function()? purposes, Map<String, ZarazZarazConfigBaseConsentPurposesWithTranslationsValue> Function()? purposesWithTranslations, bool Function()? tcfCompliant, }) { return ZarazZarazConfigBaseConsent(
  buttonTextTranslations: buttonTextTranslations != null ? buttonTextTranslations() : this.buttonTextTranslations,
  companyEmail: companyEmail != null ? companyEmail() : this.companyEmail,
  companyName: companyName != null ? companyName() : this.companyName,
  companyStreetAddress: companyStreetAddress != null ? companyStreetAddress() : this.companyStreetAddress,
  consentModalIntroHtml: consentModalIntroHtml != null ? consentModalIntroHtml() : this.consentModalIntroHtml,
  consentModalIntroHtmlWithTranslations: consentModalIntroHtmlWithTranslations != null ? consentModalIntroHtmlWithTranslations() : this.consentModalIntroHtmlWithTranslations,
  cookieName: cookieName != null ? cookieName() : this.cookieName,
  customCss: customCss != null ? customCss() : this.customCss,
  customIntroDisclaimerDismissed: customIntroDisclaimerDismissed != null ? customIntroDisclaimerDismissed() : this.customIntroDisclaimerDismissed,
  defaultLanguage: defaultLanguage != null ? defaultLanguage() : this.defaultLanguage,
  enabled: enabled ?? this.enabled,
  hideModal: hideModal != null ? hideModal() : this.hideModal,
  purposes: purposes != null ? purposes() : this.purposes,
  purposesWithTranslations: purposesWithTranslations != null ? purposesWithTranslations() : this.purposesWithTranslations,
  tcfCompliant: tcfCompliant != null ? tcfCompliant() : this.tcfCompliant,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigBaseConsent &&
          buttonTextTranslations == other.buttonTextTranslations &&
          companyEmail == other.companyEmail &&
          companyName == other.companyName &&
          companyStreetAddress == other.companyStreetAddress &&
          consentModalIntroHtml == other.consentModalIntroHtml &&
          consentModalIntroHtmlWithTranslations == other.consentModalIntroHtmlWithTranslations &&
          cookieName == other.cookieName &&
          customCss == other.customCss &&
          customIntroDisclaimerDismissed == other.customIntroDisclaimerDismissed &&
          defaultLanguage == other.defaultLanguage &&
          enabled == other.enabled &&
          hideModal == other.hideModal &&
          purposes == other.purposes &&
          purposesWithTranslations == other.purposesWithTranslations &&
          tcfCompliant == other.tcfCompliant; } 
@override int get hashCode { return Object.hash(buttonTextTranslations, companyEmail, companyName, companyStreetAddress, consentModalIntroHtml, consentModalIntroHtmlWithTranslations, cookieName, customCss, customIntroDisclaimerDismissed, defaultLanguage, enabled, hideModal, purposes, purposesWithTranslations, tcfCompliant); } 
@override String toString() { return 'ZarazZarazConfigBaseConsent(buttonTextTranslations: $buttonTextTranslations, companyEmail: $companyEmail, companyName: $companyName, companyStreetAddress: $companyStreetAddress, consentModalIntroHtml: $consentModalIntroHtml, consentModalIntroHtmlWithTranslations: $consentModalIntroHtmlWithTranslations, cookieName: $cookieName, customCss: $customCss, customIntroDisclaimerDismissed: $customIntroDisclaimerDismissed, defaultLanguage: $defaultLanguage, enabled: $enabled, hideModal: $hideModal, purposes: $purposes, purposesWithTranslations: $purposesWithTranslations, tcfCompliant: $tcfCompliant)'; } 
 }
