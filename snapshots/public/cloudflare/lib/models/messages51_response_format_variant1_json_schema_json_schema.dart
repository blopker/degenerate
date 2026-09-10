// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Messages51ResponseFormatVariant1JsonSchemaJsonSchema {const Messages51ResponseFormatVariant1JsonSchemaJsonSchema({required this.name, this.description, this.schema, this.strict = const Omittable.absent(), });

factory Messages51ResponseFormatVariant1JsonSchemaJsonSchema.fromJson(Map<String, dynamic> json) { return Messages51ResponseFormatVariant1JsonSchemaJsonSchema(
  description: json['description'] as String?,
  name: json['name'] as String,
  schema: json['schema'] as Map<String, dynamic>?,
  strict: json.containsKey('strict') ? Omittable(json['strict'] as bool?) : const Omittable.absent(),
); }

final String? description;

final String name;

final Map<String,dynamic>? schema;

final Omittable<bool?> strict;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'name': name,
  'schema': ?schema,
  if (strict.isPresent) 'strict': strict.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
Messages51ResponseFormatVariant1JsonSchemaJsonSchema copyWith({String? Function()? description, String? name, Map<String, dynamic>? Function()? schema, Omittable<bool?>? strict, }) { return Messages51ResponseFormatVariant1JsonSchemaJsonSchema(
  description: description != null ? description() : this.description,
  name: name ?? this.name,
  schema: schema != null ? schema() : this.schema,
  strict: strict ?? this.strict,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51ResponseFormatVariant1JsonSchemaJsonSchema &&
          description == other.description &&
          name == other.name &&
          schema == other.schema &&
          strict == other.strict; } 
@override int get hashCode { return Object.hash(description, name, schema, strict); } 
@override String toString() { return 'Messages51ResponseFormatVariant1JsonSchemaJsonSchema(description: $description, name: $name, schema: $schema, strict: $strict)'; } 
 }
