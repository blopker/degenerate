// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The details for events with this `type`.
@immutable final class AuditLogRateLimitDeleted {const AuditLogRateLimitDeleted({this.id});

factory AuditLogRateLimitDeleted.fromJson(Map<String, dynamic> json) { return AuditLogRateLimitDeleted(
  id: json['id'] as String?,
); }

/// The rate limit ID
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AuditLogRateLimitDeleted copyWith({String Function()? id}) { return AuditLogRateLimitDeleted(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogRateLimitDeleted &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AuditLogRateLimitDeleted(id: $id)'; } 
 }
