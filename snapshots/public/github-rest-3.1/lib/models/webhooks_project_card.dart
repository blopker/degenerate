// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhooks_project_card_creator.dart';final class WebhooksProjectCard {const WebhooksProjectCard({this.afterId, required this.archived, required this.columnId, required this.columnUrl, this.contentUrl, required this.createdAt, required this.creator, required this.id, required this.nodeId, required this.note, required this.projectUrl, required this.updatedAt, required this.url, });

factory WebhooksProjectCard.fromJson(Map<String, dynamic> json) { return WebhooksProjectCard(
  afterId: json['after_id'] != null ? (json['after_id'] as num).toInt() : null,
  archived: json['archived'] as bool,
  columnId: (json['column_id'] as num).toInt(),
  columnUrl: Uri.parse(json['column_url'] as String),
  contentUrl: json['content_url'] != null ? Uri.parse(json['content_url'] as String) : null,
  createdAt: DateTime.parse(json['created_at'] as String),
  creator: json['creator'] != null ? WebhooksProjectCardCreator.fromJson(json['creator'] as Map<String, dynamic>) : null,
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  note: json['note'] as String?,
  projectUrl: Uri.parse(json['project_url'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  url: Uri.parse(json['url'] as String),
); }

final int? afterId;

/// Whether or not the card is archived
final bool archived;

final int columnId;

final Uri columnUrl;

final Uri? contentUrl;

final DateTime createdAt;

final WebhooksProjectCardCreator? creator;

/// The project card's ID
final int id;

final String nodeId;

final String? note;

final Uri projectUrl;

final DateTime updatedAt;

final Uri url;

Map<String, dynamic> toJson() { return {
  'after_id': ?afterId,
  'archived': archived,
  'column_id': columnId,
  'column_url': columnUrl.toString(),
  if (contentUrl != null) 'content_url': contentUrl?.toString(),
  'created_at': createdAt.toIso8601String(),
  if (creator != null) 'creator': creator?.toJson(),
  'id': id,
  'node_id': nodeId,
  'note': ?note,
  'project_url': projectUrl.toString(),
  'updated_at': updatedAt.toIso8601String(),
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('archived') && json['archived'] is bool &&
      json.containsKey('column_id') && json['column_id'] is num &&
      json.containsKey('column_url') && json['column_url'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('creator') &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('note') && json['note'] is String &&
      json.containsKey('project_url') && json['project_url'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('url') && json['url'] is String; } 
WebhooksProjectCard copyWith({int? Function()? afterId, bool? archived, int? columnId, Uri? columnUrl, Uri Function()? contentUrl, DateTime? createdAt, WebhooksProjectCardCreator? Function()? creator, int? id, String? nodeId, String? Function()? note, Uri? projectUrl, DateTime? updatedAt, Uri? url, }) { return WebhooksProjectCard(
  afterId: afterId != null ? afterId() : this.afterId,
  archived: archived ?? this.archived,
  columnId: columnId ?? this.columnId,
  columnUrl: columnUrl ?? this.columnUrl,
  contentUrl: contentUrl != null ? contentUrl() : this.contentUrl,
  createdAt: createdAt ?? this.createdAt,
  creator: creator != null ? creator() : this.creator,
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  note: note != null ? note() : this.note,
  projectUrl: projectUrl ?? this.projectUrl,
  updatedAt: updatedAt ?? this.updatedAt,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksProjectCard &&
          afterId == other.afterId &&
          archived == other.archived &&
          columnId == other.columnId &&
          columnUrl == other.columnUrl &&
          contentUrl == other.contentUrl &&
          createdAt == other.createdAt &&
          creator == other.creator &&
          id == other.id &&
          nodeId == other.nodeId &&
          note == other.note &&
          projectUrl == other.projectUrl &&
          updatedAt == other.updatedAt &&
          url == other.url; } 
@override int get hashCode { return Object.hash(afterId, archived, columnId, columnUrl, contentUrl, createdAt, creator, id, nodeId, note, projectUrl, updatedAt, url); } 
@override String toString() { return 'WebhooksProjectCard(afterId: $afterId, archived: $archived, columnId: $columnId, columnUrl: $columnUrl, contentUrl: $contentUrl, createdAt: $createdAt, creator: $creator, id: $id, nodeId: $nodeId, note: $note, projectUrl: $projectUrl, updatedAt: $updatedAt, url: $url)'; } 
 }
