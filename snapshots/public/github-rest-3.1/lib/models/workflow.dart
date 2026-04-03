// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkflowState {const WorkflowState._(this.value);

factory WorkflowState.fromJson(String json) { return switch (json) {
  'active' => active,
  'deleted' => deleted,
  'disabled_fork' => disabledFork,
  'disabled_inactivity' => disabledInactivity,
  'disabled_manually' => disabledManually,
  _ => WorkflowState._(json),
}; }

static const WorkflowState active = WorkflowState._('active');

static const WorkflowState deleted = WorkflowState._('deleted');

static const WorkflowState disabledFork = WorkflowState._('disabled_fork');

static const WorkflowState disabledInactivity = WorkflowState._('disabled_inactivity');

static const WorkflowState disabledManually = WorkflowState._('disabled_manually');

static const List<WorkflowState> values = [active, deleted, disabledFork, disabledInactivity, disabledManually];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkflowState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkflowState($value)'; } 
 }
/// A GitHub Actions workflow
@immutable final class Workflow {const Workflow({required this.id, required this.nodeId, required this.name, required this.path, required this.state, required this.createdAt, required this.updatedAt, required this.url, required this.htmlUrl, required this.badgeUrl, this.deletedAt, });

factory Workflow.fromJson(Map<String, dynamic> json) { return Workflow(
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  name: json['name'] as String,
  path: json['path'] as String,
  state: WorkflowState.fromJson(json['state'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  url: json['url'] as String,
  htmlUrl: json['html_url'] as String,
  badgeUrl: json['badge_url'] as String,
  deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at'] as String) : null,
); }

final int id;

final String nodeId;

final String name;

final String path;

final WorkflowState state;

final DateTime createdAt;

final DateTime updatedAt;

final String url;

final String htmlUrl;

final String badgeUrl;

final DateTime? deletedAt;

Map<String, dynamic> toJson() { return {
  'id': id,
  'node_id': nodeId,
  'name': name,
  'path': path,
  'state': state.toJson(),
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  'url': url,
  'html_url': htmlUrl,
  'badge_url': badgeUrl,
  if (deletedAt != null) 'deleted_at': deletedAt?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('path') && json['path'] is String &&
      json.containsKey('state') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('badge_url') && json['badge_url'] is String; } 
Workflow copyWith({int? id, String? nodeId, String? name, String? path, WorkflowState? state, DateTime? createdAt, DateTime? updatedAt, String? url, String? htmlUrl, String? badgeUrl, DateTime Function()? deletedAt, }) { return Workflow(
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  name: name ?? this.name,
  path: path ?? this.path,
  state: state ?? this.state,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  url: url ?? this.url,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  badgeUrl: badgeUrl ?? this.badgeUrl,
  deletedAt: deletedAt != null ? deletedAt() : this.deletedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Workflow &&
          id == other.id &&
          nodeId == other.nodeId &&
          name == other.name &&
          path == other.path &&
          state == other.state &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          url == other.url &&
          htmlUrl == other.htmlUrl &&
          badgeUrl == other.badgeUrl &&
          deletedAt == other.deletedAt; } 
@override int get hashCode { return Object.hash(id, nodeId, name, path, state, createdAt, updatedAt, url, htmlUrl, badgeUrl, deletedAt); } 
@override String toString() { return 'Workflow(id: $id, nodeId: $nodeId, name: $name, path: $path, state: $state, createdAt: $createdAt, updatedAt: $updatedAt, url: $url, htmlUrl: $htmlUrl, badgeUrl: $badgeUrl, deletedAt: $deletedAt)'; } 
 }
