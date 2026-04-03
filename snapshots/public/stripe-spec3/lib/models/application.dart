// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class ApplicationObject {const ApplicationObject._(this.value);

factory ApplicationObject.fromJson(String json) { return switch (json) {
  'application' => application,
  _ => ApplicationObject._(json),
}; }

static const ApplicationObject application = ApplicationObject._('application');

static const List<ApplicationObject> values = [application];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ApplicationObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ApplicationObject($value)'; } 
 }
/// 
@immutable final class Application {const Application({required this.id, required this.object, this.name, });

factory Application.fromJson(Map<String, dynamic> json) { return Application(
  id: json['id'] as String,
  name: json['name'] as String?,
  object: ApplicationObject.fromJson(json['object'] as String),
); }

/// Unique identifier for the object.
final String id;

/// The name of the application.
final String? name;

/// String representing the object's type. Objects of the same type share the same value.
final ApplicationObject object;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': ?name,
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object'); } 
Application copyWith({String? id, String? Function()? name, ApplicationObject? object, }) { return Application(
  id: id ?? this.id,
  name: name != null ? name() : this.name,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Application &&
          id == other.id &&
          name == other.name &&
          object == other.object; } 
@override int get hashCode { return Object.hash(id, name, object); } 
@override String toString() { return 'Application(id: $id, name: $name, object: $object)'; } 
 }
