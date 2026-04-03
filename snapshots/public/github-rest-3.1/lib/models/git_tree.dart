// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'git_tree_tree.dart';/// The hierarchy between files in a Git repository.
@immutable final class GitTree {const GitTree({required this.sha, required this.truncated, required this.tree, this.url, });

factory GitTree.fromJson(Map<String, dynamic> json) { return GitTree(
  sha: json['sha'] as String,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
  truncated: json['truncated'] as bool,
  tree: (json['tree'] as List<dynamic>).map((e) => GitTreeTree.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String sha;

final Uri? url;

final bool truncated;

/// Objects specifying a tree structure
final List<GitTreeTree> tree;

Map<String, dynamic> toJson() { return {
  'sha': sha,
  if (url != null) 'url': url?.toString(),
  'truncated': truncated,
  'tree': tree.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('truncated') && json['truncated'] is bool &&
      json.containsKey('tree'); } 
GitTree copyWith({String? sha, Uri Function()? url, bool? truncated, List<GitTreeTree>? tree, }) { return GitTree(
  sha: sha ?? this.sha,
  url: url != null ? url() : this.url,
  truncated: truncated ?? this.truncated,
  tree: tree ?? this.tree,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GitTree &&
          sha == other.sha &&
          url == other.url &&
          truncated == other.truncated &&
          listEquals(tree, other.tree); } 
@override int get hashCode { return Object.hash(sha, url, truncated, Object.hashAll(tree)); } 
@override String toString() { return 'GitTree(sha: $sha, url: $url, truncated: $truncated, tree: $tree)'; } 
 }
