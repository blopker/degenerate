// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloud_connector_messages2.dart';import 'cloud_connector_rule.dart';final class ZoneCloudConenctorRulesPutResponse {const ZoneCloudConenctorRulesPutResponse({required this.errors, required this.messages, required this.success, this.result, });

factory ZoneCloudConenctorRulesPutResponse.fromJson(Map<String, dynamic> json) { return ZoneCloudConenctorRulesPutResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => CloudConnectorMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CloudConnectorMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => CloudConnectorRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<CloudConnectorMessages2> errors;

final List<CloudConnectorMessages2> messages;

/// Whether the API call was successful.
final bool success;

/// List of Cloud Connector rules
final List<CloudConnectorRule>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ZoneCloudConenctorRulesPutResponse copyWith({List<CloudConnectorMessages2>? errors, List<CloudConnectorMessages2>? messages, bool? success, List<CloudConnectorRule> Function()? result, }) { return ZoneCloudConenctorRulesPutResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCloudConenctorRulesPutResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'ZoneCloudConenctorRulesPutResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
