// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_alert_types.dart';import 'aaa_components_schemas_messages2.dart';final class AaaAlertsResponseCollection {const AaaAlertsResponseCollection({required this.errors, required this.messages, required this.success, this.result, });

factory AaaAlertsResponseCollection.fromJson(Map<String, dynamic> json) { return AaaAlertsResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => AaaComponentsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AaaComponentsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => AaaAlertTypes.fromJson(e as Map<String, dynamic>)).toList())),
); }

final List<AaaComponentsSchemasMessages2> errors;

final List<AaaComponentsSchemasMessages2> messages;

/// Whether the API call was successful
final bool success;

final Map<String,List<AaaAlertTypes>>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((k, v) => MapEntry(k, v.map((e) => e.toJson()).toList())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AaaAlertsResponseCollection copyWith({List<AaaComponentsSchemasMessages2>? errors, List<AaaComponentsSchemasMessages2>? messages, bool? success, Map<String, List<AaaAlertTypes>> Function()? result, }) { return AaaAlertsResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaAlertsResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'AaaAlertsResponseCollection(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
