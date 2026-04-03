// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'simple_user.dart';import 'status_update.dart';/// The current state of the project.
@immutable final class ProjectsState {const ProjectsState._(this.value);

factory ProjectsState.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  _ => ProjectsState._(json),
}; }

static const ProjectsState open = ProjectsState._('open');

static const ProjectsState closed = ProjectsState._('closed');

static const List<ProjectsState> values = [open, closed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ProjectsState($value)'; } 
 }
/// A projects v2 project
@immutable final class Projects {const Projects({required this.id, required this.nodeId, required this.owner, required this.creator, required this.title, required this.description, required this.public, required this.closedAt, required this.createdAt, required this.updatedAt, required this.number, required this.shortDescription, required this.deletedAt, required this.deletedBy, this.state, this.latestStatusUpdate, this.isTemplate, });

factory Projects.fromJson(Map<String, dynamic> json) { return Projects(
  id: (json['id'] as num).toDouble(),
  nodeId: json['node_id'] as String,
  owner: SimpleUser.fromJson(json['owner'] as Map<String, dynamic>),
  creator: SimpleUser.fromJson(json['creator'] as Map<String, dynamic>),
  title: json['title'] as String,
  description: json['description'] as String?,
  public: json['public'] as bool,
  closedAt: json['closed_at'] != null ? DateTime.parse(json['closed_at'] as String) : null,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  number: (json['number'] as num).toInt(),
  shortDescription: json['short_description'] as String?,
  deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at'] as String) : null,
  deletedBy: json['deleted_by'] != null ? SimpleUser.fromJson(json['deleted_by'] as Map<String, dynamic>) : null,
  state: json['state'] != null ? ProjectsState.fromJson(json['state'] as String) : null,
  latestStatusUpdate: json['latest_status_update'] != null ? StatusUpdate.fromJson(json['latest_status_update'] as Map<String, dynamic>) : null,
  isTemplate: json['is_template'] as bool?,
); }

/// The unique identifier of the project.
final double id;

/// The node ID of the project.
final String nodeId;

final SimpleUser owner;

final SimpleUser creator;

/// The project title.
final String title;

/// A short description of the project.
final String? description;

/// Whether the project is visible to anyone with access to the owner.
final bool public;

/// The time when the project was closed.
final DateTime? closedAt;

/// The time when the project was created.
final DateTime createdAt;

/// The time when the project was last updated.
final DateTime updatedAt;

/// The project number.
final int number;

/// A concise summary of the project.
final String? shortDescription;

/// The time when the project was deleted.
final DateTime? deletedAt;

final SimpleUser? deletedBy;

/// The current state of the project.
final ProjectsState? state;

final StatusUpdate? latestStatusUpdate;

/// Whether this project is a template
final bool? isTemplate;

Map<String, dynamic> toJson() { return {
  'id': id,
  'node_id': nodeId,
  'owner': owner.toJson(),
  'creator': creator.toJson(),
  'title': title,
  'description': ?description,
  'public': public,
  if (closedAt != null) 'closed_at': closedAt?.toIso8601String(),
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  'number': number,
  'short_description': ?shortDescription,
  if (deletedAt != null) 'deleted_at': deletedAt?.toIso8601String(),
  if (deletedBy != null) 'deleted_by': deletedBy?.toJson(),
  if (state != null) 'state': state?.toJson(),
  if (latestStatusUpdate != null) 'latest_status_update': latestStatusUpdate?.toJson(),
  'is_template': ?isTemplate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('owner') &&
      json.containsKey('creator') &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('public') && json['public'] is bool &&
      json.containsKey('closed_at') && json['closed_at'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('short_description') && json['short_description'] is String &&
      json.containsKey('deleted_at') && json['deleted_at'] is String &&
      json.containsKey('deleted_by'); } 
Projects copyWith({double? id, String? nodeId, SimpleUser? owner, SimpleUser? creator, String? title, String? Function()? description, bool? public, DateTime? Function()? closedAt, DateTime? createdAt, DateTime? updatedAt, int? number, String? Function()? shortDescription, DateTime? Function()? deletedAt, SimpleUser? Function()? deletedBy, ProjectsState Function()? state, StatusUpdate? Function()? latestStatusUpdate, bool Function()? isTemplate, }) { return Projects(
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  owner: owner ?? this.owner,
  creator: creator ?? this.creator,
  title: title ?? this.title,
  description: description != null ? description() : this.description,
  public: public ?? this.public,
  closedAt: closedAt != null ? closedAt() : this.closedAt,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  number: number ?? this.number,
  shortDescription: shortDescription != null ? shortDescription() : this.shortDescription,
  deletedAt: deletedAt != null ? deletedAt() : this.deletedAt,
  deletedBy: deletedBy != null ? deletedBy() : this.deletedBy,
  state: state != null ? state() : this.state,
  latestStatusUpdate: latestStatusUpdate != null ? latestStatusUpdate() : this.latestStatusUpdate,
  isTemplate: isTemplate != null ? isTemplate() : this.isTemplate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Projects &&
          id == other.id &&
          nodeId == other.nodeId &&
          owner == other.owner &&
          creator == other.creator &&
          title == other.title &&
          description == other.description &&
          public == other.public &&
          closedAt == other.closedAt &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          number == other.number &&
          shortDescription == other.shortDescription &&
          deletedAt == other.deletedAt &&
          deletedBy == other.deletedBy &&
          state == other.state &&
          latestStatusUpdate == other.latestStatusUpdate &&
          isTemplate == other.isTemplate; } 
@override int get hashCode { return Object.hash(id, nodeId, owner, creator, title, description, public, closedAt, createdAt, updatedAt, number, shortDescription, deletedAt, deletedBy, state, latestStatusUpdate, isTemplate); } 
@override String toString() { return 'Projects(id: $id, nodeId: $nodeId, owner: $owner, creator: $creator, title: $title, description: $description, public: $public, closedAt: $closedAt, createdAt: $createdAt, updatedAt: $updatedAt, number: $number, shortDescription: $shortDescription, deletedAt: $deletedAt, deletedBy: $deletedBy, state: $state, latestStatusUpdate: $latestStatusUpdate, isTemplate: $isTemplate)'; } 
 }
