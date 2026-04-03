// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_source_field.dart';@immutable final class StructType {const StructType._(this.value);

factory StructType.fromJson(String json) { return switch (json) {
  'struct' => struct,
  _ => StructType._(json),
}; }

static const StructType struct = StructType._('struct');

static const List<StructType> values = [struct];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is StructType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'StructType($value)'; } 
 }
@immutable final class Struct {const Struct({required this.fields, required this.type, this.name, });

factory Struct.fromJson(Map<String, dynamic> json) { return Struct(
  fields: (json['fields'] as List<dynamic>).map((e) => CloudflarePipelinesSourceField.fromJson(e as Map<String, dynamic>)).toList(),
  name: json['name'] as String?,
  type: StructType.fromJson(json['type'] as String),
); }

final List<CloudflarePipelinesSourceField> fields;

final String? name;

final StructType type;

Map<String, dynamic> toJson() { return {
  'fields': fields.map((e) => e.toJson()).toList(),
  'name': ?name,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('fields') &&
      json.containsKey('type'); } 
Struct copyWith({List<CloudflarePipelinesSourceField>? fields, String? Function()? name, StructType? type, }) { return Struct(
  fields: fields ?? this.fields,
  name: name != null ? name() : this.name,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Struct &&
          listEquals(fields, other.fields) &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(Object.hashAll(fields), name, type); } 
@override String toString() { return 'Struct(fields: $fields, name: $name, type: $type)'; } 
 }
