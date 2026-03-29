// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_condition.dart';import 'iam_expires_on.dart';import 'iam_name.dart';import 'iam_not_before.dart';import 'iam_policy_with_permission_groups_and_resources.dart';import 'iam_token_identifier.dart';/// The time on which the token was created.
extension type IamIssuedOn(DateTime value) {
factory IamIssuedOn.fromJson(String json) => IamIssuedOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// Last time the token was used.
extension type IamLastUsedOn(DateTime value) {
factory IamLastUsedOn.fromJson(String json) => IamLastUsedOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// Last time the token was modified.
extension type IamModifiedOn(DateTime value) {
factory IamModifiedOn.fromJson(String json) => IamModifiedOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// Status of the token.
final class IamTokenStatus {const IamTokenStatus._(this.value);

factory IamTokenStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'disabled' => disabled,
  'expired' => expired,
  _ => IamTokenStatus._(json),
}; }

static const IamTokenStatus active = IamTokenStatus._('active');

static const IamTokenStatus disabled = IamTokenStatus._('disabled');

static const IamTokenStatus expired = IamTokenStatus._('expired');

static const List<IamTokenStatus> values = [active, disabled, expired];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IamTokenStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IamTokenStatus($value)'; } 
 }
final class IamTokenBase {const IamTokenBase({this.condition, this.expiresOn, this.id, this.issuedOn, this.lastUsedOn, this.modifiedOn, this.name, this.notBefore, this.policies, this.status, });

factory IamTokenBase.fromJson(Map<String, dynamic> json) { return IamTokenBase(
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
); }

final IamCondition? condition;

/// The expiration time on or after which the JWT MUST NOT be accepted for processing.
final IamExpiresOn? expiresOn;

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

final List<IamPolicyWithPermissionGroupsAndResources>? policies;

final IamTokenStatus? status;

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
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'condition', 'expires_on', 'id', 'issued_on', 'last_used_on', 'modified_on', 'name', 'not_before', 'policies', 'status'}.contains(key)); } 
IamTokenBase copyWith({IamCondition Function()? condition, IamExpiresOn Function()? expiresOn, IamTokenIdentifier Function()? id, IamIssuedOn Function()? issuedOn, IamLastUsedOn Function()? lastUsedOn, IamModifiedOn Function()? modifiedOn, IamName Function()? name, IamNotBefore Function()? notBefore, List<IamPolicyWithPermissionGroupsAndResources> Function()? policies, IamTokenStatus Function()? status, }) { return IamTokenBase(
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
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamTokenBase &&
          condition == other.condition &&
          expiresOn == other.expiresOn &&
          id == other.id &&
          issuedOn == other.issuedOn &&
          lastUsedOn == other.lastUsedOn &&
          modifiedOn == other.modifiedOn &&
          name == other.name &&
          notBefore == other.notBefore &&
          listEquals(policies, other.policies) &&
          status == other.status; } 
@override int get hashCode { return Object.hash(condition, expiresOn, id, issuedOn, lastUsedOn, modifiedOn, name, notBefore, Object.hashAll(policies ?? const []), status); } 
@override String toString() { return 'IamTokenBase(condition: $condition, expiresOn: $expiresOn, id: $id, issuedOn: $issuedOn, lastUsedOn: $lastUsedOn, modifiedOn: $modifiedOn, name: $name, notBefore: $notBefore, policies: $policies, status: $status)'; } 
 }
