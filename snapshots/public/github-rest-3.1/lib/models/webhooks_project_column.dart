// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhooksProjectColumn {const WebhooksProjectColumn({required this.cardsUrl, required this.createdAt, required this.id, required this.name, required this.nodeId, required this.projectUrl, required this.updatedAt, required this.url, this.afterId, });

factory WebhooksProjectColumn.fromJson(Map<String, dynamic> json) { return WebhooksProjectColumn(
  afterId: json['after_id'] != null ? (json['after_id'] as num).toInt() : null,
  cardsUrl: Uri.parse(json['cards_url'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  nodeId: json['node_id'] as String,
  projectUrl: Uri.parse(json['project_url'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  url: Uri.parse(json['url'] as String),
); }

final int? afterId;

final Uri cardsUrl;

final DateTime createdAt;

/// The unique identifier of the project column
final int id;

/// Name of the project column
final String name;

final String nodeId;

final Uri projectUrl;

final DateTime updatedAt;

final Uri url;

Map<String, dynamic> toJson() { return {
  'after_id': ?afterId,
  'cards_url': cardsUrl.toString(),
  'created_at': createdAt.toIso8601String(),
  'id': id,
  'name': name,
  'node_id': nodeId,
  'project_url': projectUrl.toString(),
  'updated_at': updatedAt.toIso8601String(),
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cards_url') && json['cards_url'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('project_url') && json['project_url'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('url') && json['url'] is String; } 
WebhooksProjectColumn copyWith({int? Function()? afterId, Uri? cardsUrl, DateTime? createdAt, int? id, String? name, String? nodeId, Uri? projectUrl, DateTime? updatedAt, Uri? url, }) { return WebhooksProjectColumn(
  afterId: afterId != null ? afterId() : this.afterId,
  cardsUrl: cardsUrl ?? this.cardsUrl,
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
  name: name ?? this.name,
  nodeId: nodeId ?? this.nodeId,
  projectUrl: projectUrl ?? this.projectUrl,
  updatedAt: updatedAt ?? this.updatedAt,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksProjectColumn &&
          afterId == other.afterId &&
          cardsUrl == other.cardsUrl &&
          createdAt == other.createdAt &&
          id == other.id &&
          name == other.name &&
          nodeId == other.nodeId &&
          projectUrl == other.projectUrl &&
          updatedAt == other.updatedAt &&
          url == other.url; } 
@override int get hashCode { return Object.hash(afterId, cardsUrl, createdAt, id, name, nodeId, projectUrl, updatedAt, url); } 
@override String toString() { return 'WebhooksProjectColumn(afterId: $afterId, cardsUrl: $cardsUrl, createdAt: $createdAt, id: $id, name: $name, nodeId: $nodeId, projectUrl: $projectUrl, updatedAt: $updatedAt, url: $url)'; } 
 }
