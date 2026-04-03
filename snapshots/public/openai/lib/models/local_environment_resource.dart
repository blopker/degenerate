// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The environment type. Always `local`.
@immutable final class LocalEnvironmentResourceType {const LocalEnvironmentResourceType._(this.value);

factory LocalEnvironmentResourceType.fromJson(String json) { return switch (json) {
  'local' => local,
  _ => LocalEnvironmentResourceType._(json),
}; }

static const LocalEnvironmentResourceType local = LocalEnvironmentResourceType._('local');

static const List<LocalEnvironmentResourceType> values = [local];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LocalEnvironmentResourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LocalEnvironmentResourceType($value)'; } 
 }
/// Represents the use of a local environment to perform shell actions.
@immutable final class LocalEnvironmentResource {const LocalEnvironmentResource({this.type = LocalEnvironmentResourceType.local});

factory LocalEnvironmentResource.fromJson(Map<String, dynamic> json) { return LocalEnvironmentResource(
  type: LocalEnvironmentResourceType.fromJson(json['type'] as String),
); }

/// The environment type. Always `local`.
final LocalEnvironmentResourceType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
LocalEnvironmentResource copyWith({LocalEnvironmentResourceType? type}) { return LocalEnvironmentResource(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LocalEnvironmentResource &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'LocalEnvironmentResource(type: $type)'; } 
 }
