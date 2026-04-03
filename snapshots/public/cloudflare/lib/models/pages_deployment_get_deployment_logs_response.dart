// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_deployment_log.dart';import 'pages_messages2.dart';@immutable final class PagesDeploymentGetDeploymentLogsResponse {const PagesDeploymentGetDeploymentLogsResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory PagesDeploymentGetDeploymentLogsResponse.fromJson(Map<String, dynamic> json) { return PagesDeploymentGetDeploymentLogsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => PagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => PagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: PagesDeploymentLog.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<PagesMessages2> errors;

final List<PagesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final PagesDeploymentLog result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
PagesDeploymentGetDeploymentLogsResponse copyWith({List<PagesMessages2>? errors, List<PagesMessages2>? messages, bool? success, PagesDeploymentLog? result, }) { return PagesDeploymentGetDeploymentLogsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentGetDeploymentLogsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'PagesDeploymentGetDeploymentLogsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
