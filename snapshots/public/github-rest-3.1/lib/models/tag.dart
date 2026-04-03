// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tag_commit.dart';/// Tag
@immutable final class Tag {const Tag({required this.name, required this.commit, required this.zipballUrl, required this.tarballUrl, required this.nodeId, });

factory Tag.fromJson(Map<String, dynamic> json) { return Tag(
  name: json['name'] as String,
  commit: TagCommit.fromJson(json['commit'] as Map<String, dynamic>),
  zipballUrl: Uri.parse(json['zipball_url'] as String),
  tarballUrl: Uri.parse(json['tarball_url'] as String),
  nodeId: json['node_id'] as String,
); }

final String name;

final TagCommit commit;

final Uri zipballUrl;

final Uri tarballUrl;

final String nodeId;

Map<String, dynamic> toJson() { return {
  'name': name,
  'commit': commit.toJson(),
  'zipball_url': zipballUrl.toString(),
  'tarball_url': tarballUrl.toString(),
  'node_id': nodeId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('commit') &&
      json.containsKey('zipball_url') && json['zipball_url'] is String &&
      json.containsKey('tarball_url') && json['tarball_url'] is String &&
      json.containsKey('node_id') && json['node_id'] is String; } 
Tag copyWith({String? name, TagCommit? commit, Uri? zipballUrl, Uri? tarballUrl, String? nodeId, }) { return Tag(
  name: name ?? this.name,
  commit: commit ?? this.commit,
  zipballUrl: zipballUrl ?? this.zipballUrl,
  tarballUrl: tarballUrl ?? this.tarballUrl,
  nodeId: nodeId ?? this.nodeId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Tag &&
          name == other.name &&
          commit == other.commit &&
          zipballUrl == other.zipballUrl &&
          tarballUrl == other.tarballUrl &&
          nodeId == other.nodeId; } 
@override int get hashCode { return Object.hash(name, commit, zipballUrl, tarballUrl, nodeId); } 
@override String toString() { return 'Tag(name: $name, commit: $commit, zipballUrl: $zipballUrl, tarballUrl: $tarballUrl, nodeId: $nodeId)'; } 
 }
