// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_user_group_policy_write_body.dart';final class IamUpdateUserGroupBody {const IamUpdateUserGroupBody({this.name, this.policies, });

factory IamUpdateUserGroupBody.fromJson(Map<String, dynamic> json) { return IamUpdateUserGroupBody(
  name: json['name'] as String?,
  policies: (json['policies'] as List<dynamic>?)?.map((e) => IamUserGroupPolicyWriteBody.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Name of the User group.
final String? name;

/// Policies attached to the User group
final List<IamUserGroupPolicyWriteBody>? policies;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'policies'}.contains(key)); } 
IamUpdateUserGroupBody copyWith({String Function()? name, List<IamUserGroupPolicyWriteBody> Function()? policies, }) { return IamUpdateUserGroupBody(
  name: name != null ? name() : this.name,
  policies: policies != null ? policies() : this.policies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamUpdateUserGroupBody &&
          name == other.name &&
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hash(name, Object.hashAll(policies ?? const [])); } 
@override String toString() { return 'IamUpdateUserGroupBody(name: $name, policies: $policies)'; } 
 }
