// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pull_request_minimal_head_repo.dart';@immutable final class PullRequestMinimalHead {const PullRequestMinimalHead({required this.ref, required this.sha, required this.repo, });

factory PullRequestMinimalHead.fromJson(Map<String, dynamic> json) { return PullRequestMinimalHead(
  ref: json['ref'] as String,
  sha: json['sha'] as String,
  repo: PullRequestMinimalHeadRepo.fromJson(json['repo'] as Map<String, dynamic>),
); }

final String ref;

final String sha;

final PullRequestMinimalHeadRepo repo;

Map<String, dynamic> toJson() { return {
  'ref': ref,
  'sha': sha,
  'repo': repo.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('repo'); } 
PullRequestMinimalHead copyWith({String? ref, String? sha, PullRequestMinimalHeadRepo? repo, }) { return PullRequestMinimalHead(
  ref: ref ?? this.ref,
  sha: sha ?? this.sha,
  repo: repo ?? this.repo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullRequestMinimalHead &&
          ref == other.ref &&
          sha == other.sha &&
          repo == other.repo; } 
@override int get hashCode { return Object.hash(ref, sha, repo); } 
@override String toString() { return 'PullRequestMinimalHead(ref: $ref, sha: $sha, repo: $repo)'; } 
 }
