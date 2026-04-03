// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_components_schemas_hostname.dart';import 'tls_certificates_and_hostnames_hostname_tls_settings_components_schemas_created_at.dart';import 'tls_certificates_and_hostnames_hostname_tls_settings_components_schemas_status.dart';import 'tls_certificates_and_hostnames_hostname_tls_settings_components_schemas_updated_at.dart';import 'tls_certificates_and_hostnames_value.dart';@immutable final class TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult {const TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult({this.createdAt, this.hostname, this.status, this.updatedAt, this.value, });

factory TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult(
  createdAt: json['created_at'] != null ? TlsCertificatesAndHostnamesHostnameTlsSettingsComponentsSchemasCreatedAt.fromJson(json['created_at'] as String) : null,
  hostname: json['hostname'] != null ? TlsCertificatesAndHostnamesComponentsSchemasHostname.fromJson(json['hostname'] as String) : null,
  status: json['status'] != null ? TlsCertificatesAndHostnamesHostnameTlsSettingsComponentsSchemasStatus.fromJson(json['status'] as String) : null,
  updatedAt: json['updated_at'] != null ? TlsCertificatesAndHostnamesHostnameTlsSettingsComponentsSchemasUpdatedAt.fromJson(json['updated_at'] as String) : null,
  value: json['value'] != null ? OneOf3.parse(json['value'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => TlsCertificatesAndHostnamesValueVariant2.fromJson(v as String), fromC: (v) => TlsCertificatesAndHostnamesValueVariant3.fromJson(v as String),) : null,
); }

/// This is the time the tls setting was originally created for this hostname.
final TlsCertificatesAndHostnamesHostnameTlsSettingsComponentsSchemasCreatedAt? createdAt;

/// The hostname for which the tls settings are set.
final TlsCertificatesAndHostnamesComponentsSchemasHostname? hostname;

/// Deployment status for the given tls setting.
final TlsCertificatesAndHostnamesHostnameTlsSettingsComponentsSchemasStatus? status;

/// This is the time the tls setting was updated.
final TlsCertificatesAndHostnamesHostnameTlsSettingsComponentsSchemasUpdatedAt? updatedAt;

final TlsCertificatesAndHostnamesValue? value;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (hostname != null) 'hostname': hostname?.toJson(),
  if (status != null) 'status': status?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'hostname', 'status', 'updated_at', 'value'}.contains(key)); } 
TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult copyWith({TlsCertificatesAndHostnamesHostnameTlsSettingsComponentsSchemasCreatedAt Function()? createdAt, TlsCertificatesAndHostnamesComponentsSchemasHostname Function()? hostname, TlsCertificatesAndHostnamesHostnameTlsSettingsComponentsSchemasStatus Function()? status, TlsCertificatesAndHostnamesHostnameTlsSettingsComponentsSchemasUpdatedAt Function()? updatedAt, TlsCertificatesAndHostnamesValue Function()? value, }) { return TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  hostname: hostname != null ? hostname() : this.hostname,
  status: status != null ? status() : this.status,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult &&
          createdAt == other.createdAt &&
          hostname == other.hostname &&
          status == other.status &&
          updatedAt == other.updatedAt &&
          value == other.value; } 
@override int get hashCode { return Object.hash(createdAt, hostname, status, updatedAt, value); } 
@override String toString() { return 'TlsCertificatesAndHostnamesPerHostnameSettingsResponseCollectionResult(createdAt: $createdAt, hostname: $hostname, status: $status, updatedAt: $updatedAt, value: $value)'; } 
 }
