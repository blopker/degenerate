// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

import 'profile_avatar_type_enum.dart';

@immutable
final class UserUpdateSchema {
  const UserUpdateSchema({
    this.name = const Omittable.absent(),
    this.email = const Omittable.absent(),
    this.timezone = const Omittable.absent(),
    this.newsletterConsent = const Omittable.absent(),
    this.profileAvatarType = const Omittable.absent(),
    this.profileAvatarSeed = const Omittable.absent(),
  });

  factory UserUpdateSchema.fromJson(Map<String, dynamic> json) {
    return UserUpdateSchema(
      name: json.containsKey('name')
          ? Omittable(json['name'] as String?)
          : const Omittable.absent(),
      email: json.containsKey('email')
          ? Omittable(json['email'] as String?)
          : const Omittable.absent(),
      timezone: json.containsKey('timezone')
          ? Omittable(json['timezone'] as String?)
          : const Omittable.absent(),
      newsletterConsent: json.containsKey('newsletter_consent')
          ? Omittable(json['newsletter_consent'] as bool?)
          : const Omittable.absent(),
      profileAvatarType: json.containsKey('profile_avatar_type')
          ? Omittable(
              json['profile_avatar_type'] != null
                  ? ProfileAvatarTypeEnum.fromJson(
                      json['profile_avatar_type'] as String,
                    )
                  : null,
            )
          : const Omittable.absent(),
      profileAvatarSeed: json.containsKey('profile_avatar_seed')
          ? Omittable(json['profile_avatar_seed'] as String?)
          : const Omittable.absent(),
    );
  }

  final Omittable<String?> name;

  final Omittable<String?> email;

  final Omittable<String?> timezone;

  final Omittable<bool?> newsletterConsent;

  final Omittable<ProfileAvatarTypeEnum?> profileAvatarType;

  /// Should be a random UUID
  final Omittable<String?> profileAvatarSeed;

  Map<String, dynamic> toJson() {
    return {
      if (name.isPresent) 'name': name.value,
      if (email.isPresent) 'email': email.value,
      if (timezone.isPresent) 'timezone': timezone.value,
      if (newsletterConsent.isPresent)
        'newsletter_consent': newsletterConsent.value,
      if (profileAvatarType.isPresent)
        'profile_avatar_type': profileAvatarType.value?.toJson(),
      if (profileAvatarSeed.isPresent)
        'profile_avatar_seed': profileAvatarSeed.value,
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.keys.any(
      (key) => const {
        'name',
        'email',
        'timezone',
        'newsletter_consent',
        'profile_avatar_type',
        'profile_avatar_seed',
      }.contains(key),
    );
  }

  UserUpdateSchema copyWith({
    Omittable<String?>? name,
    Omittable<String?>? email,
    Omittable<String?>? timezone,
    Omittable<bool?>? newsletterConsent,
    Omittable<ProfileAvatarTypeEnum?>? profileAvatarType,
    Omittable<String?>? profileAvatarSeed,
  }) {
    return UserUpdateSchema(
      name: name ?? this.name,
      email: email ?? this.email,
      timezone: timezone ?? this.timezone,
      newsletterConsent: newsletterConsent ?? this.newsletterConsent,
      profileAvatarType: profileAvatarType ?? this.profileAvatarType,
      profileAvatarSeed: profileAvatarSeed ?? this.profileAvatarSeed,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is UserUpdateSchema &&
            name == other.name &&
            email == other.email &&
            timezone == other.timezone &&
            newsletterConsent == other.newsletterConsent &&
            profileAvatarType == other.profileAvatarType &&
            profileAvatarSeed == other.profileAvatarSeed;
  }

  @override
  int get hashCode {
    return Object.hash(
      name,
      email,
      timezone,
      newsletterConsent,
      profileAvatarType,
      profileAvatarSeed,
    );
  }

  @override
  String toString() {
    return 'UserUpdateSchema(name: $name, email: $email, timezone: $timezone, newsletterConsent: $newsletterConsent, profileAvatarType: $profileAvatarType, profileAvatarSeed: $profileAvatarSeed)';
  }
}
