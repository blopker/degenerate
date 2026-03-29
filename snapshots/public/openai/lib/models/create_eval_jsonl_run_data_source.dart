// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_eval_jsonl_run_data_source_source.dart';import 'eval_jsonl_file_content_source.dart';import 'eval_jsonl_file_id_source.dart';/// The type of data source. Always `jsonl`.
final class CreateEvalJsonlRunDataSourceType {const CreateEvalJsonlRunDataSourceType._(this.value);

factory CreateEvalJsonlRunDataSourceType.fromJson(String json) { return switch (json) {
  'jsonl' => jsonl,
  _ => CreateEvalJsonlRunDataSourceType._(json),
}; }

static const CreateEvalJsonlRunDataSourceType jsonl = CreateEvalJsonlRunDataSourceType._('jsonl');

static const List<CreateEvalJsonlRunDataSourceType> values = [jsonl];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateEvalJsonlRunDataSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateEvalJsonlRunDataSourceType($value)'; } 
 }
/// A JsonlRunDataSource object with that specifies a JSONL file that matches the eval
/// 
final class CreateEvalJsonlRunDataSource {const CreateEvalJsonlRunDataSource({this.type = CreateEvalJsonlRunDataSourceType.jsonl, required this.source, });

factory CreateEvalJsonlRunDataSource.fromJson(Map<String, dynamic> json) { return CreateEvalJsonlRunDataSource(
  type: CreateEvalJsonlRunDataSourceType.fromJson(json['type'] as String),
  source: OneOf2.parse(json['source'], fromA: (v) => EvalJsonlFileContentSource.fromJson(v as Map<String, dynamic>), fromB: (v) => EvalJsonlFileIdSource.fromJson(v as Map<String, dynamic>),),
); }

/// The type of data source. Always `jsonl`.
final CreateEvalJsonlRunDataSourceType type;

/// Determines what populates the `item` namespace in the data source.
final CreateEvalJsonlRunDataSourceSource source;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'source': source.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('source'); } 
CreateEvalJsonlRunDataSource copyWith({CreateEvalJsonlRunDataSourceType? type, CreateEvalJsonlRunDataSourceSource? source, }) { return CreateEvalJsonlRunDataSource(
  type: type ?? this.type,
  source: source ?? this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateEvalJsonlRunDataSource &&
          type == other.type &&
          source == other.source; } 
@override int get hashCode { return Object.hash(type, source); } 
@override String toString() { return 'CreateEvalJsonlRunDataSource(type: $type, source: $source)'; } 
 }
