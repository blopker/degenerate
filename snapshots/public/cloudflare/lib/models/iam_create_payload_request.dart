// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_condition.dart';import 'iam_expires_on.dart';import 'iam_name.dart';import 'iam_not_before.dart';import 'iam_policy_with_permission_groups_and_resources_request.dart';@immutable final class IamCreatePayloadRequest {const IamCreatePayloadRequest({required this.name, required this.policies, this.condition, this.expiresOn, this.notBefore, });

factory IamCreatePayloadRequest.fromJson(Map<String, dynamic> json) {return IamCreatePayloadRequest(
  condition: json['condition'] != null ? IamCondition.fromJson(json['condition'] as Map<String, dynamic>) : null,
  expiresOn: json['expires_on'] != null ? IamExpiresOn.fromJson(json['expires_on'] as String) : null,
  name: IamName.fromJson(json['name'] as String),
  notBefore: json['not_before'] != null ? IamNotBefore.fromJson(json['not_before'] as String) : null,
  policies: (json['policies'] as List<dynamic>).map((e) => IamPolicyWithPermissionGroupsAndResourcesRequest.fromJson(e as Map<String, dynamic>)).toList(),
);}

final IamCondition? condition;

/// The expiration time on or after which the JWT MUST NOT be accepted for processing.
final IamExpiresOn? expiresOn;

/// Token name.
final IamName name;

/// The time before which the token MUST NOT be accepted for processing.
final IamNotBefore? notBefore;

/// List of access policies assigned to the token.
final List<IamPolicyWithPermissionGroupsAndResourcesRequest> policies;

Map<String, dynamic> toJson() {return {
  if (condition != null) 'condition': condition?.toJson(),
  if (expiresOn != null) 'expires_on': expiresOn?.toJson(),
  'name': name.toJson(),
  if (notBefore != null) 'not_before': notBefore?.toJson(),
  'policies': policies.map((e) => e.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('name') &&
      json.containsKey('policies');}
IamCreatePayloadRequest copyWith({IamCondition? Function()? condition, IamExpiresOn? Function()? expiresOn, IamName? name, IamNotBefore? Function()? notBefore, List<IamPolicyWithPermissionGroupsAndResourcesRequest>? policies, }) {return IamCreatePayloadRequest(
  condition: condition != null ? condition() : this.condition,
  expiresOn: expiresOn != null ? expiresOn() : this.expiresOn,
  name: name ?? this.name,
  notBefore: notBefore != null ? notBefore() : this.notBefore,
  policies: policies ?? this.policies,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is IamCreatePayloadRequest &&
          condition == other.condition &&
          expiresOn == other.expiresOn &&
          name == other.name &&
          notBefore == other.notBefore &&
          listEquals(policies, other.policies);}
@override int get hashCode {return Object.hash(condition, expiresOn, name, notBefore, Object.hashAll(policies));}
@override String toString() {return 'IamCreatePayloadRequest(condition: $condition, expiresOn: $expiresOn, name: $name, notBefore: $notBefore, policies: $policies)';}
}
