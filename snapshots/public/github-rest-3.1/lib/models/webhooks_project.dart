// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhooks_project_creator.dart';/// State of the project; either 'open' or 'closed'
@immutable final class WebhooksProjectState {const WebhooksProjectState._(this.value);

factory WebhooksProjectState.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  _ => WebhooksProjectState._(json),
}; }

static const WebhooksProjectState open = WebhooksProjectState._('open');

static const WebhooksProjectState closed = WebhooksProjectState._('closed');

static const List<WebhooksProjectState> values = [open, closed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksProjectState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksProjectState($value)'; } 
 }
@immutable final class WebhooksProject {const WebhooksProject({required this.body, required this.columnsUrl, required this.createdAt, required this.creator, required this.htmlUrl, required this.id, required this.name, required this.nodeId, required this.number, required this.ownerUrl, required this.state, required this.updatedAt, required this.url, });

factory WebhooksProject.fromJson(Map<String, dynamic> json) { return WebhooksProject(
  body: json['body'] as String?,
  columnsUrl: Uri.parse(json['columns_url'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  creator: json['creator'] != null ? WebhooksProjectCreator.fromJson(json['creator'] as Map<String, dynamic>) : null,
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  nodeId: json['node_id'] as String,
  number: (json['number'] as num).toInt(),
  ownerUrl: Uri.parse(json['owner_url'] as String),
  state: WebhooksProjectState.fromJson(json['state'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  url: Uri.parse(json['url'] as String),
); }

/// Body of the project
final String? body;

final Uri columnsUrl;

final DateTime createdAt;

final WebhooksProjectCreator? creator;

final Uri htmlUrl;

final int id;

/// Name of the project
final String name;

final String nodeId;

final int number;

final Uri ownerUrl;

/// State of the project; either 'open' or 'closed'
final WebhooksProjectState state;

final DateTime updatedAt;

final Uri url;

Map<String, dynamic> toJson() { return {
  'body': ?body,
  'columns_url': columnsUrl.toString(),
  'created_at': createdAt.toIso8601String(),
  if (creator != null) 'creator': creator?.toJson(),
  'html_url': htmlUrl.toString(),
  'id': id,
  'name': name,
  'node_id': nodeId,
  'number': number,
  'owner_url': ownerUrl.toString(),
  'state': state.toJson(),
  'updated_at': updatedAt.toIso8601String(),
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('body') && json['body'] is String &&
      json.containsKey('columns_url') && json['columns_url'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('creator') &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('owner_url') && json['owner_url'] is String &&
      json.containsKey('state') &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('url') && json['url'] is String; } 
WebhooksProject copyWith({String? Function()? body, Uri? columnsUrl, DateTime? createdAt, WebhooksProjectCreator? Function()? creator, Uri? htmlUrl, int? id, String? name, String? nodeId, int? number, Uri? ownerUrl, WebhooksProjectState? state, DateTime? updatedAt, Uri? url, }) { return WebhooksProject(
  body: body != null ? body() : this.body,
  columnsUrl: columnsUrl ?? this.columnsUrl,
  createdAt: createdAt ?? this.createdAt,
  creator: creator != null ? creator() : this.creator,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  name: name ?? this.name,
  nodeId: nodeId ?? this.nodeId,
  number: number ?? this.number,
  ownerUrl: ownerUrl ?? this.ownerUrl,
  state: state ?? this.state,
  updatedAt: updatedAt ?? this.updatedAt,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksProject &&
          body == other.body &&
          columnsUrl == other.columnsUrl &&
          createdAt == other.createdAt &&
          creator == other.creator &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          name == other.name &&
          nodeId == other.nodeId &&
          number == other.number &&
          ownerUrl == other.ownerUrl &&
          state == other.state &&
          updatedAt == other.updatedAt &&
          url == other.url; } 
@override int get hashCode { return Object.hash(body, columnsUrl, createdAt, creator, htmlUrl, id, name, nodeId, number, ownerUrl, state, updatedAt, url); } 
@override String toString() { return 'WebhooksProject(body: $body, columnsUrl: $columnsUrl, createdAt: $createdAt, creator: $creator, htmlUrl: $htmlUrl, id: $id, name: $name, nodeId: $nodeId, number: $number, ownerUrl: $ownerUrl, state: $state, updatedAt: $updatedAt, url: $url)'; } 
 }
