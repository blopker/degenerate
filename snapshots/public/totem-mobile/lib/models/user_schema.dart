// GENERATED CODE - DO NOT MODIFY BY HAND

import 'profile_avatar_type_enum.dart';final class UserSchema {const UserSchema({required this.profileAvatarType, required this.circleCount, this.name, this.slug, this.isStaff = false, this.apiKey, this.profileAvatarSeed, this.profileImage, required this.email, required this.dateCreated, });

factory UserSchema.fromJson(Map<String, dynamic> json) { return UserSchema(
  profileAvatarType: ProfileAvatarTypeEnum.fromJson(json['profile_avatar_type'] as String),
  circleCount: (json['circle_count'] as num).toInt(),
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  isStaff: json.containsKey('is_staff') ? json['is_staff'] as bool : false,
  apiKey: json['api_key'] as String?,
  profileAvatarSeed: json['profile_avatar_seed'] as String?,
  profileImage: json['profile_image'] as String?,
  email: json['email'] as String,
  dateCreated: DateTime.parse(json['date_created'] as String),
); }

final ProfileAvatarTypeEnum profileAvatarType;

final int circleCount;

final String? name;

final String? slug;

/// Designates whether the user can log into this admin site.
final bool isStaff;

final String? apiKey;

final String? profileAvatarSeed;

/// Profile image, must be under 5mb. Will be cropped to a square.
final String? profileImage;

final String email;

final DateTime dateCreated;

Map<String, dynamic> toJson() { return {
  'profile_avatar_type': profileAvatarType.toJson(),
  'circle_count': circleCount,
  'name': ?name,
  'slug': ?slug,
  'is_staff': isStaff,
  'api_key': ?apiKey,
  'profile_avatar_seed': ?profileAvatarSeed,
  'profile_image': ?profileImage,
  'email': email,
  'date_created': dateCreated.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('profile_avatar_type') &&
      json.containsKey('circle_count') && json['circle_count'] is num &&
      json.containsKey('email') && json['email'] is String &&
      json.containsKey('date_created') && json['date_created'] is String; } 
UserSchema copyWith({ProfileAvatarTypeEnum? profileAvatarType, int? circleCount, String? Function()? name, String? Function()? slug, bool Function()? isStaff, String Function()? apiKey, String Function()? profileAvatarSeed, String? Function()? profileImage, String? email, DateTime? dateCreated, }) { return UserSchema(
  profileAvatarType: profileAvatarType ?? this.profileAvatarType,
  circleCount: circleCount ?? this.circleCount,
  name: name != null ? name() : this.name,
  slug: slug != null ? slug() : this.slug,
  isStaff: isStaff != null ? isStaff() : this.isStaff,
  apiKey: apiKey != null ? apiKey() : this.apiKey,
  profileAvatarSeed: profileAvatarSeed != null ? profileAvatarSeed() : this.profileAvatarSeed,
  profileImage: profileImage != null ? profileImage() : this.profileImage,
  email: email ?? this.email,
  dateCreated: dateCreated ?? this.dateCreated,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserSchema &&
          profileAvatarType == other.profileAvatarType &&
          circleCount == other.circleCount &&
          name == other.name &&
          slug == other.slug &&
          isStaff == other.isStaff &&
          apiKey == other.apiKey &&
          profileAvatarSeed == other.profileAvatarSeed &&
          profileImage == other.profileImage &&
          email == other.email &&
          dateCreated == other.dateCreated; } 
@override int get hashCode { return Object.hash(profileAvatarType, circleCount, name, slug, isStaff, apiKey, profileAvatarSeed, profileImage, email, dateCreated); } 
@override String toString() { return 'UserSchema(profileAvatarType: $profileAvatarType, circleCount: $circleCount, name: $name, slug: $slug, isStaff: $isStaff, apiKey: $apiKey, profileAvatarSeed: $profileAvatarSeed, profileImage: $profileImage, email: $email, dateCreated: $dateCreated)'; } 
 }
