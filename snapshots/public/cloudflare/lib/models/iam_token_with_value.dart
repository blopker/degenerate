// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_condition.dart';import 'iam_expires_on.dart';import 'iam_issued_on.dart';import 'iam_last_used_on.dart';import 'iam_modified_on.dart';import 'iam_name.dart';import 'iam_not_before.dart';import 'iam_policy_with_permission_groups_and_resources.dart';import 'iam_token_identifier.dart';import 'iam_token_status.dart';import 'iam_value.dart';final class IamTokenWithValue {const IamTokenWithValue({this.condition, this.expiresOn, this.id, this.issuedOn, this.lastUsedOn, this.modifiedOn, this.name, this.notBefore, this.policies, this.status, this.value, });

factory IamTokenWithValue.fromJson(Map<String, dynamic> json) { return IamTokenWithValue(
  condition: json['condition'] != null ? IamCondition.fromJson(json['condition'] as Map<String, dynamic>) : null,
  expiresOn: json['expires_on'] != null ? IamExpiresOn.fromJson(json['expires_on'] as String) : null,
  id: json['id'] != null ? IamTokenIdentifier.fromJson(json['id'] as String) : null,
  issuedOn: json['issued_on'] != null ? IamIssuedOn.fromJson(json['issued_on'] as String) : null,
  lastUsedOn: json['last_used_on'] != null ? IamLastUsedOn.fromJson(json['last_used_on'] as String) : null,
  modifiedOn: json['modified_on'] != null ? IamModifiedOn.fromJson(json['modified_on'] as String) : null,
  name: json['name'] != null ? IamName.fromJson(json['name'] as String) : null,
  notBefore: json['not_before'] != null ? IamNotBefore.fromJson(json['not_before'] as String) : null,
  policies: (json['policies'] as List<dynamic>?)?.map((e) => IamPolicyWithPermissionGroupsAndResources.fromJson(e as Map<String, dynamic>)).toList(),
  status: json['status'] != null ? IamTokenStatus.fromJson(json['status'] as String) : null,
  value: json['value'] != null ? IamValue.fromJson(json['value'] as String) : null,
); }

final IamCondition? condition;

/// The expiration time on or after which the JWT MUST NOT be accepted for processing.
final IamExpiresOn? expiresOn;

/// Token identifier tag.
final IamTokenIdentifier? id;

/// The time on which the token was created.
final IamIssuedOn? issuedOn;

/// Last time the token was used.
final IamLastUsedOn? lastUsedOn;

/// Last time the token was modified.
final IamModifiedOn? modifiedOn;

/// Token name.
final IamName? name;

/// The time before which the token MUST NOT be accepted for processing.
final IamNotBefore? notBefore;

/// List of access policies assigned to the token.
final List<IamPolicyWithPermissionGroupsAndResources>? policies;

/// Status of the token.
final IamTokenStatus? status;

final IamValue? value;

Map<String, dynamic> toJson() { return {
  if (condition != null) 'condition': condition?.toJson(),
  if (expiresOn != null) 'expires_on': expiresOn?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (issuedOn != null) 'issued_on': issuedOn?.toJson(),
  if (lastUsedOn != null) 'last_used_on': lastUsedOn?.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (notBefore != null) 'not_before': notBefore?.toJson(),
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
  if (status != null) 'status': status?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'condition', 'expires_on', 'id', 'issued_on', 'last_used_on', 'modified_on', 'name', 'not_before', 'policies', 'status', 'value'}.contains(key)); } 
IamTokenWithValue copyWith({IamCondition Function()? condition, IamExpiresOn Function()? expiresOn, IamTokenIdentifier Function()? id, IamIssuedOn Function()? issuedOn, IamLastUsedOn Function()? lastUsedOn, IamModifiedOn Function()? modifiedOn, IamName Function()? name, IamNotBefore Function()? notBefore, List<IamPolicyWithPermissionGroupsAndResources> Function()? policies, IamTokenStatus Function()? status, IamValue Function()? value, }) { return IamTokenWithValue(
  condition: condition != null ? condition() : this.condition,
  expiresOn: expiresOn != null ? expiresOn() : this.expiresOn,
  id: id != null ? id() : this.id,
  issuedOn: issuedOn != null ? issuedOn() : this.issuedOn,
  lastUsedOn: lastUsedOn != null ? lastUsedOn() : this.lastUsedOn,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  name: name != null ? name() : this.name,
  notBefore: notBefore != null ? notBefore() : this.notBefore,
  policies: policies != null ? policies() : this.policies,
  status: status != null ? status() : this.status,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamTokenWithValue &&
          condition == other.condition &&
          expiresOn == other.expiresOn &&
          id == other.id &&
          issuedOn == other.issuedOn &&
          lastUsedOn == other.lastUsedOn &&
          modifiedOn == other.modifiedOn &&
          name == other.name &&
          notBefore == other.notBefore &&
          listEquals(policies, other.policies) &&
          status == other.status &&
          value == other.value; } 
@override int get hashCode { return Object.hash(condition, expiresOn, id, issuedOn, lastUsedOn, modifiedOn, name, notBefore, Object.hashAll(policies ?? const []), status, value); } 
@override String toString() { return 'IamTokenWithValue(condition: $condition, expiresOn: $expiresOn, id: $id, issuedOn: $issuedOn, lastUsedOn: $lastUsedOn, modifiedOn: $modifiedOn, name: $name, notBefore: $notBefore, policies: $policies, status: $status, value: $value)'; } 
 }
