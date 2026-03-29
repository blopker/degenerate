// GENERATED CODE - DO NOT MODIFY BY HAND

import 'field_iteration_configuration.dart';/// The field's data type.
final class ProjectsAddFieldForUserRequestIterationDataType {const ProjectsAddFieldForUserRequestIterationDataType._(this.value);

factory ProjectsAddFieldForUserRequestIterationDataType.fromJson(String json) { return switch (json) {
  'iteration' => iteration,
  _ => ProjectsAddFieldForUserRequestIterationDataType._(json),
}; }

static const ProjectsAddFieldForUserRequestIterationDataType iteration = ProjectsAddFieldForUserRequestIterationDataType._('iteration');

static const List<ProjectsAddFieldForUserRequestIterationDataType> values = [iteration];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ProjectsAddFieldForUserRequestIterationDataType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ProjectsAddFieldForUserRequestIterationDataType($value)'; } 
 }
final class ProjectsAddFieldForUserRequestIteration {const ProjectsAddFieldForUserRequestIteration({required this.name, required this.dataType, required this.iterationConfiguration, });

factory ProjectsAddFieldForUserRequestIteration.fromJson(Map<String, dynamic> json) { return ProjectsAddFieldForUserRequestIteration(
  name: json['name'] as String,
  dataType: ProjectsAddFieldForUserRequestIterationDataType.fromJson(json['data_type'] as String),
  iterationConfiguration: FieldIterationConfiguration.fromJson(json['iteration_configuration'] as Map<String, dynamic>),
); }

/// The name of the field.
final String name;

/// The field's data type.
final ProjectsAddFieldForUserRequestIterationDataType dataType;

final FieldIterationConfiguration iterationConfiguration;

Map<String, dynamic> toJson() { return {
  'name': name,
  'data_type': dataType.toJson(),
  'iteration_configuration': iterationConfiguration.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('data_type') &&
      json.containsKey('iteration_configuration'); } 
ProjectsAddFieldForUserRequestIteration copyWith({String? name, ProjectsAddFieldForUserRequestIterationDataType? dataType, FieldIterationConfiguration? iterationConfiguration, }) { return ProjectsAddFieldForUserRequestIteration(
  name: name ?? this.name,
  dataType: dataType ?? this.dataType,
  iterationConfiguration: iterationConfiguration ?? this.iterationConfiguration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProjectsAddFieldForUserRequestIteration &&
          name == other.name &&
          dataType == other.dataType &&
          iterationConfiguration == other.iterationConfiguration; } 
@override int get hashCode { return Object.hash(name, dataType, iterationConfiguration); } 
@override String toString() { return 'ProjectsAddFieldForUserRequestIteration(name: $name, dataType: $dataType, iterationConfiguration: $iterationConfiguration)'; } 
 }
