// GENERATED CODE - DO NOT MODIFY BY HAND

/// The payload used to add the user to the project.
final class AuditLogUserAddedData {const AuditLogUserAddedData({this.role});

factory AuditLogUserAddedData.fromJson(Map<String, dynamic> json) { return AuditLogUserAddedData(
  role: json['role'] as String?,
); }

/// The role of the user. Is either `owner` or `member`.
final String? role;

Map<String, dynamic> toJson() { return {
  'role': ?role,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'role'}.contains(key)); } 
AuditLogUserAddedData copyWith({String Function()? role}) { return AuditLogUserAddedData(
  role: role != null ? role() : this.role,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogUserAddedData &&
          role == other.role; } 
@override int get hashCode { return role.hashCode; } 
@override String toString() { return 'AuditLogUserAddedData(role: $role)'; } 
 }
