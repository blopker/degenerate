// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Allow specific users, teams, or apps to bypass pull request requirements.
@immutable final class ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances {const ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances({this.users, this.teams, this.apps, });

factory ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances.fromJson(Map<String, dynamic> json) { return ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances(
  users: (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
  teams: (json['teams'] as List<dynamic>?)?.map((e) => e as String).toList(),
  apps: (json['apps'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The list of user `login`s allowed to bypass pull request requirements.
final List<String>? users;

/// The list of team `slug`s allowed to bypass pull request requirements.
final List<String>? teams;

/// The list of app `slug`s allowed to bypass pull request requirements.
final List<String>? apps;

Map<String, dynamic> toJson() { return {
  'users': ?users,
  'teams': ?teams,
  'apps': ?apps,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'users', 'teams', 'apps'}.contains(key)); } 
ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances copyWith({List<String> Function()? users, List<String> Function()? teams, List<String> Function()? apps, }) { return ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances(
  users: users != null ? users() : this.users,
  teams: teams != null ? teams() : this.teams,
  apps: apps != null ? apps() : this.apps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances &&
          listEquals(users, other.users) &&
          listEquals(teams, other.teams) &&
          listEquals(apps, other.apps); } 
@override int get hashCode { return Object.hash(Object.hashAll(users ?? const []), Object.hashAll(teams ?? const []), Object.hashAll(apps ?? const [])); } 
@override String toString() { return 'ReposUpdatePullRequestReviewProtectionRequestBypassPullRequestAllowances(users: $users, teams: $teams, apps: $apps)'; } 
 }
