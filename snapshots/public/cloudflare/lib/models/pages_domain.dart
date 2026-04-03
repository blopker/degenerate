// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_domain_name.dart';import 'pages_domain_validation_data.dart';import 'pages_domain_verification_data.dart';@immutable final class PagesDomainCertificateAuthority {const PagesDomainCertificateAuthority._(this.value);

factory PagesDomainCertificateAuthority.fromJson(String json) { return switch (json) {
  'google' => google,
  'lets_encrypt' => letsEncrypt,
  _ => PagesDomainCertificateAuthority._(json),
}; }

static const PagesDomainCertificateAuthority google = PagesDomainCertificateAuthority._('google');

static const PagesDomainCertificateAuthority letsEncrypt = PagesDomainCertificateAuthority._('lets_encrypt');

static const List<PagesDomainCertificateAuthority> values = [google, letsEncrypt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesDomainCertificateAuthority && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PagesDomainCertificateAuthority($value)'; } 
 }
@immutable final class PagesDomainStatus {const PagesDomainStatus._(this.value);

factory PagesDomainStatus.fromJson(String json) { return switch (json) {
  'initializing' => initializing,
  'pending' => pending,
  'active' => active,
  'deactivated' => deactivated,
  'blocked' => blocked,
  'error' => error,
  _ => PagesDomainStatus._(json),
}; }

static const PagesDomainStatus initializing = PagesDomainStatus._('initializing');

static const PagesDomainStatus pending = PagesDomainStatus._('pending');

static const PagesDomainStatus active = PagesDomainStatus._('active');

static const PagesDomainStatus deactivated = PagesDomainStatus._('deactivated');

static const PagesDomainStatus blocked = PagesDomainStatus._('blocked');

static const PagesDomainStatus error = PagesDomainStatus._('error');

static const List<PagesDomainStatus> values = [initializing, pending, active, deactivated, blocked, error];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesDomainStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PagesDomainStatus($value)'; } 
 }
@immutable final class PagesDomain {const PagesDomain({required this.certificateAuthority, required this.createdOn, required this.domainId, required this.id, required this.name, required this.status, required this.validationData, required this.verificationData, required this.zoneTag, });

factory PagesDomain.fromJson(Map<String, dynamic> json) { return PagesDomain(
  certificateAuthority: PagesDomainCertificateAuthority.fromJson(json['certificate_authority'] as String),
  createdOn: json['created_on'] as String,
  domainId: json['domain_id'] as String,
  id: json['id'] as String,
  name: PagesDomainName.fromJson(json['name'] as String),
  status: PagesDomainStatus.fromJson(json['status'] as String),
  validationData: PagesDomainValidationData.fromJson(json['validation_data'] as Map<String, dynamic>),
  verificationData: PagesDomainVerificationData.fromJson(json['verification_data'] as Map<String, dynamic>),
  zoneTag: json['zone_tag'] as String,
); }

final PagesDomainCertificateAuthority certificateAuthority;

final String createdOn;

final String domainId;

final String id;

final PagesDomainName name;

final PagesDomainStatus status;

final PagesDomainValidationData validationData;

final PagesDomainVerificationData verificationData;

final String zoneTag;

Map<String, dynamic> toJson() { return {
  'certificate_authority': certificateAuthority.toJson(),
  'created_on': createdOn,
  'domain_id': domainId,
  'id': id,
  'name': name.toJson(),
  'status': status.toJson(),
  'validation_data': validationData.toJson(),
  'verification_data': verificationData.toJson(),
  'zone_tag': zoneTag,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificate_authority') &&
      json.containsKey('created_on') && json['created_on'] is String &&
      json.containsKey('domain_id') && json['domain_id'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') &&
      json.containsKey('status') &&
      json.containsKey('validation_data') &&
      json.containsKey('verification_data') &&
      json.containsKey('zone_tag') && json['zone_tag'] is String; } 
PagesDomain copyWith({PagesDomainCertificateAuthority? certificateAuthority, String? createdOn, String? domainId, String? id, PagesDomainName? name, PagesDomainStatus? status, PagesDomainValidationData? validationData, PagesDomainVerificationData? verificationData, String? zoneTag, }) { return PagesDomain(
  certificateAuthority: certificateAuthority ?? this.certificateAuthority,
  createdOn: createdOn ?? this.createdOn,
  domainId: domainId ?? this.domainId,
  id: id ?? this.id,
  name: name ?? this.name,
  status: status ?? this.status,
  validationData: validationData ?? this.validationData,
  verificationData: verificationData ?? this.verificationData,
  zoneTag: zoneTag ?? this.zoneTag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDomain &&
          certificateAuthority == other.certificateAuthority &&
          createdOn == other.createdOn &&
          domainId == other.domainId &&
          id == other.id &&
          name == other.name &&
          status == other.status &&
          validationData == other.validationData &&
          verificationData == other.verificationData &&
          zoneTag == other.zoneTag; } 
@override int get hashCode { return Object.hash(certificateAuthority, createdOn, domainId, id, name, status, validationData, verificationData, zoneTag); } 
@override String toString() { return 'PagesDomain(certificateAuthority: $certificateAuthority, createdOn: $createdOn, domainId: $domainId, id: $id, name: $name, status: $status, validationData: $validationData, verificationData: $verificationData, zoneTag: $zoneTag)'; } 
 }
