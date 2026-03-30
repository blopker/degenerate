// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_eval_custom_data_source_config.dart';import 'create_eval_label_model_grader.dart';import 'create_eval_logs_data_source_config.dart';import 'create_eval_request_data_source_config.dart';import 'create_eval_request_testing_criteria.dart';import 'create_eval_stored_completions_data_source_config.dart';import 'eval_grader_python.dart';import 'eval_grader_score_model.dart';import 'eval_grader_text_similarity.dart';import 'grader_string_check.dart';final class CreateEvalRequest {const CreateEvalRequest({this.name, this.metadata, required this.dataSourceConfig, required this.testingCriteria, });

factory CreateEvalRequest.fromJson(Map<String, dynamic> json) { return CreateEvalRequest(
  name: json['name'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  dataSourceConfig: OneOf3.parse(json['data_source_config'], fromA: (v) => CreateEvalCustomDataSourceConfig.fromJson(v as Map<String, dynamic>), fromB: (v) => CreateEvalLogsDataSourceConfig.fromJson(v as Map<String, dynamic>), fromC: (v) => CreateEvalStoredCompletionsDataSourceConfig.fromJson(v as Map<String, dynamic>),),
  testingCriteria: (json['testing_criteria'] as List<dynamic>).map((e) => OneOf5.parse(e, fromA: (v) => CreateEvalLabelModelGrader.fromJson(v as Map<String, dynamic>), fromB: (v) => GraderStringCheck.fromJson(v as Map<String, dynamic>), fromC: (v) => EvalGraderTextSimilarity.fromJson(v as Map<String, dynamic>), fromD: (v) => EvalGraderPython.fromJson(v as Map<String, dynamic>), fromE: (v) => EvalGraderScoreModel.fromJson(v as Map<String, dynamic>),)).toList(),
); }

/// The name of the evaluation.
final String? name;

final Map<String,String>? metadata;

/// The configuration for the data source used for the evaluation runs. Dictates the schema of the data used in the evaluation.
final CreateEvalRequestDataSourceConfig dataSourceConfig;

/// A list of graders for all eval runs in this group. Graders can reference variables in the data source using double curly braces notation, like `{{item.variable_name}}`. To reference the model's output, use the `sample` namespace (ie, `{{sample.output_text}}`).
final List<CreateEvalRequestTestingCriteria> testingCriteria;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'metadata': ?metadata,
  'data_source_config': dataSourceConfig.toJson(),
  'testing_criteria': testingCriteria.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data_source_config') &&
      json.containsKey('testing_criteria'); } 
CreateEvalRequest copyWith({String Function()? name, Map<String, String>? Function()? metadata, CreateEvalRequestDataSourceConfig? dataSourceConfig, List<CreateEvalRequestTestingCriteria>? testingCriteria, }) { return CreateEvalRequest(
  name: name != null ? name() : this.name,
  metadata: metadata != null ? metadata() : this.metadata,
  dataSourceConfig: dataSourceConfig ?? this.dataSourceConfig,
  testingCriteria: testingCriteria ?? this.testingCriteria,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateEvalRequest &&
          name == other.name &&
          metadata == other.metadata &&
          dataSourceConfig == other.dataSourceConfig &&
          listEquals(testingCriteria, other.testingCriteria); } 
@override int get hashCode { return Object.hash(name, metadata, dataSourceConfig, Object.hashAll(testingCriteria)); } 
@override String toString() { return 'CreateEvalRequest(name: $name, metadata: $metadata, dataSourceConfig: $dataSourceConfig, testingCriteria: $testingCriteria)'; } 
 }
