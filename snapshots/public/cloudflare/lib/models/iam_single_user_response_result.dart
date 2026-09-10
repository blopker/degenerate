// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_country.dart';import 'iam_first_name.dart';import 'iam_last_name.dart';import 'iam_organization.dart';import 'iam_telephone.dart';import 'iam_two_factor_authentication_enabled.dart';import 'iam_zipcode.dart';/// Indicates whether two-factor authentication is required by one of the accounts that the user is a member of.
extension type const IamTwoFactorAuthenticationLocked(bool value) {
factory IamTwoFactorAuthenticationLocked.fromJson(bool json) => IamTwoFactorAuthenticationLocked(json);

bool toJson() => value;

}
@immutable final class IamSingleUserResponseResult {const IamSingleUserResponseResult({this.betas, this.country = const Omittable.absent(), this.firstName = const Omittable.absent(), this.hasBusinessZones = false, this.hasEnterpriseZones = false, this.hasProZones = false, this.id, this.lastName = const Omittable.absent(), this.organizations, this.suspended = false, this.telephone = const Omittable.absent(), this.twoFactorAuthenticationEnabled, this.twoFactorAuthenticationLocked, this.zipcode = const Omittable.absent(), });

factory IamSingleUserResponseResult.fromJson(Map<String, dynamic> json) { return IamSingleUserResponseResult(
  betas: (json['betas'] as List<dynamic>?)?.map((e) => e as String).toList(),
  country: json.containsKey('country') ? Omittable(json['country'] != null ? IamCountry.fromJson(json['country'] as String) : null) : const Omittable.absent(),
  firstName: json.containsKey('first_name') ? Omittable(json['first_name'] != null ? IamFirstName.fromJson(json['first_name'] as String) : null) : const Omittable.absent(),
  hasBusinessZones: json.containsKey('has_business_zones') ? json['has_business_zones'] as bool : false,
  hasEnterpriseZones: json.containsKey('has_enterprise_zones') ? json['has_enterprise_zones'] as bool : false,
  hasProZones: json.containsKey('has_pro_zones') ? json['has_pro_zones'] as bool : false,
  id: json['id'] as String?,
  lastName: json.containsKey('last_name') ? Omittable(json['last_name'] != null ? IamLastName.fromJson(json['last_name'] as String) : null) : const Omittable.absent(),
  organizations: (json['organizations'] as List<dynamic>?)?.map((e) => IamOrganization.fromJson(e as Map<String, dynamic>)).toList(),
  suspended: json.containsKey('suspended') ? json['suspended'] as bool : false,
  telephone: json.containsKey('telephone') ? Omittable(json['telephone'] != null ? IamTelephone.fromJson(json['telephone'] as String) : null) : const Omittable.absent(),
  twoFactorAuthenticationEnabled: json['two_factor_authentication_enabled'] != null ? IamTwoFactorAuthenticationEnabled.fromJson(json['two_factor_authentication_enabled'] as bool) : null,
  twoFactorAuthenticationLocked: json['two_factor_authentication_locked'] != null ? IamTwoFactorAuthenticationLocked.fromJson(json['two_factor_authentication_locked'] as bool) : null,
  zipcode: json.containsKey('zipcode') ? Omittable(json['zipcode'] != null ? IamZipcode.fromJson(json['zipcode'] as String) : null) : const Omittable.absent(),
); }

/// Lists the betas that the user is participating in.
final List<String>? betas;

/// The country in which the user lives.
final Omittable<IamCountry?> country;

/// User's first name
final Omittable<IamFirstName?> firstName;

/// Indicates whether user has any business zones
final bool hasBusinessZones;

/// Indicates whether user has any enterprise zones
final bool hasEnterpriseZones;

/// Indicates whether user has any pro zones
final bool hasProZones;

/// Identifier of the user.
final String? id;

/// User's last name
final Omittable<IamLastName?> lastName;

final List<IamOrganization>? organizations;

/// Indicates whether user has been suspended
final bool suspended;

final Omittable<IamTelephone?> telephone;

final IamTwoFactorAuthenticationEnabled? twoFactorAuthenticationEnabled;

final IamTwoFactorAuthenticationLocked? twoFactorAuthenticationLocked;

final Omittable<IamZipcode?> zipcode;

Map<String, dynamic> toJson() { return {
  'betas': ?betas,
  if (country.isPresent) 'country': country.value?.toJson(),
  if (firstName.isPresent) 'first_name': firstName.value?.toJson(),
  'has_business_zones': hasBusinessZones,
  'has_enterprise_zones': hasEnterpriseZones,
  'has_pro_zones': hasProZones,
  'id': ?id,
  if (lastName.isPresent) 'last_name': lastName.value?.toJson(),
  if (organizations != null) 'organizations': organizations?.map((e) => e.toJson()).toList(),
  'suspended': suspended,
  if (telephone.isPresent) 'telephone': telephone.value?.toJson(),
  if (twoFactorAuthenticationEnabled != null) 'two_factor_authentication_enabled': twoFactorAuthenticationEnabled?.toJson(),
  if (twoFactorAuthenticationLocked != null) 'two_factor_authentication_locked': twoFactorAuthenticationLocked?.toJson(),
  if (zipcode.isPresent) 'zipcode': zipcode.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'betas', 'country', 'first_name', 'has_business_zones', 'has_enterprise_zones', 'has_pro_zones', 'id', 'last_name', 'organizations', 'suspended', 'telephone', 'two_factor_authentication_enabled', 'two_factor_authentication_locked', 'zipcode'}.contains(key)); } 
IamSingleUserResponseResult copyWith({List<String>? Function()? betas, Omittable<IamCountry?>? country, Omittable<IamFirstName?>? firstName, bool Function()? hasBusinessZones, bool Function()? hasEnterpriseZones, bool Function()? hasProZones, String? Function()? id, Omittable<IamLastName?>? lastName, List<IamOrganization>? Function()? organizations, bool Function()? suspended, Omittable<IamTelephone?>? telephone, IamTwoFactorAuthenticationEnabled? Function()? twoFactorAuthenticationEnabled, IamTwoFactorAuthenticationLocked? Function()? twoFactorAuthenticationLocked, Omittable<IamZipcode?>? zipcode, }) { return IamSingleUserResponseResult(
  betas: betas != null ? betas() : this.betas,
  country: country ?? this.country,
  firstName: firstName ?? this.firstName,
  hasBusinessZones: hasBusinessZones != null ? hasBusinessZones() : this.hasBusinessZones,
  hasEnterpriseZones: hasEnterpriseZones != null ? hasEnterpriseZones() : this.hasEnterpriseZones,
  hasProZones: hasProZones != null ? hasProZones() : this.hasProZones,
  id: id != null ? id() : this.id,
  lastName: lastName ?? this.lastName,
  organizations: organizations != null ? organizations() : this.organizations,
  suspended: suspended != null ? suspended() : this.suspended,
  telephone: telephone ?? this.telephone,
  twoFactorAuthenticationEnabled: twoFactorAuthenticationEnabled != null ? twoFactorAuthenticationEnabled() : this.twoFactorAuthenticationEnabled,
  twoFactorAuthenticationLocked: twoFactorAuthenticationLocked != null ? twoFactorAuthenticationLocked() : this.twoFactorAuthenticationLocked,
  zipcode: zipcode ?? this.zipcode,
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
