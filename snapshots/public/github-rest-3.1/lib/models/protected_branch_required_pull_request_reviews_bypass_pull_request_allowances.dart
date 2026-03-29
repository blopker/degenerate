// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'integration.dart';import 'simple_user.dart';import 'team.dart';final class ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances {const ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances({required this.users, required this.teams, this.apps, });

factory ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances.fromJson(Map<String, dynamic> json) { return ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances(
  users: (json['users'] as List<dynamic>).map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
  teams: (json['teams'] as List<dynamic>).map((e) => Team.fromJson(e as Map<String, dynamic>)).toList(),
  apps: (json['apps'] as List<dynamic>?)?.map((e) => Integration.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<SimpleUser> users;

final List<Team> teams;

final List<Integration>? apps;

Map<String, dynamic> toJson() { return {
  'users': users.map((e) => e.toJson()).toList(),
  'teams': teams.map((e) => e.toJson()).toList(),
  if (apps != null) 'apps': apps?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('users') &&
      json.containsKey('teams'); } 
ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances copyWith({List<SimpleUser>? users, List<Team>? teams, List<Integration> Function()? apps, }) { return ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances(
  users: users ?? this.users,
  teams: teams ?? this.teams,
  apps: apps != null ? apps() : this.apps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances &&
          listEquals(users, other.users) &&
          listEquals(teams, other.teams) &&
          listEquals(apps, other.apps); } 
@override int get hashCode { return Object.hash(Object.hashAll(users), Object.hashAll(teams), Object.hashAll(apps ?? const [])); } 
@override String toString() { return 'ProtectedBranchRequiredPullRequestReviewsBypassPullRequestAllowances(users: $users, teams: $teams, apps: $apps)'; } 
 }
