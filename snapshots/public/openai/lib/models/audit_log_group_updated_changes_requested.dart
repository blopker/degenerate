// GENERATED CODE - DO NOT MODIFY BY HAND

/// The payload used to update the group.
final class AuditLogGroupUpdatedChangesRequested {const AuditLogGroupUpdatedChangesRequested({this.groupName});

factory AuditLogGroupUpdatedChangesRequested.fromJson(Map<String, dynamic> json) { return AuditLogGroupUpdatedChangesRequested(
  groupName: json['group_name'] as String?,
); }

/// The updated group name.
final String? groupName;

Map<String, dynamic> toJson() { return {
  'group_name': ?groupName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'group_name'}.contains(key)); } 
AuditLogGroupUpdatedChangesRequested copyWith({String Function()? groupName}) { return AuditLogGroupUpdatedChangesRequested(
  groupName: groupName != null ? groupName() : this.groupName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogGroupUpdatedChangesRequested &&
          groupName == other.groupName; } 
@override int get hashCode { return groupName.hashCode; } 
@override String toString() { return 'AuditLogGroupUpdatedChangesRequested(groupName: $groupName)'; } 
 }
