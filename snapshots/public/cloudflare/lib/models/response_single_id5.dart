// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_single_id5_result.dart';import 'spectrum_config_messages2.dart';@immutable final class ResponseSingleId5 {const ResponseSingleId5({required this.errors, required this.messages, required this.success, this.result, });

factory ResponseSingleId5.fromJson(Map<String, dynamic> json) { return ResponseSingleId5(
  errors: (json['errors'] as List<dynamic>).map((e) => SpectrumConfigMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SpectrumConfigMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? ResponseSingleId5Result.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<SpectrumConfigMessages2> errors;

final List<SpectrumConfigMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ResponseSingleId5Result? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseSingleId5 copyWith({List<SpectrumConfigMessages2>? errors, List<SpectrumConfigMessages2>? messages, bool? success, ResponseSingleId5Result? Function()? result, }) { return ResponseSingleId5(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingleId5 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ResponseSingleId5(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
