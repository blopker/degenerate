// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_violation_error_metadata.dart';/// Repository rule violation was detected
@immutable final class RepositoryRuleViolationError {const RepositoryRuleViolationError({this.message, this.documentationUrl, this.status, this.metadata, });

factory RepositoryRuleViolationError.fromJson(Map<String, dynamic> json) { return RepositoryRuleViolationError(
  message: json['message'] as String?,
  documentationUrl: json['documentation_url'] as String?,
  status: json['status'] as String?,
  metadata: json['metadata'] != null ? RepositoryRuleViolationErrorMetadata.fromJson(json['metadata'] as Map<String, dynamic>) : null,
); }

final String? message;

final String? documentationUrl;

final String? status;

final RepositoryRuleViolationErrorMetadata? metadata;

Map<String, dynamic> toJson() { return {
  'message': ?message,
  'documentation_url': ?documentationUrl,
  'status': ?status,
  if (metadata != null) 'metadata': metadata?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message', 'documentation_url', 'status', 'metadata'}.contains(key)); } 
RepositoryRuleViolationError copyWith({String Function()? message, String Function()? documentationUrl, String Function()? status, RepositoryRuleViolationErrorMetadata Function()? metadata, }) { return RepositoryRuleViolationError(
  message: message != null ? message() : this.message,
  documentationUrl: documentationUrl != null ? documentationUrl() : this.documentationUrl,
  status: status != null ? status() : this.status,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleViolationError &&
          message == other.message &&
          documentationUrl == other.documentationUrl &&
          status == other.status &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(message, documentationUrl, status, metadata); } 
@override String toString() { return 'RepositoryRuleViolationError(message: $message, documentationUrl: $documentationUrl, status: $status, metadata: $metadata)'; } 
 }
