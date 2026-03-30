// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_schemas_messages2.dart';final class AvailablePageRulesSettingsListAvailablePageRulesSettingsResponse {const AvailablePageRulesSettingsListAvailablePageRulesSettingsResponse({required this.errors, required this.messages, required this.success, this.result, });

factory AvailablePageRulesSettingsListAvailablePageRulesSettingsResponse.fromJson(Map<String, dynamic> json) { return AvailablePageRulesSettingsListAvailablePageRulesSettingsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ZonesSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZonesSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
); }

final List<ZonesSchemasMessages2> errors;

final List<ZonesSchemasMessages2> messages;

/// Whether the API call was successful.
final bool success;

/// Settings available for the zone.
final List<Map<String,dynamic>>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AvailablePageRulesSettingsListAvailablePageRulesSettingsResponse copyWith({List<ZonesSchemasMessages2>? errors, List<ZonesSchemasMessages2>? messages, bool? success, List<Map<String, dynamic>> Function()? result, }) { return AvailablePageRulesSettingsListAvailablePageRulesSettingsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AvailablePageRulesSettingsListAvailablePageRulesSettingsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'AvailablePageRulesSettingsListAvailablePageRulesSettingsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
