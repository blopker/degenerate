// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_identifier.dart';import 'tls_certificates_and_hostnames_issuer.dart';import 'tls_certificates_and_hostnames_private_key.dart';import 'tls_certificates_and_hostnames_schemas_uploaded_on.dart';import 'tls_certificates_and_hostnames_signature.dart';import 'tls_certificates_and_hostnames_zone_authenticated_origin_pull_components_schemas_certificate.dart';import 'tls_certificates_and_hostnames_zone_authenticated_origin_pull_components_schemas_enabled.dart';import 'tls_certificates_and_hostnames_zone_authenticated_origin_pull_components_schemas_expires_on.dart';import 'tls_certificates_and_hostnames_zone_authenticated_origin_pull_components_schemas_status.dart';@immutable final class TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull {const TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull({this.certificate, this.expiresOn, this.id, this.issuer, this.signature, this.status, this.uploadedOn, this.enabled, this.privateKey, });

factory TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull(
  certificate: json['certificate'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasCertificate.fromJson(json['certificate'] as String) : null,
  expiresOn: json['expires_on'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasExpiresOn.fromJson(json['expires_on'] as String) : null,
  id: json['id'] != null ? TlsCertificatesAndHostnamesIdentifier.fromJson(json['id'] as String) : null,
  issuer: json['issuer'] != null ? TlsCertificatesAndHostnamesIssuer.fromJson(json['issuer'] as String) : null,
  signature: json['signature'] != null ? TlsCertificatesAndHostnamesSignature.fromJson(json['signature'] as String) : null,
  status: json['status'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus.fromJson(json['status'] as String) : null,
  uploadedOn: json['uploaded_on'] != null ? TlsCertificatesAndHostnamesSchemasUploadedOn.fromJson(json['uploaded_on'] as String) : null,
  enabled: json['enabled'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasEnabled.fromJson(json['enabled'] as bool) : null,
  privateKey: json['private_key'] != null ? TlsCertificatesAndHostnamesPrivateKey.fromJson(json['private_key'] as String) : null,
); }

final TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasCertificate? certificate;

final TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasExpiresOn? expiresOn;

/// Identifier.
final TlsCertificatesAndHostnamesIdentifier? id;

/// The certificate authority that issued the certificate.
final TlsCertificatesAndHostnamesIssuer? issuer;

/// The type of hash used for the certificate.
final TlsCertificatesAndHostnamesSignature? signature;

final TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus? status;

/// This is the time the certificate was uploaded.
final TlsCertificatesAndHostnamesSchemasUploadedOn? uploadedOn;

final TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasEnabled? enabled;

/// The zone's private key.
final TlsCertificatesAndHostnamesPrivateKey? privateKey;

Map<String, dynamic> toJson() { return {
  if (certificate != null) 'certificate': certificate?.toJson(),
  if (expiresOn != null) 'expires_on': expiresOn?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (issuer != null) 'issuer': issuer?.toJson(),
  if (signature != null) 'signature': signature?.toJson(),
  if (status != null) 'status': status?.toJson(),
  if (uploadedOn != null) 'uploaded_on': uploadedOn?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (privateKey != null) 'private_key': privateKey?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'certificate', 'expires_on', 'id', 'issuer', 'signature', 'status', 'uploaded_on', 'enabled', 'private_key'}.contains(key)); } 
TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull copyWith({TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasCertificate Function()? certificate, TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasExpiresOn Function()? expiresOn, TlsCertificatesAndHostnamesIdentifier Function()? id, TlsCertificatesAndHostnamesIssuer Function()? issuer, TlsCertificatesAndHostnamesSignature Function()? signature, TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus Function()? status, TlsCertificatesAndHostnamesSchemasUploadedOn Function()? uploadedOn, TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasEnabled Function()? enabled, TlsCertificatesAndHostnamesPrivateKey Function()? privateKey, }) { return TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull(
  certificate: certificate != null ? certificate() : this.certificate,
  expiresOn: expiresOn != null ? expiresOn() : this.expiresOn,
  id: id != null ? id() : this.id,
  issuer: issuer != null ? issuer() : this.issuer,
  signature: signature != null ? signature() : this.signature,
  status: status != null ? status() : this.status,
  uploadedOn: uploadedOn != null ? uploadedOn() : this.uploadedOn,
  enabled: enabled != null ? enabled() : this.enabled,
  privateKey: privateKey != null ? privateKey() : this.privateKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull &&
          certificate == other.certificate &&
          expiresOn == other.expiresOn &&
          id == other.id &&
          issuer == other.issuer &&
          signature == other.signature &&
          status == other.status &&
          uploadedOn == other.uploadedOn &&
          enabled == other.enabled &&
          privateKey == other.privateKey; } 
@override int get hashCode { return Object.hash(certificate, expiresOn, id, issuer, signature, status, uploadedOn, enabled, privateKey); } 
@override String toString() { return 'TlsCertificatesAndHostnamesZoneAuthenticatedOriginPull(certificate: $certificate, expiresOn: $expiresOn, id: $id, issuer: $issuer, signature: $signature, status: $status, uploadedOn: $uploadedOn, enabled: $enabled, privateKey: $privateKey)'; } 
 }
