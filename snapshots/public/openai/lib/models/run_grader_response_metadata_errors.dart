// GENERATED CODE - DO NOT MODIFY BY HAND

final class RunGraderResponseMetadataErrors {const RunGraderResponseMetadataErrors({required this.formulaParseError, required this.sampleParseError, required this.truncatedObservationError, required this.unresponsiveRewardError, required this.invalidVariableError, required this.otherError, required this.pythonGraderServerError, required this.pythonGraderServerErrorType, required this.pythonGraderRuntimeError, required this.pythonGraderRuntimeErrorDetails, required this.modelGraderServerError, required this.modelGraderRefusalError, required this.modelGraderParseError, required this.modelGraderServerErrorDetails, });

factory RunGraderResponseMetadataErrors.fromJson(Map<String, dynamic> json) { return RunGraderResponseMetadataErrors(
  formulaParseError: json['formula_parse_error'] as bool,
  sampleParseError: json['sample_parse_error'] as bool,
  truncatedObservationError: json['truncated_observation_error'] as bool,
  unresponsiveRewardError: json['unresponsive_reward_error'] as bool,
  invalidVariableError: json['invalid_variable_error'] as bool,
  otherError: json['other_error'] as bool,
  pythonGraderServerError: json['python_grader_server_error'] as bool,
  pythonGraderServerErrorType: json['python_grader_server_error_type'] as String?,
  pythonGraderRuntimeError: json['python_grader_runtime_error'] as bool,
  pythonGraderRuntimeErrorDetails: json['python_grader_runtime_error_details'] as String?,
  modelGraderServerError: json['model_grader_server_error'] as bool,
  modelGraderRefusalError: json['model_grader_refusal_error'] as bool,
  modelGraderParseError: json['model_grader_parse_error'] as bool,
  modelGraderServerErrorDetails: json['model_grader_server_error_details'] as String?,
); }

final bool formulaParseError;

final bool sampleParseError;

final bool truncatedObservationError;

final bool unresponsiveRewardError;

final bool invalidVariableError;

final bool otherError;

final bool pythonGraderServerError;

final String? pythonGraderServerErrorType;

final bool pythonGraderRuntimeError;

final String? pythonGraderRuntimeErrorDetails;

final bool modelGraderServerError;

final bool modelGraderRefusalError;

final bool modelGraderParseError;

final String? modelGraderServerErrorDetails;

Map<String, dynamic> toJson() { return {
  'formula_parse_error': formulaParseError,
  'sample_parse_error': sampleParseError,
  'truncated_observation_error': truncatedObservationError,
  'unresponsive_reward_error': unresponsiveRewardError,
  'invalid_variable_error': invalidVariableError,
  'other_error': otherError,
  'python_grader_server_error': pythonGraderServerError,
  'python_grader_server_error_type': ?pythonGraderServerErrorType,
  'python_grader_runtime_error': pythonGraderRuntimeError,
  'python_grader_runtime_error_details': ?pythonGraderRuntimeErrorDetails,
  'model_grader_server_error': modelGraderServerError,
  'model_grader_refusal_error': modelGraderRefusalError,
  'model_grader_parse_error': modelGraderParseError,
  'model_grader_server_error_details': ?modelGraderServerErrorDetails,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('formula_parse_error') && json['formula_parse_error'] is bool &&
      json.containsKey('sample_parse_error') && json['sample_parse_error'] is bool &&
      json.containsKey('truncated_observation_error') && json['truncated_observation_error'] is bool &&
      json.containsKey('unresponsive_reward_error') && json['unresponsive_reward_error'] is bool &&
      json.containsKey('invalid_variable_error') && json['invalid_variable_error'] is bool &&
      json.containsKey('other_error') && json['other_error'] is bool &&
      json.containsKey('python_grader_server_error') && json['python_grader_server_error'] is bool &&
      json.containsKey('python_grader_server_error_type') && json['python_grader_server_error_type'] is String &&
      json.containsKey('python_grader_runtime_error') && json['python_grader_runtime_error'] is bool &&
      json.containsKey('python_grader_runtime_error_details') && json['python_grader_runtime_error_details'] is String &&
      json.containsKey('model_grader_server_error') && json['model_grader_server_error'] is bool &&
      json.containsKey('model_grader_refusal_error') && json['model_grader_refusal_error'] is bool &&
      json.containsKey('model_grader_parse_error') && json['model_grader_parse_error'] is bool &&
      json.containsKey('model_grader_server_error_details') && json['model_grader_server_error_details'] is String; } 
RunGraderResponseMetadataErrors copyWith({bool? formulaParseError, bool? sampleParseError, bool? truncatedObservationError, bool? unresponsiveRewardError, bool? invalidVariableError, bool? otherError, bool? pythonGraderServerError, String? Function()? pythonGraderServerErrorType, bool? pythonGraderRuntimeError, String? Function()? pythonGraderRuntimeErrorDetails, bool? modelGraderServerError, bool? modelGraderRefusalError, bool? modelGraderParseError, String? Function()? modelGraderServerErrorDetails, }) { return RunGraderResponseMetadataErrors(
  formulaParseError: formulaParseError ?? this.formulaParseError,
  sampleParseError: sampleParseError ?? this.sampleParseError,
  truncatedObservationError: truncatedObservationError ?? this.truncatedObservationError,
  unresponsiveRewardError: unresponsiveRewardError ?? this.unresponsiveRewardError,
  invalidVariableError: invalidVariableError ?? this.invalidVariableError,
  otherError: otherError ?? this.otherError,
  pythonGraderServerError: pythonGraderServerError ?? this.pythonGraderServerError,
  pythonGraderServerErrorType: pythonGraderServerErrorType != null ? pythonGraderServerErrorType() : this.pythonGraderServerErrorType,
  pythonGraderRuntimeError: pythonGraderRuntimeError ?? this.pythonGraderRuntimeError,
  pythonGraderRuntimeErrorDetails: pythonGraderRuntimeErrorDetails != null ? pythonGraderRuntimeErrorDetails() : this.pythonGraderRuntimeErrorDetails,
  modelGraderServerError: modelGraderServerError ?? this.modelGraderServerError,
  modelGraderRefusalError: modelGraderRefusalError ?? this.modelGraderRefusalError,
  modelGraderParseError: modelGraderParseError ?? this.modelGraderParseError,
  modelGraderServerErrorDetails: modelGraderServerErrorDetails != null ? modelGraderServerErrorDetails() : this.modelGraderServerErrorDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunGraderResponseMetadataErrors &&
          formulaParseError == other.formulaParseError &&
          sampleParseError == other.sampleParseError &&
          truncatedObservationError == other.truncatedObservationError &&
          unresponsiveRewardError == other.unresponsiveRewardError &&
          invalidVariableError == other.invalidVariableError &&
          otherError == other.otherError &&
          pythonGraderServerError == other.pythonGraderServerError &&
          pythonGraderServerErrorType == other.pythonGraderServerErrorType &&
          pythonGraderRuntimeError == other.pythonGraderRuntimeError &&
          pythonGraderRuntimeErrorDetails == other.pythonGraderRuntimeErrorDetails &&
          modelGraderServerError == other.modelGraderServerError &&
          modelGraderRefusalError == other.modelGraderRefusalError &&
          modelGraderParseError == other.modelGraderParseError &&
          modelGraderServerErrorDetails == other.modelGraderServerErrorDetails; } 
@override int get hashCode { return Object.hash(formulaParseError, sampleParseError, truncatedObservationError, unresponsiveRewardError, invalidVariableError, otherError, pythonGraderServerError, pythonGraderServerErrorType, pythonGraderRuntimeError, pythonGraderRuntimeErrorDetails, modelGraderServerError, modelGraderRefusalError, modelGraderParseError, modelGraderServerErrorDetails); } 
@override String toString() { return 'RunGraderResponseMetadataErrors(formulaParseError: $formulaParseError, sampleParseError: $sampleParseError, truncatedObservationError: $truncatedObservationError, unresponsiveRewardError: $unresponsiveRewardError, invalidVariableError: $invalidVariableError, otherError: $otherError, pythonGraderServerError: $pythonGraderServerError, pythonGraderServerErrorType: $pythonGraderServerErrorType, pythonGraderRuntimeError: $pythonGraderRuntimeError, pythonGraderRuntimeErrorDetails: $pythonGraderRuntimeErrorDetails, modelGraderServerError: $modelGraderServerError, modelGraderRefusalError: $modelGraderRefusalError, modelGraderParseError: $modelGraderParseError, modelGraderServerErrorDetails: $modelGraderServerErrorDetails)'; } 
 }
