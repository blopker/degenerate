// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_identifier.dart';import 'tls_certificates_and_hostnames_issuer.dart';import 'tls_certificates_and_hostnames_schemas_uploaded_on.dart';import 'tls_certificates_and_hostnames_signature.dart';import 'tls_certificates_and_hostnames_zone_authenticated_origin_pull_components_schemas_certificate.dart';import 'tls_certificates_and_hostnames_zone_authenticated_origin_pull_components_schemas_expires_on.dart';import 'tls_certificates_and_hostnames_zone_authenticated_origin_pull_components_schemas_status.dart';@immutable final class TlsCertificatesAndHostnamesCertificateObject {const TlsCertificatesAndHostnamesCertificateObject({this.certificate, this.expiresOn, this.id, this.issuer, this.signature, this.status, this.uploadedOn, });

factory TlsCertificatesAndHostnamesCertificateObject.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCertificateObject(
  certificate: json['certificate'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasCertificate.fromJson(json['certificate'] as String) : null,
  expiresOn: json['expires_on'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasExpiresOn.fromJson(json['expires_on'] as String) : null,
  id: json['id'] != null ? TlsCertificatesAndHostnamesIdentifier.fromJson(json['id'] as String) : null,
  issuer: json['issuer'] != null ? TlsCertificatesAndHostnamesIssuer.fromJson(json['issuer'] as String) : null,
  signature: json['signature'] != null ? TlsCertificatesAndHostnamesSignature.fromJson(json['signature'] as String) : null,
  status: json['status'] != null ? TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus.fromJson(json['status'] as String) : null,
  uploadedOn: json['uploaded_on'] != null ? TlsCertificatesAndHostnamesSchemasUploadedOn.fromJson(json['uploaded_on'] as String) : null,
); }

final TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasCertificate? certificate;

final TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasExpiresOn? expiresOn;

final TlsCertificatesAndHostnamesIdentifier? id;

final TlsCertificatesAndHostnamesIssuer? issuer;

final TlsCertificatesAndHostnamesSignature? signature;

final TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus? status;

final TlsCertificatesAndHostnamesSchemasUploadedOn? uploadedOn;

Map<String, dynamic> toJson() { return {
  if (certificate != null) 'certificate': certificate?.toJson(),
  if (expiresOn != null) 'expires_on': expiresOn?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (issuer != null) 'issuer': issuer?.toJson(),
  if (signature != null) 'signature': signature?.toJson(),
  if (status != null) 'status': status?.toJson(),
  if (uploadedOn != null) 'uploaded_on': uploadedOn?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'certificate', 'expires_on', 'id', 'issuer', 'signature', 'status', 'uploaded_on'}.contains(key)); } 
TlsCertificatesAndHostnamesCertificateObject copyWith({TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasCertificate Function()? certificate, TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasExpiresOn Function()? expiresOn, TlsCertificatesAndHostnamesIdentifier Function()? id, TlsCertificatesAndHostnamesIssuer Function()? issuer, TlsCertificatesAndHostnamesSignature Function()? signature, TlsCertificatesAndHostnamesZoneAuthenticatedOriginPullComponentsSchemasStatus Function()? status, TlsCertificatesAndHostnamesSchemasUploadedOn Function()? uploadedOn, }) { return TlsCertificatesAndHostnamesCertificateObject(
  certificate: certificate != null ? certificate() : this.certificate,
  expiresOn: expiresOn != null ? expiresOn() : this.expiresOn,
  id: id != null ? id() : this.id,
  issuer: issuer != null ? issuer() : this.issuer,
  signature: signature != null ? signature() : this.signature,
  status: status != null ? status() : this.status,
  uploadedOn: uploadedOn != null ? uploadedOn() : this.uploadedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCertificateObject &&
          certificate == other.certificate &&
          expiresOn == other.expiresOn &&
          id == other.id &&
          issuer == other.issuer &&
          signature == other.signature &&
          status == other.status &&
          uploadedOn == other.uploadedOn; } 
@override int get hashCode { return Object.hash(certificate, expiresOn, id, issuer, signature, status, uploadedOn); } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificateObject(certificate: $certificate, expiresOn: $expiresOn, id: $id, issuer: $issuer, signature: $signature, status: $status, uploadedOn: $uploadedOn)'; } 
 }
