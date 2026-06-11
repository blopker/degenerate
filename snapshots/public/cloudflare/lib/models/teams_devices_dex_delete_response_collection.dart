// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'teams_devices_dex_delete_response_collection_result.dart';import 'teams_devices_messages2.dart';@immutable final class TeamsDevicesDexDeleteResponseCollection {const TeamsDevicesDexDeleteResponseCollection({required this.errors, required this.messages, required this.result, required this.success, });

factory TeamsDevicesDexDeleteResponseCollection.fromJson(Map<String, dynamic> json) { return TeamsDevicesDexDeleteResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => TeamsDevicesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => TeamsDevicesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: TeamsDevicesDexDeleteResponseCollectionResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<TeamsDevicesMessages2> errors;

final List<TeamsDevicesMessages2> messages;

final TeamsDevicesDexDeleteResponseCollectionResult result;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
TeamsDevicesDexDeleteResponseCollection copyWith({List<TeamsDevicesMessages2>? errors, List<TeamsDevicesMessages2>? messages, TeamsDevicesDexDeleteResponseCollectionResult? result, bool? success, }) { return TeamsDevicesDexDeleteResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDexDeleteResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'TeamsDevicesDexDeleteResponseCollection(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
