// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'git_tag_object.dart';import 'git_tag_tagger.dart';import 'verification.dart';/// Metadata for a Git tag
@immutable final class GitTag {const GitTag({required this.nodeId, required this.tag, required this.sha, required this.url, required this.message, required this.tagger, required this.object, this.verification, });

factory GitTag.fromJson(Map<String, dynamic> json) { return GitTag(
  nodeId: json['node_id'] as String,
  tag: json['tag'] as String,
  sha: json['sha'] as String,
  url: Uri.parse(json['url'] as String),
  message: json['message'] as String,
  tagger: GitTagTagger.fromJson(json['tagger'] as Map<String, dynamic>),
  object: GitTagObject.fromJson(json['object'] as Map<String, dynamic>),
  verification: json['verification'] != null ? Verification.fromJson(json['verification'] as Map<String, dynamic>) : null,
); }

final String nodeId;

/// Name of the tag
final String tag;

final String sha;

/// URL for the tag
final Uri url;

/// Message describing the purpose of the tag
final String message;

final GitTagTagger tagger;

final GitTagObject object;

final Verification? verification;

Map<String, dynamic> toJson() { return {
  'node_id': nodeId,
  'tag': tag,
  'sha': sha,
  'url': url.toString(),
  'message': message,
  'tagger': tagger.toJson(),
  'object': object.toJson(),
  if (verification != null) 'verification': verification?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('tag') && json['tag'] is String &&
      json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('message') && json['message'] is String &&
      json.containsKey('tagger') &&
      json.containsKey('object'); } 
GitTag copyWith({String? nodeId, String? tag, String? sha, Uri? url, String? message, GitTagTagger? tagger, GitTagObject? object, Verification Function()? verification, }) { return GitTag(
  nodeId: nodeId ?? this.nodeId,
  tag: tag ?? this.tag,
  sha: sha ?? this.sha,
  url: url ?? this.url,
  message: message ?? this.message,
  tagger: tagger ?? this.tagger,
  object: object ?? this.object,
  verification: verification != null ? verification() : this.verification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GitTag &&
          nodeId == other.nodeId &&
          tag == other.tag &&
          sha == other.sha &&
          url == other.url &&
          message == other.message &&
          tagger == other.tagger &&
          object == other.object &&
          verification == other.verification; } 
@override int get hashCode { return Object.hash(nodeId, tag, sha, url, message, tagger, object, verification); } 
@override String toString() { return 'GitTag(nodeId: $nodeId, tag: $tag, sha: $sha, url: $url, message: $message, tagger: $tagger, object: $object, verification: $verification)'; } 
 }
