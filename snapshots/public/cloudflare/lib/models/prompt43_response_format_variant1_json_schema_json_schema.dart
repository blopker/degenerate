// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt43ResponseFormatVariant1JsonSchemaJsonSchema {const Prompt43ResponseFormatVariant1JsonSchemaJsonSchema({required this.name, this.description, this.schema, this.strict, });

factory Prompt43ResponseFormatVariant1JsonSchemaJsonSchema.fromJson(Map<String, dynamic> json) { return Prompt43ResponseFormatVariant1JsonSchemaJsonSchema(
  description: json['description'] as String?,
  name: json['name'] as String,
  schema: json['schema'] as Map<String, dynamic>?,
  strict: json['strict'] as bool?,
); }

final String? description;

final String name;

final Map<String,dynamic>? schema;

final bool? strict;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'name': name,
  'schema': ?schema,
  'strict': ?strict,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
Prompt43ResponseFormatVariant1JsonSchemaJsonSchema copyWith({String Function()? description, String? name, Map<String, dynamic> Function()? schema, bool? Function()? strict, }) { return Prompt43ResponseFormatVariant1JsonSchemaJsonSchema(
  description: description != null ? description() : this.description,
  name: name ?? this.name,
  schema: schema != null ? schema() : this.schema,
  strict: strict != null ? strict() : this.strict,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt43ResponseFormatVariant1JsonSchemaJsonSchema &&
          description == other.description &&
          name == other.name &&
          schema == other.schema &&
          strict == other.strict; } 
@override int get hashCode { return Object.hash(description, name, schema, strict); } 
@override String toString() { return 'Prompt43ResponseFormatVariant1JsonSchemaJsonSchema(description: $description, name: $name, schema: $schema, strict: $strict)'; } 
 }
