// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The payload used to create the service account.
@immutable final class AuditLogServiceAccountCreatedData {const AuditLogServiceAccountCreatedData({this.role});

factory AuditLogServiceAccountCreatedData.fromJson(Map<String, dynamic> json) { return AuditLogServiceAccountCreatedData(
  role: json['role'] as String?,
); }

/// The role of the service account. Is either `owner` or `member`.
final String? role;

Map<String, dynamic> toJson() { return {
  'role': ?role,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'role'}.contains(key)); } 
AuditLogServiceAccountCreatedData copyWith({String Function()? role}) { return AuditLogServiceAccountCreatedData(
  role: role != null ? role() : this.role,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogServiceAccountCreatedData &&
          role == other.role; } 
@override int get hashCode { return role.hashCode; } 
@override String toString() { return 'AuditLogServiceAccountCreatedData(role: $role)'; } 
 }
