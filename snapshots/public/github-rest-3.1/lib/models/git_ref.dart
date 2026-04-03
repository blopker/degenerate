// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'git_ref_object.dart';/// Git references within a repository
@immutable final class GitRef {const GitRef({required this.ref, required this.nodeId, required this.url, required this.object, });

factory GitRef.fromJson(Map<String, dynamic> json) { return GitRef(
  ref: json['ref'] as String,
  nodeId: json['node_id'] as String,
  url: Uri.parse(json['url'] as String),
  object: GitRefObject.fromJson(json['object'] as Map<String, dynamic>),
); }

final String ref;

final String nodeId;

final Uri url;

final GitRefObject object;

Map<String, dynamic> toJson() { return {
  'ref': ref,
  'node_id': nodeId,
  'url': url.toString(),
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('object'); } 
GitRef copyWith({String? ref, String? nodeId, Uri? url, GitRefObject? object, }) { return GitRef(
  ref: ref ?? this.ref,
  nodeId: nodeId ?? this.nodeId,
  url: url ?? this.url,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GitRef &&
          ref == other.ref &&
          nodeId == other.nodeId &&
          url == other.url &&
          object == other.object; } 
@override int get hashCode { return Object.hash(ref, nodeId, url, object); } 
@override String toString() { return 'GitRef(ref: $ref, nodeId: $nodeId, url: $url, object: $object)'; } 
 }
