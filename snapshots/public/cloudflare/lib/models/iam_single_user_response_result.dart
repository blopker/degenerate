// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_country.dart';import 'iam_first_name.dart';import 'iam_last_name.dart';import 'iam_organization.dart';import 'iam_telephone.dart';import 'iam_two_factor_authentication_enabled.dart';import 'iam_zipcode.dart';/// Indicates whether two-factor authentication is required by one of the accounts that the user is a member of.
extension type const IamTwoFactorAuthenticationLocked(bool value) {
factory IamTwoFactorAuthenticationLocked.fromJson(bool json) => IamTwoFactorAuthenticationLocked(json);

bool toJson() => value;

}
@immutable final class IamSingleUserResponseResult {const IamSingleUserResponseResult({this.betas, this.country, this.firstName, this.hasBusinessZones = false, this.hasEnterpriseZones = false, this.hasProZones = false, this.id, this.lastName, this.organizations, this.suspended = false, this.telephone, this.twoFactorAuthenticationEnabled, this.twoFactorAuthenticationLocked, this.zipcode, });

factory IamSingleUserResponseResult.fromJson(Map<String, dynamic> json) { return IamSingleUserResponseResult(
  betas: (json['betas'] as List<dynamic>?)?.map((e) => e as String).toList(),
  country: json['country'] != null ? IamCountry.fromJson(json['country'] as String) : null,
  firstName: json['first_name'] != null ? IamFirstName.fromJson(json['first_name'] as String) : null,
  hasBusinessZones: json.containsKey('has_business_zones') ? json['has_business_zones'] as bool : false,
  hasEnterpriseZones: json.containsKey('has_enterprise_zones') ? json['has_enterprise_zones'] as bool : false,
  hasProZones: json.containsKey('has_pro_zones') ? json['has_pro_zones'] as bool : false,
  id: json['id'] as String?,
  lastName: json['last_name'] != null ? IamLastName.fromJson(json['last_name'] as String) : null,
  organizations: (json['organizations'] as List<dynamic>?)?.map((e) => IamOrganization.fromJson(e as Map<String, dynamic>)).toList(),
  suspended: json.containsKey('suspended') ? json['suspended'] as bool : false,
  telephone: json['telephone'] != null ? IamTelephone.fromJson(json['telephone'] as String) : null,
  twoFactorAuthenticationEnabled: json['two_factor_authentication_enabled'] != null ? IamTwoFactorAuthenticationEnabled.fromJson(json['two_factor_authentication_enabled'] as bool) : null,
  twoFactorAuthenticationLocked: json['two_factor_authentication_locked'] != null ? IamTwoFactorAuthenticationLocked.fromJson(json['two_factor_authentication_locked'] as bool) : null,
  zipcode: json['zipcode'] != null ? IamZipcode.fromJson(json['zipcode'] as String) : null,
); }

/// Lists the betas that the user is participating in.
final List<String>? betas;

/// The country in which the user lives.
final IamCountry? country;

/// User's first name
final IamFirstName? firstName;

/// Indicates whether user has any business zones
final bool hasBusinessZones;

/// Indicates whether user has any enterprise zones
final bool hasEnterpriseZones;

/// Indicates whether user has any pro zones
final bool hasProZones;

/// Identifier of the user.
final String? id;

/// User's last name
final IamLastName? lastName;

final List<IamOrganization>? organizations;

/// Indicates whether user has been suspended
final bool suspended;

final IamTelephone? telephone;

final IamTwoFactorAuthenticationEnabled? twoFactorAuthenticationEnabled;

final IamTwoFactorAuthenticationLocked? twoFactorAuthenticationLocked;

final IamZipcode? zipcode;

Map<String, dynamic> toJson() { return {
  'betas': ?betas,
  if (country != null) 'country': country?.toJson(),
  if (firstName != null) 'first_name': firstName?.toJson(),
  'has_business_zones': hasBusinessZones,
  'has_enterprise_zones': hasEnterpriseZones,
  'has_pro_zones': hasProZones,
  'id': ?id,
  if (lastName != null) 'last_name': lastName?.toJson(),
  if (organizations != null) 'organizations': organizations?.map((e) => e.toJson()).toList(),
  'suspended': suspended,
  if (telephone != null) 'telephone': telephone?.toJson(),
  if (twoFactorAuthenticationEnabled != null) 'two_factor_authentication_enabled': twoFactorAuthenticationEnabled?.toJson(),
  if (twoFactorAuthenticationLocked != null) 'two_factor_authentication_locked': twoFactorAuthenticationLocked?.toJson(),
  if (zipcode != null) 'zipcode': zipcode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'betas', 'country', 'first_name', 'has_business_zones', 'has_enterprise_zones', 'has_pro_zones', 'id', 'last_name', 'organizations', 'suspended', 'telephone', 'two_factor_authentication_enabled', 'two_factor_authentication_locked', 'zipcode'}.contains(key)); } 
IamSingleUserResponseResult copyWith({List<String> Function()? betas, IamCountry? Function()? country, IamFirstName? Function()? firstName, bool Function()? hasBusinessZones, bool Function()? hasEnterpriseZones, bool Function()? hasProZones, String Function()? id, IamLastName? Function()? lastName, List<IamOrganization> Function()? organizations, bool Function()? suspended, IamTelephone? Function()? telephone, IamTwoFactorAuthenticationEnabled Function()? twoFactorAuthenticationEnabled, IamTwoFactorAuthenticationLocked Function()? twoFactorAuthenticationLocked, IamZipcode? Function()? zipcode, }) { return IamSingleUserResponseResult(
  betas: betas != null ? betas() : this.betas,
  country: country != null ? country() : this.country,
  firstName: firstName != null ? firstName() : this.firstName,
  hasBusinessZones: hasBusinessZones != null ? hasBusinessZones() : this.hasBusinessZones,
  hasEnterpriseZones: hasEnterpriseZones != null ? hasEnterpriseZones() : this.hasEnterpriseZones,
  hasProZones: hasProZones != null ? hasProZones() : this.hasProZones,
  id: id != null ? id() : this.id,
  lastName: lastName != null ? lastName() : this.lastName,
  organizations: organizations != null ? organizations() : this.organizations,
  suspended: suspended != null ? suspended() : this.suspended,
  telephone: telephone != null ? telephone() : this.telephone,
  twoFactorAuthenticationEnabled: twoFactorAuthenticationEnabled != null ? twoFactorAuthenticationEnabled() : this.twoFactorAuthenticationEnabled,
  twoFactorAuthenticationLocked: twoFactorAuthenticationLocked != null ? twoFactorAuthenticationLocked() : this.twoFactorAuthenticationLocked,
  zipcode: zipcode != null ? zipcode() : this.zipcode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSingleUserResponseResult &&
          listEquals(betas, other.betas) &&
          country == other.country &&
          firstName == other.firstName &&
          hasBusinessZones == other.hasBusinessZones &&
          hasEnterpriseZones == other.hasEnterpriseZones &&
          hasProZones == other.hasProZones &&
          id == other.id &&
          lastName == other.lastName &&
          listEquals(organizations, other.organizations) &&
          suspended == other.suspended &&
          telephone == other.telephone &&
          twoFactorAuthenticationEnabled == other.twoFactorAuthenticationEnabled &&
          twoFactorAuthenticationLocked == other.twoFactorAuthenticationLocked &&
          zipcode == other.zipcode; } 
@override int get hashCode { return Object.hash(Object.hashAll(betas ?? const []), country, firstName, hasBusinessZones, hasEnterpriseZones, hasProZones, id, lastName, Object.hashAll(organizations ?? const []), suspended, telephone, twoFactorAuthenticationEnabled, twoFactorAuthenticationLocked, zipcode); } 
@override String toString() { return 'IamSingleUserResponseResult(betas: $betas, country: $country, firstName: $firstName, hasBusinessZones: $hasBusinessZones, hasEnterpriseZones: $hasEnterpriseZones, hasProZones: $hasProZones, id: $id, lastName: $lastName, organizations: $organizations, suspended: $suspended, telephone: $telephone, twoFactorAuthenticationEnabled: $twoFactorAuthenticationEnabled, twoFactorAuthenticationLocked: $twoFactorAuthenticationLocked, zipcode: $zipcode)'; } 
 }
