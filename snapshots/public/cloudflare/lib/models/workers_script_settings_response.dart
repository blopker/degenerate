// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_messages2.dart';import 'workers_script_settings_item.dart';final class WorkersScriptSettingsResponse {const WorkersScriptSettingsResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory WorkersScriptSettingsResponse.fromJson(Map<String, dynamic> json) { return WorkersScriptSettingsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => WorkersMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WorkersMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: WorkersScriptSettingsItem.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<WorkersMessages2> errors;

final List<WorkersMessages2> messages;

/// Whether the API call was successful.
final bool success;

final WorkersScriptSettingsItem result;

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
WorkersScriptSettingsResponse copyWith({List<WorkersMessages2>? errors, List<WorkersMessages2>? messages, bool? success, WorkersScriptSettingsItem? result, }) { return WorkersScriptSettingsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersScriptSettingsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'WorkersScriptSettingsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
