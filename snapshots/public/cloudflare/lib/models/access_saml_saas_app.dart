// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_saml_saas_app_custom_attributes.dart';import 'access_timestamp.dart';/// Optional identifier indicating the authentication protocol used for the saas app. Required for OIDC. Default if unset is "saml"
@immutable final class AccessSamlSaasAppAuthType {const AccessSamlSaasAppAuthType._(this.value);

factory AccessSamlSaasAppAuthType.fromJson(String json) { return switch (json) {
  'saml' => saml,
  'oidc' => oidc,
  _ => AccessSamlSaasAppAuthType._(json),
}; }

static const AccessSamlSaasAppAuthType saml = AccessSamlSaasAppAuthType._('saml');

static const AccessSamlSaasAppAuthType oidc = AccessSamlSaasAppAuthType._('oidc');

static const List<AccessSamlSaasAppAuthType> values = [saml, oidc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSamlSaasAppAuthType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSamlSaasAppAuthType($value)'; } 
 }
/// The format of the name identifier sent to the SaaS application.
@immutable final class AccessSamlSaasAppNameIdFormat {const AccessSamlSaasAppNameIdFormat._(this.value);

factory AccessSamlSaasAppNameIdFormat.fromJson(String json) { return switch (json) {
  'id' => id,
  'email' => email,
  _ => AccessSamlSaasAppNameIdFormat._(json),
}; }

static const AccessSamlSaasAppNameIdFormat id = AccessSamlSaasAppNameIdFormat._('id');

static const AccessSamlSaasAppNameIdFormat email = AccessSamlSaasAppNameIdFormat._('email');

static const List<AccessSamlSaasAppNameIdFormat> values = [id, email];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSamlSaasAppNameIdFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSamlSaasAppNameIdFormat($value)'; } 
 }
@immutable final class AccessSamlSaasApp {const AccessSamlSaasApp({this.authType, this.consumerServiceUrl, this.createdAt, this.customAttributes, this.defaultRelayState, this.idpEntityId, this.nameIdFormat, this.nameIdTransformJsonata, this.publicKey, this.samlAttributeTransformJsonata, this.spEntityId, this.ssoEndpoint, this.updatedAt, });

factory AccessSamlSaasApp.fromJson(Map<String, dynamic> json) { return AccessSamlSaasApp(
  authType: json['auth_type'] != null ? AccessSamlSaasAppAuthType.fromJson(json['auth_type'] as String) : null,
  consumerServiceUrl: json['consumer_service_url'] as String?,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  customAttributes: (json['custom_attributes'] as List<dynamic>?)?.map((e) => AccessSamlSaasAppCustomAttributes.fromJson(e as Map<String, dynamic>)).toList(),
  defaultRelayState: json['default_relay_state'] as String?,
  idpEntityId: json['idp_entity_id'] as String?,
  nameIdFormat: json['name_id_format'] != null ? AccessSamlSaasAppNameIdFormat.fromJson(json['name_id_format'] as String) : null,
  nameIdTransformJsonata: json['name_id_transform_jsonata'] as String?,
  publicKey: json['public_key'] as String?,
  samlAttributeTransformJsonata: json['saml_attribute_transform_jsonata'] as String?,
  spEntityId: json['sp_entity_id'] as String?,
  ssoEndpoint: json['sso_endpoint'] as String?,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
); }

/// Optional identifier indicating the authentication protocol used for the saas app. Required for OIDC. Default if unset is "saml"
final AccessSamlSaasAppAuthType? authType;

/// The service provider's endpoint that is responsible for receiving and parsing a SAML assertion.
final String? consumerServiceUrl;

final AccessTimestamp? createdAt;

final List<AccessSamlSaasAppCustomAttributes>? customAttributes;

/// The URL that the user will be redirected to after a successful login for IDP initiated logins.
final String? defaultRelayState;

/// The unique identifier for your SaaS application.
final String? idpEntityId;

/// The format of the name identifier sent to the SaaS application.
final AccessSamlSaasAppNameIdFormat? nameIdFormat;

/// A [JSONata](https://jsonata.org/) expression that transforms an application's user identities into a NameID value for its SAML assertion. This expression should evaluate to a singular string. The output of this expression can override the `name_id_format` setting.
/// 
final String? nameIdTransformJsonata;

/// The Access public certificate that will be used to verify your identity.
final String? publicKey;

/// A [JSONata] (https://jsonata.org/) expression that transforms an application's user identities into attribute assertions in the SAML response. The expression can transform id, email, name, and groups values. It can also transform fields listed in the saml_attributes or oidc_fields of the identity provider used to authenticate. The output of this expression must be a JSON object.
/// 
final String? samlAttributeTransformJsonata;

/// A globally unique name for an identity or service provider.
final String? spEntityId;

/// The endpoint where your SaaS application will send login requests.
final String? ssoEndpoint;

final AccessTimestamp? updatedAt;

Map<String, dynamic> toJson() { return {
  if (authType != null) 'auth_type': authType?.toJson(),
  'consumer_service_url': ?consumerServiceUrl,
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (customAttributes != null) 'custom_attributes': customAttributes?.map((e) => e.toJson()).toList(),
  'default_relay_state': ?defaultRelayState,
  'idp_entity_id': ?idpEntityId,
  if (nameIdFormat != null) 'name_id_format': nameIdFormat?.toJson(),
  'name_id_transform_jsonata': ?nameIdTransformJsonata,
  'public_key': ?publicKey,
  'saml_attribute_transform_jsonata': ?samlAttributeTransformJsonata,
  'sp_entity_id': ?spEntityId,
  'sso_endpoint': ?ssoEndpoint,
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'auth_type', 'consumer_service_url', 'created_at', 'custom_attributes', 'default_relay_state', 'idp_entity_id', 'name_id_format', 'name_id_transform_jsonata', 'public_key', 'saml_attribute_transform_jsonata', 'sp_entity_id', 'sso_endpoint', 'updated_at'}.contains(key)); } 
AccessSamlSaasApp copyWith({AccessSamlSaasAppAuthType Function()? authType, String Function()? consumerServiceUrl, AccessTimestamp Function()? createdAt, List<AccessSamlSaasAppCustomAttributes> Function()? customAttributes, String Function()? defaultRelayState, String Function()? idpEntityId, AccessSamlSaasAppNameIdFormat Function()? nameIdFormat, String Function()? nameIdTransformJsonata, String Function()? publicKey, String Function()? samlAttributeTransformJsonata, String Function()? spEntityId, String Function()? ssoEndpoint, AccessTimestamp Function()? updatedAt, }) { return AccessSamlSaasApp(
  authType: authType != null ? authType() : this.authType,
  consumerServiceUrl: consumerServiceUrl != null ? consumerServiceUrl() : this.consumerServiceUrl,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  customAttributes: customAttributes != null ? customAttributes() : this.customAttributes,
  defaultRelayState: defaultRelayState != null ? defaultRelayState() : this.defaultRelayState,
  idpEntityId: idpEntityId != null ? idpEntityId() : this.idpEntityId,
  nameIdFormat: nameIdFormat != null ? nameIdFormat() : this.nameIdFormat,
  nameIdTransformJsonata: nameIdTransformJsonata != null ? nameIdTransformJsonata() : this.nameIdTransformJsonata,
  publicKey: publicKey != null ? publicKey() : this.publicKey,
  samlAttributeTransformJsonata: samlAttributeTransformJsonata != null ? samlAttributeTransformJsonata() : this.samlAttributeTransformJsonata,
  spEntityId: spEntityId != null ? spEntityId() : this.spEntityId,
  ssoEndpoint: ssoEndpoint != null ? ssoEndpoint() : this.ssoEndpoint,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSamlSaasApp &&
          authType == other.authType &&
          consumerServiceUrl == other.consumerServiceUrl &&
          createdAt == other.createdAt &&
          listEquals(customAttributes, other.customAttributes) &&
          defaultRelayState == other.defaultRelayState &&
          idpEntityId == other.idpEntityId &&
          nameIdFormat == other.nameIdFormat &&
          nameIdTransformJsonata == other.nameIdTransformJsonata &&
          publicKey == other.publicKey &&
          samlAttributeTransformJsonata == other.samlAttributeTransformJsonata &&
          spEntityId == other.spEntityId &&
          ssoEndpoint == other.ssoEndpoint &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(authType, consumerServiceUrl, createdAt, Object.hashAll(customAttributes ?? const []), defaultRelayState, idpEntityId, nameIdFormat, nameIdTransformJsonata, publicKey, samlAttributeTransformJsonata, spEntityId, ssoEndpoint, updatedAt); } 
@override String toString() { return 'AccessSamlSaasApp(authType: $authType, consumerServiceUrl: $consumerServiceUrl, createdAt: $createdAt, customAttributes: $customAttributes, defaultRelayState: $defaultRelayState, idpEntityId: $idpEntityId, nameIdFormat: $nameIdFormat, nameIdTransformJsonata: $nameIdTransformJsonata, publicKey: $publicKey, samlAttributeTransformJsonata: $samlAttributeTransformJsonata, spEntityId: $spEntityId, ssoEndpoint: $ssoEndpoint, updatedAt: $updatedAt)'; } 
 }
