// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Parent container details
@immutable final class IamAccountManagedBy {const IamAccountManagedBy({this.parentOrgId, this.parentOrgName, });

factory IamAccountManagedBy.fromJson(Map<String, dynamic> json) { return IamAccountManagedBy(
  parentOrgId: json['parent_org_id'] as String?,
  parentOrgName: json['parent_org_name'] as String?,
); }

/// ID of the parent Organization, if one exists
final String? parentOrgId;

/// Name of the parent Organization, if one exists
final String? parentOrgName;

Map<String, dynamic> toJson() { return {
  'parent_org_id': ?parentOrgId,
  'parent_org_name': ?parentOrgName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'parent_org_id', 'parent_org_name'}.contains(key)); } 
IamAccountManagedBy copyWith({String Function()? parentOrgId, String Function()? parentOrgName, }) { return IamAccountManagedBy(
  parentOrgId: parentOrgId != null ? parentOrgId() : this.parentOrgId,
  parentOrgName: parentOrgName != null ? parentOrgName() : this.parentOrgName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamAccountManagedBy &&
          parentOrgId == other.parentOrgId &&
          parentOrgName == other.parentOrgName; } 
@override int get hashCode { return Object.hash(parentOrgId, parentOrgName); } 
@override String toString() { return 'IamAccountManagedBy(parentOrgId: $parentOrgId, parentOrgName: $parentOrgName)'; } 
 }
