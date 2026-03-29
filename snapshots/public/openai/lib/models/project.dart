// GENERATED CODE - DO NOT MODIFY BY HAND

/// The object type, which is always `organization.project`
final class ProjectObject {const ProjectObject._(this.value);

factory ProjectObject.fromJson(String json) { return switch (json) {
  'organization.project' => organizationProject,
  _ => ProjectObject._(json),
}; }

static const ProjectObject organizationProject = ProjectObject._('organization.project');

static const List<ProjectObject> values = [organizationProject];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ProjectObject($value)'; } 
 }
/// `active` or `archived`
final class ProjectStatus {const ProjectStatus._(this.value);

factory ProjectStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'archived' => archived,
  _ => ProjectStatus._(json),
}; }

static const ProjectStatus active = ProjectStatus._('active');

static const ProjectStatus archived = ProjectStatus._('archived');

static const List<ProjectStatus> values = [active, archived];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ProjectStatus($value)'; } 
 }
/// Represents an individual project.
final class Project {const Project({required this.id, required this.object, required this.name, required this.createdAt, this.archivedAt, required this.status, });

factory Project.fromJson(Map<String, dynamic> json) { return Project(
  id: json['id'] as String,
  object: ProjectObject.fromJson(json['object'] as String),
  name: json['name'] as String,
  createdAt: (json['created_at'] as num).toInt(),
  archivedAt: json['archived_at'] != null ? (json['archived_at'] as num).toInt() : null,
  status: ProjectStatus.fromJson(json['status'] as String),
); }

/// The identifier, which can be referenced in API endpoints
final String id;

/// The object type, which is always `organization.project`
final ProjectObject object;

/// The name of the project. This appears in reporting.
final String name;

/// The Unix timestamp (in seconds) of when the project was created.
final int createdAt;

/// The Unix timestamp (in seconds) of when the project was archived or `null`.
final int? archivedAt;

/// `active` or `archived`
final ProjectStatus status;

Map<String, dynamic> toJson() { return {
  'id': id,
  'object': object.toJson(),
  'name': name,
  'created_at': createdAt,
  'archived_at': ?archivedAt,
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('status'); } 
Project copyWith({String? id, ProjectObject? object, String? name, int? createdAt, int? Function()? archivedAt, ProjectStatus? status, }) { return Project(
  id: id ?? this.id,
  object: object ?? this.object,
  name: name ?? this.name,
  createdAt: createdAt ?? this.createdAt,
  archivedAt: archivedAt != null ? archivedAt() : this.archivedAt,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Project &&
          id == other.id &&
          object == other.object &&
          name == other.name &&
          createdAt == other.createdAt &&
          archivedAt == other.archivedAt &&
          status == other.status; } 
@override int get hashCode { return Object.hash(id, object, name, createdAt, archivedAt, status); } 
@override String toString() { return 'Project(id: $id, object: $object, name: $name, createdAt: $createdAt, archivedAt: $archivedAt, status: $status)'; } 
 }
