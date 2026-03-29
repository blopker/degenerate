// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_connection_schema.dart';import 'cloudflare_pipelines_format.dart';import 'cloudflare_pipelines_r2_data_catalog_table.dart';import 'cloudflare_pipelines_r2_table.dart';import 'sinks_response2_result_config.dart';/// Specifies the type of sink.
final class SinksResponse2ResultType {const SinksResponse2ResultType._(this.value);

factory SinksResponse2ResultType.fromJson(String json) { return switch (json) {
  'r2' => r2,
  'r2_data_catalog' => r2DataCatalog,
  _ => SinksResponse2ResultType._(json),
}; }

static const SinksResponse2ResultType r2 = SinksResponse2ResultType._('r2');

static const SinksResponse2ResultType r2DataCatalog = SinksResponse2ResultType._('r2_data_catalog');

static const List<SinksResponse2ResultType> values = [r2, r2DataCatalog];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SinksResponse2ResultType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SinksResponse2ResultType($value)'; } 
 }
final class SinksResponse2Result {const SinksResponse2Result({this.config, required this.createdAt, this.format, required this.id, required this.modifiedAt, required this.name, this.schema, required this.type, });

factory SinksResponse2Result.fromJson(Map<String, dynamic> json) { return SinksResponse2Result(
  config: json['config'] != null ? OneOf2.parse(json['config'], fromA: (v) => CloudflarePipelinesR2Table.fromJson(v as Map<String, dynamic>), fromB: (v) => CloudflarePipelinesR2DataCatalogTable.fromJson(v as Map<String, dynamic>),) : null,
  createdAt: DateTime.parse(json['created_at'] as String),
  format: json['format'] != null ? CloudflarePipelinesFormat.fromJson(json['format'] as Map<String, dynamic>) : null,
  id: json['id'] as String,
  modifiedAt: DateTime.parse(json['modified_at'] as String),
  name: json['name'] as String,
  schema: json['schema'] != null ? CloudflarePipelinesConnectionSchema.fromJson(json['schema'] as Map<String, dynamic>) : null,
  type: SinksResponse2ResultType.fromJson(json['type'] as String),
); }

final SinksResponse2ResultConfig? config;

final DateTime createdAt;

final CloudflarePipelinesFormat? format;

/// Indicates a unique identifier for this sink.
final String id;

final DateTime modifiedAt;

/// Defines the name of the Sink.
final String name;

final CloudflarePipelinesConnectionSchema? schema;

/// Specifies the type of sink.
final SinksResponse2ResultType type;

Map<String, dynamic> toJson() { return {
  if (config != null) 'config': config?.toJson(),
  'created_at': createdAt.toIso8601String(),
  if (format != null) 'format': format?.toJson(),
  'id': id,
  'modified_at': modifiedAt.toIso8601String(),
  'name': name,
  if (schema != null) 'schema': schema?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('modified_at') && json['modified_at'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('type'); } 
SinksResponse2Result copyWith({SinksResponse2ResultConfig Function()? config, DateTime? createdAt, CloudflarePipelinesFormat Function()? format, String? id, DateTime? modifiedAt, String? name, CloudflarePipelinesConnectionSchema Function()? schema, SinksResponse2ResultType? type, }) { return SinksResponse2Result(
  config: config != null ? config() : this.config,
  createdAt: createdAt ?? this.createdAt,
  format: format != null ? format() : this.format,
  id: id ?? this.id,
  modifiedAt: modifiedAt ?? this.modifiedAt,
  name: name ?? this.name,
  schema: schema != null ? schema() : this.schema,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SinksResponse2Result &&
          config == other.config &&
          createdAt == other.createdAt &&
          format == other.format &&
          id == other.id &&
          modifiedAt == other.modifiedAt &&
          name == other.name &&
          schema == other.schema &&
          type == other.type; } 
@override int get hashCode { return Object.hash(config, createdAt, format, id, modifiedAt, name, schema, type); } 
@override String toString() { return 'SinksResponse2Result(config: $config, createdAt: $createdAt, format: $format, id: $id, modifiedAt: $modifiedAt, name: $name, schema: $schema, type: $type)'; } 
 }
