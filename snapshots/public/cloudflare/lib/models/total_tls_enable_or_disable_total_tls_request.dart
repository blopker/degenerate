// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_components_schemas_certificate_authority.dart';import 'tls_certificates_and_hostnames_components_schemas_enabled.dart';final class TotalTlsEnableOrDisableTotalTlsRequest {const TotalTlsEnableOrDisableTotalTlsRequest({this.certificateAuthority, required this.enabled, });

factory TotalTlsEnableOrDisableTotalTlsRequest.fromJson(Map<String, dynamic> json) { return TotalTlsEnableOrDisableTotalTlsRequest(
  certificateAuthority: json['certificate_authority'] != null ? TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority.fromJson(json['certificate_authority'] as String) : null,
  enabled: TlsCertificatesAndHostnamesComponentsSchemasEnabled.fromJson(json['enabled'] as bool),
); }

/// The Certificate Authority that Total TLS certificates will be issued through.
final TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority? certificateAuthority;

/// If enabled, Total TLS will order a hostname specific TLS certificate for any proxied A, AAAA, or CNAME record in your zone.
final TlsCertificatesAndHostnamesComponentsSchemasEnabled enabled;

Map<String, dynamic> toJson() { return {
  if (certificateAuthority != null) 'certificate_authority': certificateAuthority?.toJson(),
  'enabled': enabled.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled'); } 
TotalTlsEnableOrDisableTotalTlsRequest copyWith({TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority Function()? certificateAuthority, TlsCertificatesAndHostnamesComponentsSchemasEnabled? enabled, }) { return TotalTlsEnableOrDisableTotalTlsRequest(
  certificateAuthority: certificateAuthority != null ? certificateAuthority() : this.certificateAuthority,
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TotalTlsEnableOrDisableTotalTlsRequest &&
          certificateAuthority == other.certificateAuthority &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(certificateAuthority, enabled); } 
@override String toString() { return 'TotalTlsEnableOrDisableTotalTlsRequest(certificateAuthority: $certificateAuthority, enabled: $enabled)'; } 
 }
