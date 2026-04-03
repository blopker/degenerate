// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'audit_log_rate_limit_updated_changes_requested.dart';/// The details for events with this `type`.
@immutable final class AuditLogRateLimitUpdated {const AuditLogRateLimitUpdated({this.id, this.changesRequested, });

factory AuditLogRateLimitUpdated.fromJson(Map<String, dynamic> json) { return AuditLogRateLimitUpdated(
  id: json['id'] as String?,
  changesRequested: json['changes_requested'] != null ? AuditLogRateLimitUpdatedChangesRequested.fromJson(json['changes_requested'] as Map<String, dynamic>) : null,
); }

/// The rate limit ID
final String? id;

/// The payload used to update the rate limits.
final AuditLogRateLimitUpdatedChangesRequested? changesRequested;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (changesRequested != null) 'changes_requested': changesRequested?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'changes_requested'}.contains(key)); } 
AuditLogRateLimitUpdated copyWith({String Function()? id, AuditLogRateLimitUpdatedChangesRequested Function()? changesRequested, }) { return AuditLogRateLimitUpdated(
  id: id != null ? id() : this.id,
  changesRequested: changesRequested != null ? changesRequested() : this.changesRequested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogRateLimitUpdated &&
          id == other.id &&
          changesRequested == other.changesRequested; } 
@override int get hashCode { return Object.hash(id, changesRequested); } 
@override String toString() { return 'AuditLogRateLimitUpdated(id: $id, changesRequested: $changesRequested)'; } 
 }
