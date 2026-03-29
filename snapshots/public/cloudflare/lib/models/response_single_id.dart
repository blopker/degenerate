// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_purge_messages2.dart';import 'response_single_id_result.dart';final class ResponseSingleId {const ResponseSingleId({required this.errors, required this.messages, this.result, required this.success, });

factory ResponseSingleId.fromJson(Map<String, dynamic> json) { return ResponseSingleId(
  errors: (json['errors'] as List<dynamic>).map((e) => CachePurgeMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CachePurgeMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] != null ? ResponseSingleIdResult.fromJson(json['result'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<CachePurgeMessages2> errors;

final List<CachePurgeMessages2> messages;

final ResponseSingleIdResult? result;

/// Indicates the API call's success or failure.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  if (result != null) 'result': result?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseSingleId copyWith({List<CachePurgeMessages2>? errors, List<CachePurgeMessages2>? messages, ResponseSingleIdResult? Function()? result, bool? success, }) { return ResponseSingleId(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingleId &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ResponseSingleId(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
