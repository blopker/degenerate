// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the type of certificate in the trust chain.
@immutable final class RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType {const RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType._(this.value);

factory RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType.fromJson(String json) { return switch (json) {
  'ROOT_CERTIFICATE' => rootCertificate,
  'INTERMEDIATE_CERTIFICATE' => intermediateCertificate,
  _ => RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType._(json),
}; }

static const RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType rootCertificate = RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType._('ROOT_CERTIFICATE');

static const RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType intermediateCertificate = RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType._('INTERMEDIATE_CERTIFICATE');

static const List<RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType> values = [rootCertificate, intermediateCertificate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType($value)'; } 
 }
/// The current revocation status of a Certificate Authority (CA) certificate.
@immutable final class RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus {const RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus._(this.value);

factory RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus.fromJson(String json) { return switch (json) {
  'NOT_REVOKED' => notRevoked,
  'REVOKED' => revoked,
  'PARENT_CERT_REVOKED' => parentCertRevoked,
  _ => RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus._(json),
}; }

static const RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus notRevoked = RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus._('NOT_REVOKED');

static const RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus revoked = RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus._('REVOKED');

static const RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus parentCertRevoked = RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus._('PARENT_CERT_REVOKED');

static const List<RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus> values = [notRevoked, revoked, parentCertRevoked];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus($value)'; } 
 }
@immutable final class RadarGetCertificateAuthoritiesResponseResultCertificateAuthorities {const RadarGetCertificateAuthoritiesResponseResultCertificateAuthorities({required this.certificateRecordType, required this.country, required this.countryName, required this.name, required this.owner, required this.parentName, required this.parentSha256Fingerprint, required this.revocationStatus, required this.sha256Fingerprint, });

factory RadarGetCertificateAuthoritiesResponseResultCertificateAuthorities.fromJson(Map<String, dynamic> json) { return RadarGetCertificateAuthoritiesResponseResultCertificateAuthorities(
  certificateRecordType: RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType.fromJson(json['certificateRecordType'] as String),
  country: json['country'] as String,
  countryName: json['countryName'] as String,
  name: json['name'] as String,
  owner: json['owner'] as String,
  parentName: json['parentName'] as String,
  parentSha256Fingerprint: json['parentSha256Fingerprint'] as String,
  revocationStatus: RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus.fromJson(json['revocationStatus'] as String),
  sha256Fingerprint: json['sha256Fingerprint'] as String,
); }

/// Specifies the type of certificate in the trust chain.
final RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType certificateRecordType;

/// The two-letter ISO country code where the CA organization is based.
final String country;

/// The full country name corresponding to the country code.
final String countryName;

/// The full name of the certificate authority (CA).
final String name;

/// The organization that owns and operates the CA.
final String owner;

/// The name of the parent/root certificate authority that issued this intermediate certificate.
final String parentName;

/// The SHA-256 fingerprint of the parent certificate.
final String parentSha256Fingerprint;

/// The current revocation status of a Certificate Authority (CA) certificate.
final RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus revocationStatus;

/// The SHA-256 fingerprint of the intermediate certificate.
final String sha256Fingerprint;

Map<String, dynamic> toJson() { return {
  'certificateRecordType': certificateRecordType.toJson(),
  'country': country,
  'countryName': countryName,
  'name': name,
  'owner': owner,
  'parentName': parentName,
  'parentSha256Fingerprint': parentSha256Fingerprint,
  'revocationStatus': revocationStatus.toJson(),
  'sha256Fingerprint': sha256Fingerprint,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificateRecordType') &&
      json.containsKey('country') && json['country'] is String &&
      json.containsKey('countryName') && json['countryName'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('owner') && json['owner'] is String &&
      json.containsKey('parentName') && json['parentName'] is String &&
      json.containsKey('parentSha256Fingerprint') && json['parentSha256Fingerprint'] is String &&
      json.containsKey('revocationStatus') &&
      json.containsKey('sha256Fingerprint') && json['sha256Fingerprint'] is String; } 
RadarGetCertificateAuthoritiesResponseResultCertificateAuthorities copyWith({RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesCertificateRecordType? certificateRecordType, String? country, String? countryName, String? name, String? owner, String? parentName, String? parentSha256Fingerprint, RadarGetCertificateAuthoritiesResponseResultCertificateAuthoritiesRevocationStatus? revocationStatus, String? sha256Fingerprint, }) { return RadarGetCertificateAuthoritiesResponseResultCertificateAuthorities(
  certificateRecordType: certificateRecordType ?? this.certificateRecordType,
  country: country ?? this.country,
  countryName: countryName ?? this.countryName,
  name: name ?? this.name,
  owner: owner ?? this.owner,
  parentName: parentName ?? this.parentName,
  parentSha256Fingerprint: parentSha256Fingerprint ?? this.parentSha256Fingerprint,
  revocationStatus: revocationStatus ?? this.revocationStatus,
  sha256Fingerprint: sha256Fingerprint ?? this.sha256Fingerprint,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCertificateAuthoritiesResponseResultCertificateAuthorities &&
          certificateRecordType == other.certificateRecordType &&
          country == other.country &&
          countryName == other.countryName &&
          name == other.name &&
          owner == other.owner &&
          parentName == other.parentName &&
          parentSha256Fingerprint == other.parentSha256Fingerprint &&
          revocationStatus == other.revocationStatus &&
          sha256Fingerprint == other.sha256Fingerprint; } 
@override int get hashCode { return Object.hash(certificateRecordType, country, countryName, name, owner, parentName, parentSha256Fingerprint, revocationStatus, sha256Fingerprint); } 
@override String toString() { return 'RadarGetCertificateAuthoritiesResponseResultCertificateAuthorities(certificateRecordType: $certificateRecordType, country: $country, countryName: $countryName, name: $name, owner: $owner, parentName: $parentName, parentSha256Fingerprint: $parentSha256Fingerprint, revocationStatus: $revocationStatus, sha256Fingerprint: $sha256Fingerprint)'; } 
 }
