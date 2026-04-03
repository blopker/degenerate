// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_schemas_csr.dart';import 'tls_certificates_and_hostnames_schemas_validity_days.dart';@immutable final class ClientCertificateForAZoneCreateClientCertificateRequest {const ClientCertificateForAZoneCreateClientCertificateRequest({required this.csr, required this.validityDays, });

factory ClientCertificateForAZoneCreateClientCertificateRequest.fromJson(Map<String, dynamic> json) { return ClientCertificateForAZoneCreateClientCertificateRequest(
  csr: TlsCertificatesAndHostnamesSchemasCsr.fromJson(json['csr'] as String),
  validityDays: TlsCertificatesAndHostnamesSchemasValidityDays.fromJson(json['validity_days'] as num),
); }

/// The Certificate Signing Request (CSR). Must be newline-encoded.
final TlsCertificatesAndHostnamesSchemasCsr csr;

/// The number of days the Client Certificate will be valid after the issued_on date
final TlsCertificatesAndHostnamesSchemasValidityDays validityDays;

Map<String, dynamic> toJson() { return {
  'csr': csr.toJson(),
  'validity_days': validityDays.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('csr') &&
      json.containsKey('validity_days'); } 
ClientCertificateForAZoneCreateClientCertificateRequest copyWith({TlsCertificatesAndHostnamesSchemasCsr? csr, TlsCertificatesAndHostnamesSchemasValidityDays? validityDays, }) { return ClientCertificateForAZoneCreateClientCertificateRequest(
  csr: csr ?? this.csr,
  validityDays: validityDays ?? this.validityDays,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ClientCertificateForAZoneCreateClientCertificateRequest &&
          csr == other.csr &&
          validityDays == other.validityDays; } 
@override int get hashCode { return Object.hash(csr, validityDays); } 
@override String toString() { return 'ClientCertificateForAZoneCreateClientCertificateRequest(csr: $csr, validityDays: $validityDays)'; } 
 }
