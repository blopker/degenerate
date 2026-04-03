// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_common_components_schemas_identifier.dart';@immutable final class AccountUserGroupMembersUpdateRequest {const AccountUserGroupMembersUpdateRequest({required this.id});

factory AccountUserGroupMembersUpdateRequest.fromJson(Map<String, dynamic> json) { return AccountUserGroupMembersUpdateRequest(
  id: IamCommonComponentsSchemasIdentifier.fromJson(json['id'] as String),
); }

/// Identifier
final IamCommonComponentsSchemasIdentifier id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
AccountUserGroupMembersUpdateRequest copyWith({IamCommonComponentsSchemasIdentifier? id}) { return AccountUserGroupMembersUpdateRequest(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountUserGroupMembersUpdateRequest &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AccountUserGroupMembersUpdateRequest(id: $id)'; } 
 }
