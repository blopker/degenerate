// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_single_id8_result.dart';import 'zones_messages2.dart';@immutable final class ResponseSingleId8 {const ResponseSingleId8({required this.errors, required this.messages, required this.success, this.result = const Omittable.absent(), });

factory ResponseSingleId8.fromJson(Map<String, dynamic> json) { return ResponseSingleId8(
  errors: (json['errors'] as List<dynamic>).map((e) => ZonesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ZonesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json.containsKey('result') ? Omittable(json['result'] != null ? ResponseSingleId8Result.fromJson(json['result'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

final List<ZonesMessages2> errors;

final List<ZonesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final Omittable<ResponseSingleId8Result?> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result.isPresent) 'result': result.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseSingleId8 copyWith({List<ZonesMessages2>? errors, List<ZonesMessages2>? messages, bool? success, Omittable<ResponseSingleId8Result?>? result, }) { return ResponseSingleId8(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingleId8 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ResponseSingleId8(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
