// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones0_hold_delete_response_result.dart';import 'zones_messages2.dart';@immutable final class Zones0HoldDeleteResponse {const Zones0HoldDeleteResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory Zones0HoldDeleteResponse.fromJson(Map<String, dynamic> json) { return Zones0HoldDeleteResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ZonesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZonesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: Zones0HoldDeleteResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<ZonesMessages2> errors;

final List<ZonesMessages2> messages;

final Zones0HoldDeleteResponseResult result;

/// Whether the API call was successful
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
Zones0HoldDeleteResponse copyWith({List<ZonesMessages2>? errors, List<ZonesMessages2>? messages, Zones0HoldDeleteResponseResult? result, bool? success, }) { return Zones0HoldDeleteResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Zones0HoldDeleteResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'Zones0HoldDeleteResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
