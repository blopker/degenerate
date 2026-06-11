// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_messages2.dart';import 'response_single_id3_result.dart';@immutable final class ResponseSingleId3 {const ResponseSingleId3({required this.errors, required this.messages, required this.result, required this.success, });

factory ResponseSingleId3.fromJson(Map<String, dynamic> json) { return ResponseSingleId3(
  errors: (json['errors'] as List<dynamic>).map((e) => FirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => FirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] != null ? ResponseSingleId3Result.fromJson(json['result'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<FirewallMessages2> errors;

final List<FirewallMessages2> messages;

final ResponseSingleId3Result? result;

/// Defines whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  if (result != null) 'result': result?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseSingleId3 copyWith({List<FirewallMessages2>? errors, List<FirewallMessages2>? messages, ResponseSingleId3Result? Function()? result, bool? success, }) { return ResponseSingleId3(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingleId3 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ResponseSingleId3(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
