// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository.dart';import 'simple_user.dart';@immutable final class PullRequestSimpleBase {const PullRequestSimpleBase({required this.label, required this.ref, required this.repo, required this.sha, required this.user, });

factory PullRequestSimpleBase.fromJson(Map<String, dynamic> json) { return PullRequestSimpleBase(
  label: json['label'] as String,
  ref: json['ref'] as String,
  repo: Repository.fromJson(json['repo'] as Map<String, dynamic>),
  sha: json['sha'] as String,
  user: json['user'] != null ? SimpleUser.fromJson(json['user'] as Map<String, dynamic>) : null,
); }

final String label;

final String ref;

final Repository repo;

final String sha;

final SimpleUser? user;

Map<String, dynamic> toJson() { return {
  'label': label,
  'ref': ref,
  'repo': repo.toJson(),
  'sha': sha,
  if (user != null) 'user': user?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('label') && json['label'] is String &&
      json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('repo') &&
      json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('user'); } 
PullRequestSimpleBase copyWith({String? label, String? ref, Repository? repo, String? sha, SimpleUser? Function()? user, }) { return PullRequestSimpleBase(
  label: label ?? this.label,
  ref: ref ?? this.ref,
  repo: repo ?? this.repo,
  sha: sha ?? this.sha,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullRequestSimpleBase &&
          label == other.label &&
          ref == other.ref &&
          repo == other.repo &&
          sha == other.sha &&
          user == other.user; } 
@override int get hashCode { return Object.hash(label, ref, repo, sha, user); } 
@override String toString() { return 'PullRequestSimpleBase(label: $label, ref: $ref, repo: $repo, sha: $sha, user: $user)'; } 
 }
