// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The field's data type.
@immutable final class ProjectsAddFieldForOrgRequestVariant2DataType {const ProjectsAddFieldForOrgRequestVariant2DataType._(this.value);

factory ProjectsAddFieldForOrgRequestVariant2DataType.fromJson(String json) { return switch (json) {
  'text' => text,
  'number' => number,
  'date' => date,
  _ => ProjectsAddFieldForOrgRequestVariant2DataType._(json),
}; }

static const ProjectsAddFieldForOrgRequestVariant2DataType text = ProjectsAddFieldForOrgRequestVariant2DataType._('text');

static const ProjectsAddFieldForOrgRequestVariant2DataType number = ProjectsAddFieldForOrgRequestVariant2DataType._('number');

static const ProjectsAddFieldForOrgRequestVariant2DataType date = ProjectsAddFieldForOrgRequestVariant2DataType._('date');

static const List<ProjectsAddFieldForOrgRequestVariant2DataType> values = [text, number, date];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddFieldForOrgRequestVariant2DataType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ProjectsAddFieldForOrgRequestVariant2DataType($value)'; } 
 }
@immutable final class ProjectsAddFieldForOrgRequestVariant2 {const ProjectsAddFieldForOrgRequestVariant2({required this.name, required this.dataType, });

factory ProjectsAddFieldForOrgRequestVariant2.fromJson(Map<String, dynamic> json) { return ProjectsAddFieldForOrgRequestVariant2(
  name: json['name'] as String,
  dataType: ProjectsAddFieldForOrgRequestVariant2DataType.fromJson(json['data_type'] as String),
); }

/// The name of the field.
final String name;

/// The field's data type.
final ProjectsAddFieldForOrgRequestVariant2DataType dataType;

Map<String, dynamic> toJson() { return {
  'name': name,
  'data_type': dataType.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('data_type'); } 
ProjectsAddFieldForOrgRequestVariant2 copyWith({String? name, ProjectsAddFieldForOrgRequestVariant2DataType? dataType, }) { return ProjectsAddFieldForOrgRequestVariant2(
  name: name ?? this.name,
  dataType: dataType ?? this.dataType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProjectsAddFieldForOrgRequestVariant2 &&
          name == other.name &&
          dataType == other.dataType; } 
@override int get hashCode { return Object.hash(name, dataType); } 
@override String toString() { return 'ProjectsAddFieldForOrgRequestVariant2(name: $name, dataType: $dataType)'; } 
 }
