// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_errors2.dart';import 'r2_list_custom_domains_response.dart';@immutable final class R2ListCustomDomainsResponse2 {const R2ListCustomDomainsResponse2({required this.errors, required this.messages, required this.result, required this.success, });

factory R2ListCustomDomainsResponse2.fromJson(Map<String, dynamic> json) { return R2ListCustomDomainsResponse2(
  errors: (json['errors'] as List<dynamic>).map((e) => R2Errors2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
  result: R2ListCustomDomainsResponse.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<R2Errors2> errors;

final List<String> messages;

final R2ListCustomDomainsResponse result;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages,
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
R2ListCustomDomainsResponse2 copyWith({List<R2Errors2>? errors, List<String>? messages, R2ListCustomDomainsResponse? result, bool? success, }) { return R2ListCustomDomainsResponse2(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2ListCustomDomainsResponse2 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'R2ListCustomDomainsResponse2(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
