// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_origin.dart';/// Status of the fallback origin's activation.
final class TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus {const TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus._(this.value);

factory TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus.fromJson(String json) { return switch (json) {
  'initializing' => initializing,
  'pending_deployment' => pendingDeployment,
  'pending_deletion' => pendingDeletion,
  'active' => active,
  'deployment_timed_out' => deploymentTimedOut,
  'deletion_timed_out' => deletionTimedOut,
  _ => TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus._(json),
}; }

static const TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus initializing = TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus._('initializing');

static const TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus pendingDeployment = TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus._('pending_deployment');

static const TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus pendingDeletion = TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus._('pending_deletion');

static const TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus active = TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus._('active');

static const TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus deploymentTimedOut = TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus._('deployment_timed_out');

static const TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus deletionTimedOut = TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus._('deletion_timed_out');

static const List<TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus> values = [initializing, pendingDeployment, pendingDeletion, active, deploymentTimedOut, deletionTimedOut];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus($value)'; } 
 }
/// This is the time the fallback origin was created.
extension type TlsCertificatesAndHostnamesSchemasCreatedAt(DateTime value) {
factory TlsCertificatesAndHostnamesSchemasCreatedAt.fromJson(String json) => TlsCertificatesAndHostnamesSchemasCreatedAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// This is the time the fallback origin was updated.
extension type TlsCertificatesAndHostnamesUpdatedAt(DateTime value) {
factory TlsCertificatesAndHostnamesUpdatedAt.fromJson(String json) => TlsCertificatesAndHostnamesUpdatedAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
final class TlsCertificatesAndHostnamesFallbackorigin {const TlsCertificatesAndHostnamesFallbackorigin({this.createdAt, this.errors, this.origin, this.status, this.updatedAt, });

factory TlsCertificatesAndHostnamesFallbackorigin.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesFallbackorigin(
  createdAt: json['created_at'] != null ? TlsCertificatesAndHostnamesSchemasCreatedAt.fromJson(json['created_at'] as String) : null,
  errors: (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
  origin: json['origin'] != null ? TlsCertificatesAndHostnamesOrigin.fromJson(json['origin'] as String) : null,
  status: json['status'] != null ? TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus.fromJson(json['status'] as String) : null,
  updatedAt: json['updated_at'] != null ? TlsCertificatesAndHostnamesUpdatedAt.fromJson(json['updated_at'] as String) : null,
); }

final TlsCertificatesAndHostnamesSchemasCreatedAt? createdAt;

/// These are errors that were encountered while trying to activate a fallback origin.
final List<String>? errors;

final TlsCertificatesAndHostnamesOrigin? origin;

/// Status of the fallback origin's activation.
final TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus? status;

final TlsCertificatesAndHostnamesUpdatedAt? updatedAt;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  'errors': ?errors,
  if (origin != null) 'origin': origin?.toJson(),
  if (status != null) 'status': status?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TlsCertificatesAndHostnamesFallbackorigin copyWith({TlsCertificatesAndHostnamesSchemasCreatedAt Function()? createdAt, List<String> Function()? errors, TlsCertificatesAndHostnamesOrigin Function()? origin, TlsCertificatesAndHostnamesCustomHostnameFallbackOriginComponentsSchemasStatus Function()? status, TlsCertificatesAndHostnamesUpdatedAt Function()? updatedAt, }) { return TlsCertificatesAndHostnamesFallbackorigin(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  errors: errors != null ? errors() : this.errors,
  origin: origin != null ? origin() : this.origin,
  status: status != null ? status() : this.status,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesFallbackorigin &&
          createdAt == other.createdAt &&
          listEquals(errors, other.errors) &&
          origin == other.origin &&
          status == other.status &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, Object.hashAll(errors ?? const []), origin, status, updatedAt); } 
@override String toString() { return 'TlsCertificatesAndHostnamesFallbackorigin(createdAt: $createdAt, errors: $errors, origin: $origin, status: $status, updatedAt: $updatedAt)'; } 
 }
