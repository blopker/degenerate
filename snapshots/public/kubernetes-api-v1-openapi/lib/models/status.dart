// GENERATED CODE - DO NOT MODIFY BY HAND

import 'list_meta.dart';import 'status_details.dart';/// Status is a return value for calls that don't return other objects.
final class Status {const Status({this.apiVersion, this.code, this.details, this.kind, this.message, this.metadata, this.reason, this.status, });

factory Status.fromJson(Map<String, dynamic> json) { return Status(
  apiVersion: json['apiVersion'] as String?,
  code: json['code'] != null ? (json['code'] as num).toInt() : null,
  details: json['details'] != null ? StatusDetails.fromJson(json['details'] as Map<String, dynamic>) : null,
  kind: json['kind'] as String?,
  message: json['message'] as String?,
  metadata: json['metadata'] != null ? ListMeta.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  reason: json['reason'] as String?,
  status: json['status'] as String?,
); }

/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
final String? apiVersion;

/// Suggested HTTP return code for this status, 0 if not set.
final int? code;

/// Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
final StatusDetails? details;

/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
final String? kind;

/// A human-readable description of the status of this operation.
final String? message;

/// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
final ListMeta? metadata;

/// A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
final String? reason;

/// Status of the operation. One of: "Success" or "Failure". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
final String? status;

Map<String, dynamic> toJson() { return {
  'apiVersion': ?apiVersion,
  'code': ?code,
  if (details != null) 'details': details?.toJson(),
  'kind': ?kind,
  'message': ?message,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'reason': ?reason,
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Status copyWith({String Function()? apiVersion, int Function()? code, StatusDetails Function()? details, String Function()? kind, String Function()? message, ListMeta Function()? metadata, String Function()? reason, String Function()? status, }) { return Status(
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  code: code != null ? code() : this.code,
  details: details != null ? details() : this.details,
  kind: kind != null ? kind() : this.kind,
  message: message != null ? message() : this.message,
  metadata: metadata != null ? metadata() : this.metadata,
  reason: reason != null ? reason() : this.reason,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Status &&
          apiVersion == other.apiVersion &&
          code == other.code &&
          details == other.details &&
          kind == other.kind &&
          message == other.message &&
          metadata == other.metadata &&
          reason == other.reason &&
          status == other.status; } 
@override int get hashCode { return Object.hash(apiVersion, code, details, kind, message, metadata, reason, status); } 
@override String toString() { return 'Status(apiVersion: $apiVersion, code: $code, details: $details, kind: $kind, message: $message, metadata: $metadata, reason: $reason, status: $status)'; } 
 }
