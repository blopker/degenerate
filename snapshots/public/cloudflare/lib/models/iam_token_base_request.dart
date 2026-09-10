// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_condition.dart';import 'iam_expires_on.dart';import 'iam_name.dart';import 'iam_not_before.dart';import 'iam_policy_with_permission_groups_and_resources_request.dart';import 'iam_token_status.dart';@immutable final class IamTokenBaseRequest {const IamTokenBaseRequest({this.condition, this.expiresOn, this.name, this.notBefore, this.policies, this.status, });

factory IamTokenBaseRequest.fromJson(Map<String, dynamic> json) { return IamTokenBaseRequest(
  condition: json['condition'] != null ? IamCondition.fromJson(json['condition'] as Map<String, dynamic>) : null,
  expiresOn: json['expires_on'] != null ? IamExpiresOn.fromJson(json['expires_on'] as String) : null,
  name: json['name'] != null ? IamName.fromJson(json['name'] as String) : null,
  notBefore: json['not_before'] != null ? IamNotBefore.fromJson(json['not_before'] as String) : null,
  policies: (json['policies'] as List<dynamic>?)?.map((e) => IamPolicyWithPermissionGroupsAndResourcesRequest.fromJson(e as Map<String, dynamic>)).toList(),
  status: json['status'] != null ? IamTokenStatus.fromJson(json['status'] as String) : null,
); }

final IamCondition? condition;

/// The expiration time on or after which the JWT MUST NOT be accepted for processing.
final IamExpiresOn? expiresOn;

/// Token name.
final IamName? name;

/// The time before which the token MUST NOT be accepted for processing.
final IamNotBefore? notBefore;

/// List of access policies assigned to the token.
final List<IamPolicyWithPermissionGroupsAndResourcesRequest>? policies;

/// Status of the token.
final IamTokenStatus? status;

Map<String, dynamic> toJson() { return {
  if (condition != null) 'condition': condition?.toJson(),
  if (expiresOn != null) 'expires_on': expiresOn?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (notBefore != null) 'not_before': notBefore?.toJson(),
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'condition', 'expires_on', 'name', 'not_before', 'policies', 'status'}.contains(key)); } 
IamTokenBaseRequest copyWith({IamCondition? Function()? condition, IamExpiresOn? Function()? expiresOn, IamName? Function()? name, IamNotBefore? Function()? notBefore, List<IamPolicyWithPermissionGroupsAndResourcesRequest>? Function()? policies, IamTokenStatus? Function()? status, }) { return IamTokenBaseRequest(
  condition: condition != null ? condition() : this.condition,
  expiresOn: expiresOn != null ? expiresOn() : this.expiresOn,
  name: name != null ? name() : this.name,
  notBefore: notBefore != null ? notBefore() : this.notBefore,
  policies: policies != null ? policies() : this.policies,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamTokenBaseRequest &&
          condition == other.condition &&
          expiresOn == other.expiresOn &&
          name == other.name &&
          notBefore == other.notBefore &&
          listEquals(policies, other.policies) &&
          status == other.status; } 
@override int get hashCode { return Object.hash(condition, expiresOn, name, notBefore, Object.hashAll(policies ?? const []), status); } 
@override String toString() { return 'IamTokenBaseRequest(condition: $condition, expiresOn: $expiresOn, name: $name, notBefore: $notBefore, policies: $policies, status: $status)'; } 
 }
