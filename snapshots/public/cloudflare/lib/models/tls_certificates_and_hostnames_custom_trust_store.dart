// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_components_schemas_certificate.dart';import 'tls_certificates_and_hostnames_identifier.dart';import 'tls_certificates_and_hostnames_issuer.dart';import 'tls_certificates_and_hostnames_schemas_expires_on.dart';import 'tls_certificates_and_hostnames_signature.dart';import 'tls_certificates_and_hostnames_uploaded_on.dart';/// Status of the zone's custom SSL.
@immutable final class TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus {const TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus._(this.value);

factory TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus.fromJson(String json) { return switch (json) {
  'initializing' => initializing,
  'pending_deployment' => pendingDeployment,
  'active' => active,
  'pending_deletion' => pendingDeletion,
  'deleted' => deleted,
  'expired' => expired,
  _ => TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus._(json),
}; }

static const TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus initializing = TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus._('initializing');

static const TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus pendingDeployment = TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus._('pending_deployment');

static const TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus active = TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus._('active');

static const TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus pendingDeletion = TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus._('pending_deletion');

static const TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus deleted = TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus._('deleted');

static const TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus expired = TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus._('expired');

static const List<TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus> values = [initializing, pendingDeployment, active, pendingDeletion, deleted, expired];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus($value)'; } 
 }
/// When the certificate was last modified.
extension type TlsCertificatesAndHostnamesSchemasUpdatedAt(DateTime value) {
factory TlsCertificatesAndHostnamesSchemasUpdatedAt.fromJson(String json) => TlsCertificatesAndHostnamesSchemasUpdatedAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
@immutable final class TlsCertificatesAndHostnamesCustomTrustStore {const TlsCertificatesAndHostnamesCustomTrustStore({required this.certificate, required this.expiresOn, required this.id, required this.issuer, required this.signature, required this.status, required this.updatedAt, required this.uploadedOn, });

factory TlsCertificatesAndHostnamesCustomTrustStore.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCustomTrustStore(
  certificate: TlsCertificatesAndHostnamesComponentsSchemasCertificate.fromJson(json['certificate'] as String),
  expiresOn: TlsCertificatesAndHostnamesSchemasExpiresOn.fromJson(json['expires_on'] as String),
  id: TlsCertificatesAndHostnamesIdentifier.fromJson(json['id'] as String),
  issuer: TlsCertificatesAndHostnamesIssuer.fromJson(json['issuer'] as String),
  signature: TlsCertificatesAndHostnamesSignature.fromJson(json['signature'] as String),
  status: TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus.fromJson(json['status'] as String),
  updatedAt: TlsCertificatesAndHostnamesSchemasUpdatedAt.fromJson(json['updated_at'] as String),
  uploadedOn: TlsCertificatesAndHostnamesUploadedOn.fromJson(json['uploaded_on'] as String),
); }

/// The zone's SSL certificate or certificate and the intermediate(s).
final TlsCertificatesAndHostnamesComponentsSchemasCertificate certificate;

final TlsCertificatesAndHostnamesSchemasExpiresOn expiresOn;

final TlsCertificatesAndHostnamesIdentifier id;

final TlsCertificatesAndHostnamesIssuer issuer;

final TlsCertificatesAndHostnamesSignature signature;

final TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus status;

final TlsCertificatesAndHostnamesSchemasUpdatedAt updatedAt;

final TlsCertificatesAndHostnamesUploadedOn uploadedOn;

Map<String, dynamic> toJson() { return {
  'certificate': certificate.toJson(),
  'expires_on': expiresOn.toJson(),
  'id': id.toJson(),
  'issuer': issuer.toJson(),
  'signature': signature.toJson(),
  'status': status.toJson(),
  'updated_at': updatedAt.toJson(),
  'uploaded_on': uploadedOn.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificate') &&
      json.containsKey('expires_on') &&
      json.containsKey('id') &&
      json.containsKey('issuer') &&
      json.containsKey('signature') &&
      json.containsKey('status') &&
      json.containsKey('updated_at') &&
      json.containsKey('uploaded_on'); } 
TlsCertificatesAndHostnamesCustomTrustStore copyWith({TlsCertificatesAndHostnamesComponentsSchemasCertificate? certificate, TlsCertificatesAndHostnamesSchemasExpiresOn? expiresOn, TlsCertificatesAndHostnamesIdentifier? id, TlsCertificatesAndHostnamesIssuer? issuer, TlsCertificatesAndHostnamesSignature? signature, TlsCertificatesAndHostnamesCustomTrustStoreComponentsSchemasStatus? status, TlsCertificatesAndHostnamesSchemasUpdatedAt? updatedAt, TlsCertificatesAndHostnamesUploadedOn? uploadedOn, }) { return TlsCertificatesAndHostnamesCustomTrustStore(
  certificate: certificate ?? this.certificate,
  expiresOn: expiresOn ?? this.expiresOn,
  id: id ?? this.id,
  issuer: issuer ?? this.issuer,
  signature: signature ?? this.signature,
  status: status ?? this.status,
  updatedAt: updatedAt ?? this.updatedAt,
  uploadedOn: uploadedOn ?? this.uploadedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCustomTrustStore &&
          certificate == other.certificate &&
          expiresOn == other.expiresOn &&
          id == other.id &&
          issuer == other.issuer &&
          signature == other.signature &&
          status == other.status &&
          updatedAt == other.updatedAt &&
          uploadedOn == other.uploadedOn; } 
@override int get hashCode { return Object.hash(certificate, expiresOn, id, issuer, signature, status, updatedAt, uploadedOn); } 
@override String toString() { return 'TlsCertificatesAndHostnamesCustomTrustStore(certificate: $certificate, expiresOn: $expiresOn, id: $id, issuer: $issuer, signature: $signature, status: $status, updatedAt: $updatedAt, uploadedOn: $uploadedOn)'; } 
 }
