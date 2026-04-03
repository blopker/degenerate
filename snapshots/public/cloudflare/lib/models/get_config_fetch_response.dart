// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages22.dart';import 'scan_config.dart';@immutable final class GetConfigFetchResponse {const GetConfigFetchResponse({required this.errors, required this.messages, required this.success, this.result, });

factory GetConfigFetchResponse.fromJson(Map<String, dynamic> json) { return GetConfigFetchResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => Messages22.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Messages22.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => ScanConfig.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<Messages22> errors;

final List<Messages22> messages;

/// Whether the API call was successful.
final bool success;

final List<ScanConfig>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
GetConfigFetchResponse copyWith({List<Messages22>? errors, List<Messages22>? messages, bool? success, List<ScanConfig> Function()? result, }) { return GetConfigFetchResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetConfigFetchResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'GetConfigFetchResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
