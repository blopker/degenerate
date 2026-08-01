// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'public_user_schema.dart';

@immutable
final class KeeperProfileSchema {
  const KeeperProfileSchema({
    required this.user,
    required this.circleCount,
    required this.monthJoined,
    this.bioHtml = const Omittable.absent(),
    this.username = const Omittable.absent(),
    this.title = 'Keeper',
    this.bio = const Omittable.absent(),
    this.location = 'Earth',
    this.languages = 'English',
    this.instagramUsername = const Omittable.absent(),
    this.website = const Omittable.absent(),
    this.xUsername = const Omittable.absent(),
    this.blueskyUsername = const Omittable.absent(),
  });

  factory KeeperProfileSchema.fromJson(Map<String, dynamic> json) {
    return KeeperProfileSchema(
      user: PublicUserSchema.fromJson(json['user'] as Map<String, dynamic>),
      circleCount: (json['circle_count'] as num).toInt(),
      monthJoined: json['month_joined'] as String,
      bioHtml: json.containsKey('bio_html')
          ? Omittable(json['bio_html'] as String?)
          : const Omittable.absent(),
      username: json.containsKey('username')
          ? Omittable(json['username'] as String?)
          : const Omittable.absent(),
      title: json.containsKey('title') ? json['title'] as String : 'Keeper',
      bio: json.containsKey('bio')
          ? Omittable(json['bio'] as String?)
          : const Omittable.absent(),
      location: json.containsKey('location')
          ? json['location'] as String
          : 'Earth',
      languages: json.containsKey('languages')
          ? json['languages'] as String
          : 'English',
      instagramUsername: json.containsKey('instagram_username')
          ? Omittable(json['instagram_username'] as String?)
          : const Omittable.absent(),
      website: json.containsKey('website')
          ? Omittable(json['website'] as String?)
          : const Omittable.absent(),
      xUsername: json.containsKey('x_username')
          ? Omittable(json['x_username'] as String?)
          : const Omittable.absent(),
      blueskyUsername: json.containsKey('bluesky_username')
          ? Omittable(json['bluesky_username'] as String?)
          : const Omittable.absent(),
    );
  }

  final PublicUserSchema user;

  final int circleCount;

  final String monthJoined;

  final Omittable<String?> bioHtml;

  /// Your unique username.
  final Omittable<String?> username;

  final String title;

  final Omittable<String?> bio;

  /// Where are you located? (City, State, Country)
  final String location;

  /// What languages do you speak? (English, Spanish, etc.)
  final String languages;

  /// Your Instagram username, no @ symbol
  final Omittable<String?> instagramUsername;

  /// Your personal website.
  final Omittable<String?> website;

  /// Your X username, no @ symbol
  final Omittable<String?> xUsername;

  /// Your Bluesky username, no @ symbol
  final Omittable<String?> blueskyUsername;

  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(),
      'circle_count': circleCount,
      'month_joined': monthJoined,
      if (bioHtml.isPresent) 'bio_html': bioHtml.value,
      if (username.isPresent) 'username': username.value,
      'title': title,
      if (bio.isPresent) 'bio': bio.value,
      'location': location,
      'languages': languages,
      if (instagramUsername.isPresent)
        'instagram_username': instagramUsername.value,
      if (website.isPresent) 'website': website.value,
      if (xUsername.isPresent) 'x_username': xUsername.value,
      if (blueskyUsername.isPresent) 'bluesky_username': blueskyUsername.value,
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('user') &&
        json.containsKey('circle_count') &&
        json['circle_count'] is num &&
        json.containsKey('month_joined') &&
        json['month_joined'] is String;
  }

  KeeperProfileSchema copyWith({
    PublicUserSchema? user,
    int? circleCount,
    String? monthJoined,
    Omittable<String?>? bioHtml,
    Omittable<String?>? username,
    String Function()? title,
    Omittable<String?>? bio,
    String Function()? location,
    String Function()? languages,
    Omittable<String?>? instagramUsername,
    Omittable<String?>? website,
    Omittable<String?>? xUsername,
    Omittable<String?>? blueskyUsername,
  }) {
    return KeeperProfileSchema(
      user: user ?? this.user,
      circleCount: circleCount ?? this.circleCount,
      monthJoined: monthJoined ?? this.monthJoined,
      bioHtml: bioHtml ?? this.bioHtml,
      username: username ?? this.username,
      title: title != null ? title() : this.title,
      bio: bio ?? this.bio,
      location: location != null ? location() : this.location,
      languages: languages != null ? languages() : this.languages,
      instagramUsername: instagramUsername ?? this.instagramUsername,
      website: website ?? this.website,
      xUsername: xUsername ?? this.xUsername,
      blueskyUsername: blueskyUsername ?? this.blueskyUsername,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is KeeperProfileSchema &&
            user == other.user &&
            circleCount == other.circleCount &&
            monthJoined == other.monthJoined &&
            bioHtml == other.bioHtml &&
            username == other.username &&
            title == other.title &&
            bio == other.bio &&
            location == other.location &&
            languages == other.languages &&
            instagramUsername == other.instagramUsername &&
            website == other.website &&
            xUsername == other.xUsername &&
            blueskyUsername == other.blueskyUsername;
  }

  @override
  int get hashCode {
    return Object.hash(
      user,
      circleCount,
      monthJoined,
      bioHtml,
      username,
      title,
      bio,
      location,
      languages,
      instagramUsername,
      website,
      xUsername,
      blueskyUsername,
    );
  }

  @override
  String toString() {
    return 'KeeperProfileSchema(user: $user, circleCount: $circleCount, monthJoined: $monthJoined, bioHtml: $bioHtml, username: $username, title: $title, bio: $bio, location: $location, languages: $languages, instagramUsername: $instagramUsername, website: $website, xUsername: $xUsername, blueskyUsername: $blueskyUsername)';
  }
}
