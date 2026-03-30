// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_deployment.dart';import 'pages_messages2.dart';final class PagesDeploymentRollbackDeploymentResponse {const PagesDeploymentRollbackDeploymentResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory PagesDeploymentRollbackDeploymentResponse.fromJson(Map<String, dynamic> json) { return PagesDeploymentRollbackDeploymentResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => PagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => PagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: PagesDeployment.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<PagesMessages2> errors;

final List<PagesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final PagesDeployment result;

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
PagesDeploymentRollbackDeploymentResponse copyWith({List<PagesMessages2>? errors, List<PagesMessages2>? messages, bool? success, PagesDeployment? result, }) { return PagesDeploymentRollbackDeploymentResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentRollbackDeploymentResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'PagesDeploymentRollbackDeploymentResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
