// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_components_schemas_certificate_authority.dart';import 'tls_certificates_and_hostnames_components_schemas_enabled.dart';/// The validity period in days for the certificates ordered via Total TLS.
final class TlsCertificatesAndHostnamesValidityPeriod {const TlsCertificatesAndHostnamesValidityPeriod._(this.value);

factory TlsCertificatesAndHostnamesValidityPeriod.fromJson(int json) { return switch (json) {
  90 => $90,
  _ => TlsCertificatesAndHostnamesValidityPeriod._(json),
}; }

static const TlsCertificatesAndHostnamesValidityPeriod $90 = TlsCertificatesAndHostnamesValidityPeriod._(90);

static const List<TlsCertificatesAndHostnamesValidityPeriod> values = [$90];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesValidityPeriod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesValidityPeriod($value)'; } 
 }
final class TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult {const TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult({this.certificateAuthority, this.enabled, this.validityPeriod, });

factory TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult(
  certificateAuthority: json['certificate_authority'] != null ? TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority.fromJson(json['certificate_authority'] as String) : null,
  enabled: json['enabled'] != null ? TlsCertificatesAndHostnamesComponentsSchemasEnabled.fromJson(json['enabled'] as bool) : null,
  validityPeriod: json['validity_period'] != null ? TlsCertificatesAndHostnamesValidityPeriod.fromJson((json['validity_period'] as num).toInt()) : null,
); }

/// The Certificate Authority that Total TLS certificates will be issued through.
final TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority? certificateAuthority;

/// If enabled, Total TLS will order a hostname specific TLS certificate for any proxied A, AAAA, or CNAME record in your zone.
final TlsCertificatesAndHostnamesComponentsSchemasEnabled? enabled;

final TlsCertificatesAndHostnamesValidityPeriod? validityPeriod;

Map<String, dynamic> toJson() { return {
  if (certificateAuthority != null) 'certificate_authority': certificateAuthority?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (validityPeriod != null) 'validity_period': validityPeriod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'certificate_authority', 'enabled', 'validity_period'}.contains(key)); } 
TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult copyWith({TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority Function()? certificateAuthority, TlsCertificatesAndHostnamesComponentsSchemasEnabled Function()? enabled, TlsCertificatesAndHostnamesValidityPeriod Function()? validityPeriod, }) { return TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult(
  certificateAuthority: certificateAuthority != null ? certificateAuthority() : this.certificateAuthority,
  enabled: enabled != null ? enabled() : this.enabled,
  validityPeriod: validityPeriod != null ? validityPeriod() : this.validityPeriod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult &&
          certificateAuthority == other.certificateAuthority &&
          enabled == other.enabled &&
          validityPeriod == other.validityPeriod; } 
@override int get hashCode { return Object.hash(certificateAuthority, enabled, validityPeriod); } 
@override String toString() { return 'TlsCertificatesAndHostnamesTotalTlsSettingsResponseResult(certificateAuthority: $certificateAuthority, enabled: $enabled, validityPeriod: $validityPeriod)'; } 
 }
