// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The payload used to update the user.
@immutable final class AuditLogUserUpdatedChangesRequested {const AuditLogUserUpdatedChangesRequested({this.role});

factory AuditLogUserUpdatedChangesRequested.fromJson(Map<String, dynamic> json) { return AuditLogUserUpdatedChangesRequested(
  role: json['role'] as String?,
); }

/// The role of the user. Is either `owner` or `member`.
final String? role;

Map<String, dynamic> toJson() { return {
  'role': ?role,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'role'}.contains(key)); } 
AuditLogUserUpdatedChangesRequested copyWith({String Function()? role}) { return AuditLogUserUpdatedChangesRequested(
  role: role != null ? role() : this.role,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogUserUpdatedChangesRequested &&
          role == other.role; } 
@override int get hashCode { return role.hashCode; } 
@override String toString() { return 'AuditLogUserUpdatedChangesRequested(role: $role)'; } 
 }
