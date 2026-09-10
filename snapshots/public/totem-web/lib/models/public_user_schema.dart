// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'profile_avatar_type_enum.dart';@immutable final class PublicUserSchema {const PublicUserSchema({required this.profileAvatarType, required this.dateCreated, this.circleCount = const Omittable.absent(), this.name = const Omittable.absent(), this.slug = const Omittable.absent(), this.isStaff = false, this.profileAvatarSeed, this.profileImage = const Omittable.absent(), });

factory PublicUserSchema.fromJson(Map<String, dynamic> json) { return PublicUserSchema(
  profileAvatarType: ProfileAvatarTypeEnum.fromJson(json['profile_avatar_type'] as String),
  circleCount: json.containsKey('circle_count') ? Omittable(json['circle_count'] != null ? (json['circle_count'] as num).toInt() : null) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  slug: json.containsKey('slug') ? Omittable(json['slug'] as String?) : const Omittable.absent(),
  isStaff: json.containsKey('is_staff') ? json['is_staff'] as bool : false,
  profileAvatarSeed: json['profile_avatar_seed'] as String?,
  profileImage: json.containsKey('profile_image') ? Omittable(json['profile_image'] as String?) : const Omittable.absent(),
  dateCreated: DateTime.parse(json['date_created'] as String),
); }

final ProfileAvatarTypeEnum profileAvatarType;

final Omittable<int?> circleCount;

final Omittable<String?> name;

final Omittable<String?> slug;

/// Designates whether the user can log into this admin site.
final bool isStaff;

final String? profileAvatarSeed;

/// Profile image, must be under 5mb. Will be cropped to a square.
final Omittable<String?> profileImage;

final DateTime dateCreated;

Map<String, dynamic> toJson() { return {
  'profile_avatar_type': profileAvatarType.toJson(),
  if (circleCount.isPresent) 'circle_count': circleCount.value,
  if (name.isPresent) 'name': name.value,
  if (slug.isPresent) 'slug': slug.value,
  'is_staff': isStaff,
  'profile_avatar_seed': ?profileAvatarSeed,
  if (profileImage.isPresent) 'profile_image': profileImage.value,
  'date_created': dateCreated.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('profile_avatar_type') &&
      json.containsKey('date_created') && json['date_created'] is String; } 
PublicUserSchema copyWith({ProfileAvatarTypeEnum? profileAvatarType, Omittable<int?>? circleCount, Omittable<String?>? name, Omittable<String?>? slug, bool Function()? isStaff, String? Function()? profileAvatarSeed, Omittable<String?>? profileImage, DateTime? dateCreated, }) { return PublicUserSchema(
  profileAvatarType: profileAvatarType ?? this.profileAvatarType,
  circleCount: circleCount ?? this.circleCount,
  name: name ?? this.name,
  slug: slug ?? this.slug,
  isStaff: isStaff != null ? isStaff() : this.isStaff,
  profileAvatarSeed: profileAvatarSeed != null ? profileAvatarSeed() : this.profileAvatarSeed,
  profileImage: profileImage ?? this.profileImage,
  dateCreated: dateCreated ?? this.dateCreated,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PublicUserSchema &&
          profileAvatarType == other.profileAvatarType &&
          circleCount == other.circleCount &&
          name == other.name &&
          slug == other.slug &&
          isStaff == other.isStaff &&
          profileAvatarSeed == other.profileAvatarSeed &&
          profileImage == other.profileImage &&
          dateCreated == other.dateCreated; } 
@override int get hashCode { return Object.hash(profileAvatarType, circleCount, name, slug, isStaff, profileAvatarSeed, profileImage, dateCreated); } 
@override String toString() { return 'PublicUserSchema(profileAvatarType: $profileAvatarType, circleCount: $circleCount, name: $name, slug: $slug, isStaff: $isStaff, profileAvatarSeed: $profileAvatarSeed, profileImage: $profileImage, dateCreated: $dateCreated)'; } 
 }
