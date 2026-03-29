// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'integration.dart';import 'simple_user.dart';import 'team.dart';/// Allow specific users, teams, or apps to bypass pull request requirements.
final class ProtectedBranchPullRequestReviewBypassPullRequestAllowances {const ProtectedBranchPullRequestReviewBypassPullRequestAllowances({this.users, this.teams, this.apps, });

factory ProtectedBranchPullRequestReviewBypassPullRequestAllowances.fromJson(Map<String, dynamic> json) { return ProtectedBranchPullRequestReviewBypassPullRequestAllowances(
  users: (json['users'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
  teams: (json['teams'] as List<dynamic>?)?.map((e) => Team.fromJson(e as Map<String, dynamic>)).toList(),
  apps: (json['apps'] as List<dynamic>?)?.map((e) => Integration.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The list of users allowed to bypass pull request requirements.
final List<SimpleUser>? users;

/// The list of teams allowed to bypass pull request requirements.
final List<Team>? teams;

/// The list of apps allowed to bypass pull request requirements.
final List<Integration>? apps;

Map<String, dynamic> toJson() { return {
  if (users != null) 'users': users?.map((e) => e.toJson()).toList(),
  if (teams != null) 'teams': teams?.map((e) => e.toJson()).toList(),
  if (apps != null) 'apps': apps?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ProtectedBranchPullRequestReviewBypassPullRequestAllowances copyWith({List<SimpleUser> Function()? users, List<Team> Function()? teams, List<Integration> Function()? apps, }) { return ProtectedBranchPullRequestReviewBypassPullRequestAllowances(
  users: users != null ? users() : this.users,
  teams: teams != null ? teams() : this.teams,
  apps: apps != null ? apps() : this.apps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProtectedBranchPullRequestReviewBypassPullRequestAllowances &&
          listEquals(users, other.users) &&
          listEquals(teams, other.teams) &&
          listEquals(apps, other.apps); } 
@override int get hashCode { return Object.hash(Object.hashAll(users ?? const []), Object.hashAll(teams ?? const []), Object.hashAll(apps ?? const [])); } 
@override String toString() { return 'ProtectedBranchPullRequestReviewBypassPullRequestAllowances(users: $users, teams: $teams, apps: $apps)'; } 
 }
