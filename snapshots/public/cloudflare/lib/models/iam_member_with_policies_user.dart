// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_common_components_schemas_identifier.dart';import 'iam_email.dart';import 'iam_first_name.dart';import 'iam_last_name.dart';import 'iam_two_factor_authentication_enabled.dart';/// Details of the user associated to the membership.
@immutable final class IamMemberWithPoliciesUser {const IamMemberWithPoliciesUser({required this.email, this.firstName = const Omittable.absent(), this.id, this.lastName = const Omittable.absent(), this.twoFactorAuthenticationEnabled, });

factory IamMemberWithPoliciesUser.fromJson(Map<String, dynamic> json) { return IamMemberWithPoliciesUser(
  email: IamEmail.fromJson(json['email'] as String),
  firstName: json.containsKey('first_name') ? Omittable(json['first_name'] != null ? IamFirstName.fromJson(json['first_name'] as String) : null) : const Omittable.absent(),
  id: json['id'] != null ? IamCommonComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
  lastName: json.containsKey('last_name') ? Omittable(json['last_name'] != null ? IamLastName.fromJson(json['last_name'] as String) : null) : const Omittable.absent(),
  twoFactorAuthenticationEnabled: json['two_factor_authentication_enabled'] != null ? IamTwoFactorAuthenticationEnabled.fromJson(json['two_factor_authentication_enabled'] as bool) : null,
); }

/// The contact email address of the user.
final IamEmail email;

/// User's first name
final Omittable<IamFirstName?> firstName;

/// Identifier
final IamCommonComponentsSchemasIdentifier? id;

/// User's last name
final Omittable<IamLastName?> lastName;

final IamTwoFactorAuthenticationEnabled? twoFactorAuthenticationEnabled;

Map<String, dynamic> toJson() { return {
  'email': email.toJson(),
  if (firstName.isPresent) 'first_name': firstName.value?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (lastName.isPresent) 'last_name': lastName.value?.toJson(),
  if (twoFactorAuthenticationEnabled != null) 'two_factor_authentication_enabled': twoFactorAuthenticationEnabled?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email'); } 
IamMemberWithPoliciesUser copyWith({IamEmail? email, Omittable<IamFirstName?>? firstName, IamCommonComponentsSchemasIdentifier? Function()? id, Omittable<IamLastName?>? lastName, IamTwoFactorAuthenticationEnabled? Function()? twoFactorAuthenticationEnabled, }) { return IamMemberWithPoliciesUser(
  email: email ?? this.email,
  firstName: firstName ?? this.firstName,
  id: id != null ? id() : this.id,
  lastName: lastName ?? this.lastName,
  twoFactorAuthenticationEnabled: twoFactorAuthenticationEnabled != null ? twoFactorAuthenticationEnabled() : this.twoFactorAuthenticationEnabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamMemberWithPoliciesUser &&
          email == other.email &&
          firstName == other.firstName &&
          id == other.id &&
          lastName == other.lastName &&
          twoFactorAuthenticationEnabled == other.twoFactorAuthenticationEnabled; } 
@override int get hashCode { return Object.hash(email, firstName, id, lastName, twoFactorAuthenticationEnabled); } 
@override String toString() { return 'IamMemberWithPoliciesUser(email: $email, firstName: $firstName, id: $id, lastName: $lastName, twoFactorAuthenticationEnabled: $twoFactorAuthenticationEnabled)'; } 
 }
