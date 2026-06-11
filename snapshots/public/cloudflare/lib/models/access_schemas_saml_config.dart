// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_saml_config_header_attributes.dart';@immutable final class AccessSchemasSamlConfig {const AccessSchemasSamlConfig({this.attributes, this.emailAttributeName, this.headerAttributes, this.idpPublicCerts, this.issuerUrl, this.signRequest, this.ssoTargetUrl, });

factory AccessSchemasSamlConfig.fromJson(Map<String, dynamic> json) { return AccessSchemasSamlConfig(
  attributes: (json['attributes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  emailAttributeName: json['email_attribute_name'] as String?,
  headerAttributes: (json['header_attributes'] as List<dynamic>?)?.map((e) => AccessSchemasSamlConfigHeaderAttributes.fromJson(e as Map<String, dynamic>)).toList(),
  idpPublicCerts: (json['idp_public_certs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  issuerUrl: json['issuer_url'] as String?,
  signRequest: json['sign_request'] as bool?,
  ssoTargetUrl: json['sso_target_url'] as String?,
); }

/// A list of SAML attribute names that will be added to your signed JWT token and can be used in SAML policy rules.
final List<String>? attributes;

/// The attribute name for email in the SAML response.
final String? emailAttributeName;

/// Add a list of attribute names that will be returned in the response header from the Access callback.
final List<AccessSchemasSamlConfigHeaderAttributes>? headerAttributes;

/// X509 certificate to verify the signature in the SAML authentication response
final List<String>? idpPublicCerts;

/// IdP Entity ID or Issuer URL
final String? issuerUrl;

/// Sign the SAML authentication request with Access credentials. To verify the signature, use the public key from the Access certs endpoints.
final bool? signRequest;

/// URL to send the SAML authentication requests to
final String? ssoTargetUrl;

Map<String, dynamic> toJson() { return {
  'attributes': ?attributes,
  'email_attribute_name': ?emailAttributeName,
  if (headerAttributes != null) 'header_attributes': headerAttributes?.map((e) => e.toJson()).toList(),
  'idp_public_certs': ?idpPublicCerts,
  'issuer_url': ?issuerUrl,
  'sign_request': ?signRequest,
  'sso_target_url': ?ssoTargetUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'attributes', 'email_attribute_name', 'header_attributes', 'idp_public_certs', 'issuer_url', 'sign_request', 'sso_target_url'}.contains(key)); } 
AccessSchemasSamlConfig copyWith({List<String> Function()? attributes, String Function()? emailAttributeName, List<AccessSchemasSamlConfigHeaderAttributes> Function()? headerAttributes, List<String> Function()? idpPublicCerts, String Function()? issuerUrl, bool Function()? signRequest, String Function()? ssoTargetUrl, }) { return AccessSchemasSamlConfig(
  attributes: attributes != null ? attributes() : this.attributes,
  emailAttributeName: emailAttributeName != null ? emailAttributeName() : this.emailAttributeName,
  headerAttributes: headerAttributes != null ? headerAttributes() : this.headerAttributes,
  idpPublicCerts: idpPublicCerts != null ? idpPublicCerts() : this.idpPublicCerts,
  issuerUrl: issuerUrl != null ? issuerUrl() : this.issuerUrl,
  signRequest: signRequest != null ? signRequest() : this.signRequest,
  ssoTargetUrl: ssoTargetUrl != null ? ssoTargetUrl() : this.ssoTargetUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasSamlConfig &&
          listEquals(attributes, other.attributes) &&
          emailAttributeName == other.emailAttributeName &&
          listEquals(headerAttributes, other.headerAttributes) &&
          listEquals(idpPublicCerts, other.idpPublicCerts) &&
          issuerUrl == other.issuerUrl &&
          signRequest == other.signRequest &&
          ssoTargetUrl == other.ssoTargetUrl; } 
@override int get hashCode { return Object.hash(Object.hashAll(attributes ?? const []), emailAttributeName, Object.hashAll(headerAttributes ?? const []), Object.hashAll(idpPublicCerts ?? const []), issuerUrl, signRequest, ssoTargetUrl); } 
@override String toString() { return 'AccessSchemasSamlConfig(attributes: $attributes, emailAttributeName: $emailAttributeName, headerAttributes: $headerAttributes, idpPublicCerts: $idpPublicCerts, issuerUrl: $issuerUrl, signRequest: $signRequest, ssoTargetUrl: $ssoTargetUrl)'; } 
 }
