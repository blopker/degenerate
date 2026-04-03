// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information about the created group.
@immutable final class AuditLogGroupCreatedData {const AuditLogGroupCreatedData({this.groupName});

factory AuditLogGroupCreatedData.fromJson(Map<String, dynamic> json) { return AuditLogGroupCreatedData(
  groupName: json['group_name'] as String?,
); }

/// The group name.
final String? groupName;

Map<String, dynamic> toJson() { return {
  'group_name': ?groupName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'group_name'}.contains(key)); } 
AuditLogGroupCreatedData copyWith({String Function()? groupName}) { return AuditLogGroupCreatedData(
  groupName: groupName != null ? groupName() : this.groupName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogGroupCreatedData &&
          groupName == other.groupName; } 
@override int get hashCode { return groupName.hashCode; } 
@override String toString() { return 'AuditLogGroupCreatedData(groupName: $groupName)'; } 
 }
