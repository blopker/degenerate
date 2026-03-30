// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Allow specific users, teams, or apps to bypass pull request requirements.
final class ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances {const ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances({this.users, this.teams, this.apps, });

factory ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances.fromJson(Map<String, dynamic> json) { return ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances(
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
ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances copyWith({List<String> Function()? users, List<String> Function()? teams, List<String> Function()? apps, }) { return ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances(
  users: users != null ? users() : this.users,
  teams: teams != null ? teams() : this.teams,
  apps: apps != null ? apps() : this.apps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances &&
          listEquals(users, other.users) &&
          listEquals(teams, other.teams) &&
          listEquals(apps, other.apps); } 
@override int get hashCode { return Object.hash(Object.hashAll(users ?? const []), Object.hashAll(teams ?? const []), Object.hashAll(apps ?? const [])); } 
@override String toString() { return 'ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsBypassPullRequestAllowances(users: $users, teams: $teams, apps: $apps)'; } 
 }
