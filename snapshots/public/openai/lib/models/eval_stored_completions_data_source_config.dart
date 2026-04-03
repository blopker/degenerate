// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of data source. Always `stored_completions`.
@immutable final class EvalStoredCompletionsDataSourceConfigType {const EvalStoredCompletionsDataSourceConfigType._(this.value);

factory EvalStoredCompletionsDataSourceConfigType.fromJson(String json) { return switch (json) {
  'stored_completions' => storedCompletions,
  _ => EvalStoredCompletionsDataSourceConfigType._(json),
}; }

static const EvalStoredCompletionsDataSourceConfigType storedCompletions = EvalStoredCompletionsDataSourceConfigType._('stored_completions');

static const List<EvalStoredCompletionsDataSourceConfigType> values = [storedCompletions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EvalStoredCompletionsDataSourceConfigType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EvalStoredCompletionsDataSourceConfigType($value)'; } 
 }
/// Deprecated in favor of LogsDataSourceConfig.
/// 
@immutable final class EvalStoredCompletionsDataSourceConfig {const EvalStoredCompletionsDataSourceConfig({required this.schema, this.type = EvalStoredCompletionsDataSourceConfigType.storedCompletions, this.metadata, });

factory EvalStoredCompletionsDataSourceConfig.fromJson(Map<String, dynamic> json) { return EvalStoredCompletionsDataSourceConfig(
  type: EvalStoredCompletionsDataSourceConfigType.fromJson(json['type'] as String),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  schema: (json['schema'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
); }

/// The type of data source. Always `stored_completions`.
final EvalStoredCompletionsDataSourceConfigType type;

final Map<String,String>? metadata;

/// The json schema for the run data source items.
/// Learn how to build JSON schemas [here](https://json-schema.org/).
/// 
final Map<String,dynamic> schema;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'metadata': ?metadata,
  'schema': schema,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('schema'); } 
EvalStoredCompletionsDataSourceConfig copyWith({EvalStoredCompletionsDataSourceConfigType? type, Map<String, String>? Function()? metadata, Map<String,dynamic>? schema, }) { return EvalStoredCompletionsDataSourceConfig(
  type: type ?? this.type,
  metadata: metadata != null ? metadata() : this.metadata,
  schema: schema ?? this.schema,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EvalStoredCompletionsDataSourceConfig &&
          type == other.type &&
          metadata == other.metadata &&
          schema == other.schema; } 
@override int get hashCode { return Object.hash(type, metadata, schema); } 
@override String toString() { return 'EvalStoredCompletionsDataSourceConfig(type: $type, metadata: $metadata, schema: $schema)'; } 
 }
