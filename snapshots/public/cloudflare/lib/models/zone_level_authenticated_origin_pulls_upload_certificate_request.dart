// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_private_key.dart';import 'tls_certificates_and_hostnames_zone_authenticated_origin_pull_components_schemas_certificate.dart';final class ZoneLevelAuthenticatedOriginPullsUploadCertificateRequest {const ZoneLevelAuthenticatedOriginPullsUploadCertificateRequest({required this.certificate, required this.privateKey, });

factory ZoneLevelAuthenticatedOriginPullsUploadCertificateRequest.fromJson(Map<String, dynamic> json) { return ZoneLevelAuthenticatedOriginPullsUploadCertificateRequest(
  certificate: TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasCertificate.fromJson(json['certificate'] as String),
  privateKey: TlsCertificatesAndHostnamesPrivateKey.fromJson(json['private_key'] as String),
); }

/// The zone's leaf certificate.
final TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasCertificate certificate;

/// The zone's private key.
final TlsCertificatesAndHostnamesPrivateKey privateKey;

Map<String, dynamic> toJson() { return {
  'certificate': certificate.toJson(),
  'private_key': privateKey.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificate') &&
      json.containsKey('private_key'); } 
ZoneLevelAuthenticatedOriginPullsUploadCertificateRequest copyWith({TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasCertificate? certificate, TlsCertificatesAndHostnamesPrivateKey? privateKey, }) { return ZoneLevelAuthenticatedOriginPullsUploadCertificateRequest(
  certificate: certificate ?? this.certificate,
  privateKey: privateKey ?? this.privateKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneLevelAuthenticatedOriginPullsUploadCertificateRequest &&
          certificate == other.certificate &&
          privateKey == other.privateKey; } 
@override int get hashCode { return Object.hash(certificate, privateKey); } 
@override String toString() { return 'ZoneLevelAuthenticatedOriginPullsUploadCertificateRequest(certificate: $certificate, privateKey: $privateKey)'; } 
 }
