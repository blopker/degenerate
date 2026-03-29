// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'field_configuration.dart';import 'single_select_options.dart';/// The field's data type.
final class FieldDataType {const FieldDataType._(this.value);

factory FieldDataType.fromJson(String json) { return switch (json) {
  'assignees' => assignees,
  'linked_pull_requests' => linkedPullRequests,
  'reviewers' => reviewers,
  'labels' => labels,
  'milestone' => milestone,
  'repository' => repository,
  'title' => title,
  'text' => text,
  'single_select' => singleSelect,
  'number' => number,
  'date' => date,
  'iteration' => iteration,
  'issue_type' => issueType,
  'parent_issue' => parentIssue,
  'sub_issues_progress' => subIssuesProgress,
  _ => FieldDataType._(json),
}; }

static const FieldDataType assignees = FieldDataType._('assignees');

static const FieldDataType linkedPullRequests = FieldDataType._('linked_pull_requests');

static const FieldDataType reviewers = FieldDataType._('reviewers');

static const FieldDataType labels = FieldDataType._('labels');

static const FieldDataType milestone = FieldDataType._('milestone');

static const FieldDataType repository = FieldDataType._('repository');

static const FieldDataType title = FieldDataType._('title');

static const FieldDataType text = FieldDataType._('text');

static const FieldDataType singleSelect = FieldDataType._('single_select');

static const FieldDataType number = FieldDataType._('number');

static const FieldDataType date = FieldDataType._('date');

static const FieldDataType iteration = FieldDataType._('iteration');

static const FieldDataType issueType = FieldDataType._('issue_type');

static const FieldDataType parentIssue = FieldDataType._('parent_issue');

static const FieldDataType subIssuesProgress = FieldDataType._('sub_issues_progress');

static const List<FieldDataType> values = [assignees, linkedPullRequests, reviewers, labels, milestone, repository, title, text, singleSelect, number, date, iteration, issueType, parentIssue, subIssuesProgress];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FieldDataType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FieldDataType($value)'; } 
 }
/// A field inside a projects v2 project
final class Field {const Field({required this.id, this.nodeId, required this.projectUrl, required this.name, required this.dataType, this.options, this.configuration, required this.createdAt, required this.updatedAt, });

factory Field.fromJson(Map<String, dynamic> json) { return Field(
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String?,
  projectUrl: json['project_url'] as String,
  name: json['name'] as String,
  dataType: FieldDataType.fromJson(json['data_type'] as String),
  options: (json['options'] as List<dynamic>?)?.map((e) => SingleSelectOptions.fromJson(e as Map<String, dynamic>)).toList(),
  configuration: json['configuration'] != null ? FieldConfiguration.fromJson(json['configuration'] as Map<String, dynamic>) : null,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

/// The unique identifier of the field.
final int id;

/// The node ID of the field.
final String? nodeId;

/// The API URL of the project that contains the field.
final String projectUrl;

/// The name of the field.
final String name;

/// The field's data type.
final FieldDataType dataType;

/// The options available for single select fields.
final List<SingleSelectOptions>? options;

/// Configuration for iteration fields.
final FieldConfiguration? configuration;

/// The time when the field was created.
final DateTime createdAt;

/// The time when the field was last updated.
final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'id': id,
  'node_id': ?nodeId,
  'project_url': projectUrl,
  'name': name,
  'data_type': dataType.toJson(),
  if (options != null) 'options': options?.map((e) => e.toJson()).toList(),
  if (configuration != null) 'configuration': configuration?.toJson(),
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('project_url') && json['project_url'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('data_type') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
Field copyWith({int? id, String Function()? nodeId, String? projectUrl, String? name, FieldDataType? dataType, List<SingleSelectOptions> Function()? options, FieldConfiguration Function()? configuration, DateTime? createdAt, DateTime? updatedAt, }) { return Field(
  id: id ?? this.id,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  projectUrl: projectUrl ?? this.projectUrl,
  name: name ?? this.name,
  dataType: dataType ?? this.dataType,
  options: options != null ? options() : this.options,
  configuration: configuration != null ? configuration() : this.configuration,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Field &&
          id == other.id &&
          nodeId == other.nodeId &&
          projectUrl == other.projectUrl &&
          name == other.name &&
          dataType == other.dataType &&
          listEquals(options, other.options) &&
          configuration == other.configuration &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(id, nodeId, projectUrl, name, dataType, Object.hashAll(options ?? const []), configuration, createdAt, updatedAt); } 
@override String toString() { return 'Field(id: $id, nodeId: $nodeId, projectUrl: $projectUrl, name: $name, dataType: $dataType, options: $options, configuration: $configuration, createdAt: $createdAt, updatedAt: $updatedAt)'; } 
 }
