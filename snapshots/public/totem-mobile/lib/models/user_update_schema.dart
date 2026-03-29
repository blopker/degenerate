// GENERATED CODE - DO NOT MODIFY BY HAND

import 'profile_avatar_type_enum.dart';final class UserUpdateSchema {const UserUpdateSchema({this.name, this.email, this.timezone, this.newsletterConsent, this.profileAvatarType, this.profileAvatarSeed, });

factory UserUpdateSchema.fromJson(Map<String, dynamic> json) { return UserUpdateSchema(
  name: json['name'] as String?,
  email: json['email'] as String?,
  timezone: json['timezone'] as String?,
  newsletterConsent: json['newsletter_consent'] as bool?,
  profileAvatarType: json['profile_avatar_type'] != null ? ProfileAvatarTypeEnum.fromJson(json['profile_avatar_type'] as String) : null,
  profileAvatarSeed: json['profile_avatar_seed'] as String?,
); }

final String? name;

final String? email;

final String? timezone;

final bool? newsletterConsent;

final ProfileAvatarTypeEnum? profileAvatarType;

/// Should be a random UUID
final String? profileAvatarSeed;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'email': ?email,
  'timezone': ?timezone,
  'newsletter_consent': ?newsletterConsent,
  if (profileAvatarType != null) 'profile_avatar_type': profileAvatarType?.toJson(),
  'profile_avatar_seed': ?profileAvatarSeed,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
UserUpdateSchema copyWith({String? Function()? name, String? Function()? email, String? Function()? timezone, bool? Function()? newsletterConsent, ProfileAvatarTypeEnum? Function()? profileAvatarType, String? Function()? profileAvatarSeed, }) { return UserUpdateSchema(
  name: name != null ? name() : this.name,
  email: email != null ? email() : this.email,
  timezone: timezone != null ? timezone() : this.timezone,
  newsletterConsent: newsletterConsent != null ? newsletterConsent() : this.newsletterConsent,
  profileAvatarType: profileAvatarType != null ? profileAvatarType() : this.profileAvatarType,
  profileAvatarSeed: profileAvatarSeed != null ? profileAvatarSeed() : this.profileAvatarSeed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserUpdateSchema &&
          name == other.name &&
          email == other.email &&
          timezone == other.timezone &&
          newsletterConsent == other.newsletterConsent &&
          profileAvatarType == other.profileAvatarType &&
          profileAvatarSeed == other.profileAvatarSeed; } 
@override int get hashCode { return Object.hash(name, email, timezone, newsletterConsent, profileAvatarType, profileAvatarSeed); } 
@override String toString() { return 'UserUpdateSchema(name: $name, email: $email, timezone: $timezone, newsletterConsent: $newsletterConsent, profileAvatarType: $profileAvatarType, profileAvatarSeed: $profileAvatarSeed)'; } 
 }
