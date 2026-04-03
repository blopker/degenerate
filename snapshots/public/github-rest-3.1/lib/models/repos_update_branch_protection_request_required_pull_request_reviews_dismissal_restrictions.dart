// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specify which users, teams, and apps can dismiss pull request reviews. Pass an empty `dismissal_restrictions` object to disable. User and team `dismissal_restrictions` are only available for organization-owned repositories. Omit this parameter for personal repositories.
@immutable final class ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsDismissalRestrictions {const ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsDismissalRestrictions({this.users, this.teams, this.apps, });

factory ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsDismissalRestrictions.fromJson(Map<String, dynamic> json) { return ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsDismissalRestrictions(
  users: (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
  teams: (json['teams'] as List<dynamic>?)?.map((e) => e as String).toList(),
  apps: (json['apps'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The list of user `login`s with dismissal access
final List<String>? users;

/// The list of team `slug`s with dismissal access
final List<String>? teams;

/// The list of app `slug`s with dismissal access
final List<String>? apps;

Map<String, dynamic> toJson() { return {
  'users': ?users,
  'teams': ?teams,
  'apps': ?apps,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'users', 'teams', 'apps'}.contains(key)); } 
ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsDismissalRestrictions copyWith({List<String> Function()? users, List<String> Function()? teams, List<String> Function()? apps, }) { return ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsDismissalRestrictions(
  users: users != null ? users() : this.users,
  teams: teams != null ? teams() : this.teams,
  apps: apps != null ? apps() : this.apps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsDismissalRestrictions &&
          listEquals(users, other.users) &&
          listEquals(teams, other.teams) &&
          listEquals(apps, other.apps); } 
@override int get hashCode { return Object.hash(Object.hashAll(users ?? const []), Object.hashAll(teams ?? const []), Object.hashAll(apps ?? const [])); } 
@override String toString() { return 'ReposUpdateBranchProtectionRequestRequiredPullRequestReviewsDismissalRestrictions(users: $users, teams: $teams, apps: $apps)'; } 
 }
