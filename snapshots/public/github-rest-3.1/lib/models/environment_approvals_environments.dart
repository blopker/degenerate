// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnvironmentApprovalsEnvironments {const EnvironmentApprovalsEnvironments({this.id, this.nodeId, this.name, this.url, this.htmlUrl, this.createdAt, this.updatedAt, });

factory EnvironmentApprovalsEnvironments.fromJson(Map<String, dynamic> json) { return EnvironmentApprovalsEnvironments(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  nodeId: json['node_id'] as String?,
  name: json['name'] as String?,
  url: json['url'] as String?,
  htmlUrl: json['html_url'] as String?,
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
); }

/// The id of the environment.
final int? id;

final String? nodeId;

/// The name of the environment.
final String? name;

final String? url;

final String? htmlUrl;

/// The time that the environment was created, in ISO 8601 format.
final DateTime? createdAt;

/// The time that the environment was last updated, in ISO 8601 format.
final DateTime? updatedAt;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'node_id': ?nodeId,
  'name': ?name,
  'url': ?url,
  'html_url': ?htmlUrl,
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'node_id', 'name', 'url', 'html_url', 'created_at', 'updated_at'}.contains(key)); } 
EnvironmentApprovalsEnvironments copyWith({int Function()? id, String Function()? nodeId, String Function()? name, String Function()? url, String Function()? htmlUrl, DateTime Function()? createdAt, DateTime Function()? updatedAt, }) { return EnvironmentApprovalsEnvironments(
  id: id != null ? id() : this.id,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  name: name != null ? name() : this.name,
  url: url != null ? url() : this.url,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EnvironmentApprovalsEnvironments &&
          id == other.id &&
          nodeId == other.nodeId &&
          name == other.name &&
          url == other.url &&
          htmlUrl == other.htmlUrl &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(id, nodeId, name, url, htmlUrl, createdAt, updatedAt); } 
@override String toString() { return 'EnvironmentApprovalsEnvironments(id: $id, nodeId: $nodeId, name: $name, url: $url, htmlUrl: $htmlUrl, createdAt: $createdAt, updatedAt: $updatedAt)'; } 
 }
