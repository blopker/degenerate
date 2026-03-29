// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_eval_completions_run_data_source.dart';import 'create_eval_jsonl_run_data_source.dart';import 'create_eval_responses_run_data_source.dart';import 'create_eval_run_request_data_source.dart';final class CreateEvalRunRequest {const CreateEvalRunRequest({this.name, this.metadata, required this.dataSource, });

factory CreateEvalRunRequest.fromJson(Map<String, dynamic> json) { return CreateEvalRunRequest(
  name: json['name'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  dataSource: OneOf3.parse(json['data_source'], fromA: (v) => CreateEvalJsonlRunDataSource.fromJson(v as Map<String, dynamic>), fromB: (v) => CreateEvalCompletionsRunDataSource.fromJson(v as Map<String, dynamic>), fromC: (v) => CreateEvalResponsesRunDataSource.fromJson(v as Map<String, dynamic>),),
); }

/// The name of the run.
final String? name;

final Map<String,String>? metadata;

/// Details about the run's data source.
final CreateEvalRunRequestDataSource dataSource;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'metadata': ?metadata,
  'data_source': dataSource.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data_source'); } 
CreateEvalRunRequest copyWith({String Function()? name, Map<String, String>? Function()? metadata, CreateEvalRunRequestDataSource? dataSource, }) { return CreateEvalRunRequest(
  name: name != null ? name() : this.name,
  metadata: metadata != null ? metadata() : this.metadata,
  dataSource: dataSource ?? this.dataSource,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateEvalRunRequest &&
          name == other.name &&
          metadata == other.metadata &&
          dataSource == other.dataSource; } 
@override int get hashCode { return Object.hash(name, metadata, dataSource); } 
@override String toString() { return 'CreateEvalRunRequest(name: $name, metadata: $metadata, dataSource: $dataSource)'; } 
 }
