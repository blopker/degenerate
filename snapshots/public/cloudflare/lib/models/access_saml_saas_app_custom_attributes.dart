// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_saml_saas_app_custom_attributes_source.dart';/// A globally unique name for an identity or service provider.
final class AccessSamlSaasAppCustomAttributesNameFormat {const AccessSamlSaasAppCustomAttributesNameFormat._(this.value);

factory AccessSamlSaasAppCustomAttributesNameFormat.fromJson(String json) { return switch (json) {
  'urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified' => urnoasisnamestcSaml20attrnameFormatunspecified,
  'urn:oasis:names:tc:SAML:2.0:attrname-format:basic' => urnoasisnamestcSaml20attrnameFormatbasic,
  'urn:oasis:names:tc:SAML:2.0:attrname-format:uri' => urnoasisnamestcSaml20attrnameFormaturi,
  _ => AccessSamlSaasAppCustomAttributesNameFormat._(json),
}; }

static const AccessSamlSaasAppCustomAttributesNameFormat urnoasisnamestcSaml20attrnameFormatunspecified = AccessSamlSaasAppCustomAttributesNameFormat._('urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified');

static const AccessSamlSaasAppCustomAttributesNameFormat urnoasisnamestcSaml20attrnameFormatbasic = AccessSamlSaasAppCustomAttributesNameFormat._('urn:oasis:names:tc:SAML:2.0:attrname-format:basic');

static const AccessSamlSaasAppCustomAttributesNameFormat urnoasisnamestcSaml20attrnameFormaturi = AccessSamlSaasAppCustomAttributesNameFormat._('urn:oasis:names:tc:SAML:2.0:attrname-format:uri');

static const List<AccessSamlSaasAppCustomAttributesNameFormat> values = [urnoasisnamestcSaml20attrnameFormatunspecified, urnoasisnamestcSaml20attrnameFormatbasic, urnoasisnamestcSaml20attrnameFormaturi];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSamlSaasAppCustomAttributesNameFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSamlSaasAppCustomAttributesNameFormat($value)'; } 
 }
final class AccessSamlSaasAppCustomAttributes {const AccessSamlSaasAppCustomAttributes({this.friendlyName, this.name, this.nameFormat, this.$required, this.source, });

factory AccessSamlSaasAppCustomAttributes.fromJson(Map<String, dynamic> json) { return AccessSamlSaasAppCustomAttributes(
  friendlyName: json['friendly_name'] as String?,
  name: json['name'] as String?,
  nameFormat: json['name_format'] != null ? AccessSamlSaasAppCustomAttributesNameFormat.fromJson(json['name_format'] as String) : null,
  $required: json['required'] as bool?,
  source: json['source'] != null ? AccessSamlSaasAppCustomAttributesSource.fromJson(json['source'] as Map<String, dynamic>) : null,
); }

/// The SAML FriendlyName of the attribute.
final String? friendlyName;

/// The name of the attribute.
final String? name;

/// A globally unique name for an identity or service provider.
final AccessSamlSaasAppCustomAttributesNameFormat? nameFormat;

/// If the attribute is required when building a SAML assertion.
final bool? $required;

final AccessSamlSaasAppCustomAttributesSource? source;

Map<String, dynamic> toJson() { return {
  'friendly_name': ?friendlyName,
  'name': ?name,
  if (nameFormat != null) 'name_format': nameFormat?.toJson(),
  'required': ?$required,
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessSamlSaasAppCustomAttributes copyWith({String Function()? friendlyName, String Function()? name, AccessSamlSaasAppCustomAttributesNameFormat Function()? nameFormat, bool Function()? $required, AccessSamlSaasAppCustomAttributesSource Function()? source, }) { return AccessSamlSaasAppCustomAttributes(
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  name: name != null ? name() : this.name,
  nameFormat: nameFormat != null ? nameFormat() : this.nameFormat,
  $required: $required != null ? $required() : this.$required,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSamlSaasAppCustomAttributes &&
          friendlyName == other.friendlyName &&
          name == other.name &&
          nameFormat == other.nameFormat &&
          $required == other.$required &&
          source == other.source; } 
@override int get hashCode { return Object.hash(friendlyName, name, nameFormat, $required, source); } 
@override String toString() { return 'AccessSamlSaasAppCustomAttributes(friendlyName: $friendlyName, name: $name, nameFormat: $nameFormat, \$required: ${$required}, source: $source)'; } 
 }
