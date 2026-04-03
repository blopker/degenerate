// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Pull Request Merge Result
@immutable final class PullRequestMergeResult {const PullRequestMergeResult({required this.sha, required this.merged, required this.message, });

factory PullRequestMergeResult.fromJson(Map<String, dynamic> json) { return PullRequestMergeResult(
  sha: json['sha'] as String,
  merged: json['merged'] as bool,
  message: json['message'] as String,
); }

final String sha;

final bool merged;

final String message;

Map<String, dynamic> toJson() { return {
  'sha': sha,
  'merged': merged,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('merged') && json['merged'] is bool &&
      json.containsKey('message') && json['message'] is String; } 
PullRequestMergeResult copyWith({String? sha, bool? merged, String? message, }) { return PullRequestMergeResult(
  sha: sha ?? this.sha,
  merged: merged ?? this.merged,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullRequestMergeResult &&
          sha == other.sha &&
          merged == other.merged &&
          message == other.message; } 
@override int get hashCode { return Object.hash(sha, merged, message); } 
@override String toString() { return 'PullRequestMergeResult(sha: $sha, merged: $merged, message: $message)'; } 
 }
