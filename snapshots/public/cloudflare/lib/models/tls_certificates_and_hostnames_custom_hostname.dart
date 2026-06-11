// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_components_schemas_status.dart';import 'tls_certificates_and_hostnames_created_at.dart';import 'tls_certificates_and_hostnames_custom_origin_server.dart';import 'tls_certificates_and_hostnames_custom_origin_sni.dart';import 'tls_certificates_and_hostnames_hostname.dart';import 'tls_certificates_and_hostnames_identifier.dart';import 'tls_certificates_and_hostnames_ownership_verification.dart';import 'tls_certificates_and_hostnames_ownership_verification_http.dart';import 'tls_certificates_and_hostnames_ssl.dart';@immutable final class TlsCertificatesAndHostnamesCustomHostname {const TlsCertificatesAndHostnamesCustomHostname({required this.hostname, required this.id, this.createdAt, this.customMetadata, this.customOriginServer, this.customOriginSni, this.ownershipVerification, this.ownershipVerificationHttp, this.ssl, this.status, this.verificationErrors, });

factory TlsCertificatesAndHostnamesCustomHostname.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCustomHostname(
  createdAt: json['created_at'] != null ? TlsCertificatesAndHostnamesCreatedAt.fromJson(json['created_at'] as String) : null,
  customMetadata: (json['custom_metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  customOriginServer: json['custom_origin_server'] != null ? TlsCertificatesAndHostnamesCustomOriginServer.fromJson(json['custom_origin_server'] as String) : null,
  customOriginSni: json['custom_origin_sni'] != null ? TlsCertificatesAndHostnamesCustomOriginSni.fromJson(json['custom_origin_sni'] as String) : null,
  hostname: TlsCertificatesAndHostnamesHostname.fromJson(json['hostname'] as String),
  id: TlsCertificatesAndHostnamesIdentifier.fromJson(json['id'] as String),
  ownershipVerification: json['ownership_verification'] != null ? TlsCertificatesAndHostnamesOwnershipVerification.fromJson(json['ownership_verification'] as Map<String, dynamic>) : null,
  ownershipVerificationHttp: json['ownership_verification_http'] != null ? TlsCertificatesAndHostnamesOwnershipVerificationHttp.fromJson(json['ownership_verification_http'] as Map<String, dynamic>) : null,
  ssl: json['ssl'] != null ? TlsCertificatesAndHostnamesSsl.fromJson(json['ssl'] as Map<String, dynamic>) : null,
  status: json['status'] != null ? TlsCertificatesAndHostnamesComponentsSchemasStatus.fromJson(json['status'] as String) : null,
  verificationErrors: (json['verification_errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// This is the time the hostname was created.
final TlsCertificatesAndHostnamesCreatedAt? createdAt;

final Map<String,String>? customMetadata;

final TlsCertificatesAndHostnamesCustomOriginServer? customOriginServer;

final TlsCertificatesAndHostnamesCustomOriginSni? customOriginSni;

final TlsCertificatesAndHostnamesHostname hostname;

final TlsCertificatesAndHostnamesIdentifier id;

final TlsCertificatesAndHostnamesOwnershipVerification? ownershipVerification;

final TlsCertificatesAndHostnamesOwnershipVerificationHttp? ownershipVerificationHttp;

final TlsCertificatesAndHostnamesSsl? ssl;

/// Status of the hostname's activation.
final TlsCertificatesAndHostnamesComponentsSchemasStatus? status;

final List<String>? verificationErrors;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  'custom_metadata': ?customMetadata,
  if (customOriginServer != null) 'custom_origin_server': customOriginServer?.toJson(),
  if (customOriginSni != null) 'custom_origin_sni': customOriginSni?.toJson(),
  'hostname': hostname.toJson(),
  'id': id.toJson(),
  if (ownershipVerification != null) 'ownership_verification': ownershipVerification?.toJson(),
  if (ownershipVerificationHttp != null) 'ownership_verification_http': ownershipVerificationHttp?.toJson(),
  if (ssl != null) 'ssl': ssl?.toJson(),
  if (status != null) 'status': status?.toJson(),
  'verification_errors': ?verificationErrors,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('hostname') &&
      json.containsKey('id'); } 
TlsCertificatesAndHostnamesCustomHostname copyWith({TlsCertificatesAndHostnamesCreatedAt Function()? createdAt, Map<String, String> Function()? customMetadata, TlsCertificatesAndHostnamesCustomOriginServer Function()? customOriginServer, TlsCertificatesAndHostnamesCustomOriginSni Function()? customOriginSni, TlsCertificatesAndHostnamesHostname? hostname, TlsCertificatesAndHostnamesIdentifier? id, TlsCertificatesAndHostnamesOwnershipVerification Function()? ownershipVerification, TlsCertificatesAndHostnamesOwnershipVerificationHttp Function()? ownershipVerificationHttp, TlsCertificatesAndHostnamesSsl Function()? ssl, TlsCertificatesAndHostnamesComponentsSchemasStatus Function()? status, List<String> Function()? verificationErrors, }) { return TlsCertificatesAndHostnamesCustomHostname(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  customMetadata: customMetadata != null ? customMetadata() : this.customMetadata,
  customOriginServer: customOriginServer != null ? customOriginServer() : this.customOriginServer,
  customOriginSni: customOriginSni != null ? customOriginSni() : this.customOriginSni,
  hostname: hostname ?? this.hostname,
  id: id ?? this.id,
  ownershipVerification: ownershipVerification != null ? ownershipVerification() : this.ownershipVerification,
  ownershipVerificationHttp: ownershipVerificationHttp != null ? ownershipVerificationHttp() : this.ownershipVerificationHttp,
  ssl: ssl != null ? ssl() : this.ssl,
  status: status != null ? status() : this.status,
  verificationErrors: verificationErrors != null ? verificationErrors() : this.verificationErrors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCustomHostname &&
          createdAt == other.createdAt &&
          customMetadata == other.customMetadata &&
          customOriginServer == other.customOriginServer &&
          customOriginSni == other.customOriginSni &&
          hostname == other.hostname &&
          id == other.id &&
          ownershipVerification == other.ownershipVerification &&
          ownershipVerificationHttp == other.ownershipVerificationHttp &&
          ssl == other.ssl &&
          status == other.status &&
          listEquals(verificationErrors, other.verificationErrors); } 
@override int get hashCode { return Object.hash(createdAt, customMetadata, customOriginServer, customOriginSni, hostname, id, ownershipVerification, ownershipVerificationHttp, ssl, status, Object.hashAll(verificationErrors ?? const [])); } 
@override String toString() { return 'TlsCertificatesAndHostnamesCustomHostname(createdAt: $createdAt, customMetadata: $customMetadata, customOriginServer: $customOriginServer, customOriginSni: $customOriginSni, hostname: $hostname, id: $id, ownershipVerification: $ownershipVerification, ownershipVerificationHttp: $ownershipVerificationHttp, ssl: $ssl, status: $status, verificationErrors: $verificationErrors)'; } 
 }
