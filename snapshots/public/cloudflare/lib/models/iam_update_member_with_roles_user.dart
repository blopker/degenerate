// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_common_components_schemas_identifier.dart';import 'iam_email.dart';import 'iam_first_name.dart';import 'iam_last_name.dart';import 'iam_two_factor_authentication_enabled.dart';/// Details of the user associated to the membership.
@immutable final class IamUpdateMemberWithRolesUser {const IamUpdateMemberWithRolesUser({required this.email, this.firstName, this.id, this.lastName, this.twoFactorAuthenticationEnabled, });

factory IamUpdateMemberWithRolesUser.fromJson(Map<String, dynamic> json) { return IamUpdateMemberWithRolesUser(
  email: IamEmail.fromJson(json['email'] as String),
  firstName: json['first_name'] != null ? IamFirstName.fromJson(json['first_name'] as String) : null,
  id: json['id'] != null ? IamCommonComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
  lastName: json['last_name'] != null ? IamLastName.fromJson(json['last_name'] as String) : null,
  twoFactorAuthenticationEnabled: json['two_factor_authentication_enabled'] != null ? IamTwoFactorAuthenticationEnabled.fromJson(json['two_factor_authentication_enabled'] as bool) : null,
); }

/// The contact email address of the user.
final IamEmail email;

/// User's first name
final IamFirstName? firstName;

/// Identifier
final IamCommonComponentsSchemasIdentifier? id;

/// User's last name
final IamLastName? lastName;

/// Indicates whether two-factor authentication is enabled for the user account. Does not apply to API authentication.
final IamTwoFactorAuthenticationEnabled? twoFactorAuthenticationEnabled;

Map<String, dynamic> toJson() { return {
  'email': email.toJson(),
  if (firstName != null) 'first_name': firstName?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (lastName != null) 'last_name': lastName?.toJson(),
  if (twoFactorAuthenticationEnabled != null) 'two_factor_authentication_enabled': twoFactorAuthenticationEnabled?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email'); } 
IamUpdateMemberWithRolesUser copyWith({IamEmail? email, IamFirstName? Function()? firstName, IamCommonComponentsSchemasIdentifier Function()? id, IamLastName? Function()? lastName, IamTwoFactorAuthenticationEnabled Function()? twoFactorAuthenticationEnabled, }) { return IamUpdateMemberWithRolesUser(
  email: email ?? this.email,
  firstName: firstName != null ? firstName() : this.firstName,
  id: id != null ? id() : this.id,
  lastName: lastName != null ? lastName() : this.lastName,
  twoFactorAuthenticationEnabled: twoFactorAuthenticationEnabled != null ? twoFactorAuthenticationEnabled() : this.twoFactorAuthenticationEnabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamUpdateMemberWithRolesUser &&
          email == other.email &&
          firstName == other.firstName &&
          id == other.id &&
          lastName == other.lastName &&
          twoFactorAuthenticationEnabled == other.twoFactorAuthenticationEnabled; } 
@override int get hashCode { return Object.hash(email, firstName, id, lastName, twoFactorAuthenticationEnabled); } 
@override String toString() { return 'IamUpdateMemberWithRolesUser(email: $email, firstName: $firstName, id: $id, lastName: $lastName, twoFactorAuthenticationEnabled: $twoFactorAuthenticationEnabled)'; } 
 }
