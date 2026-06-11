// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bundle_messages2.dart';import 'response_single55_result.dart';@immutable final class ResponseSingle55 {const ResponseSingle55({required this.errors, required this.messages, required this.result, required this.success, });

factory ResponseSingle55.fromJson(Map<String, dynamic> json) { return ResponseSingle55(
  errors: (json['errors'] as List<dynamic>).map((e) => BundleMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => BundleMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: OneOf2.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => v as String,),
  success: json['success'] as bool,
); }

final List<BundleMessages2> errors;

final List<BundleMessages2> messages;

final ResponseSingle55Result result;

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
ResponseSingle55 copyWith({List<BundleMessages2>? errors, List<BundleMessages2>? messages, ResponseSingle55Result? result, bool? success, }) { return ResponseSingle55(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingle55 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ResponseSingle55(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
