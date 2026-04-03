// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_common_components_schemas_identifier.dart';@immutable final class UserSOrganizationsLeaveOrganizationResponse {const UserSOrganizationsLeaveOrganizationResponse({this.id});

factory UserSOrganizationsLeaveOrganizationResponse.fromJson(Map<String, dynamic> json) { return UserSOrganizationsLeaveOrganizationResponse(
  id: json['id'] != null ? IamCommonComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
); }

/// Identifier
final IamCommonComponentsSchemasIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
UserSOrganizationsLeaveOrganizationResponse copyWith({IamCommonComponentsSchemasIdentifier Function()? id}) { return UserSOrganizationsLeaveOrganizationResponse(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserSOrganizationsLeaveOrganizationResponse &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'UserSOrganizationsLeaveOrganizationResponse(id: $id)'; } 
 }
