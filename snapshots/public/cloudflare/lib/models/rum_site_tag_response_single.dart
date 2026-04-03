// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rum_messages2.dart';import 'rum_site_tag_response_single_result.dart';@immutable final class RumSiteTagResponseSingle {const RumSiteTagResponseSingle({required this.errors, required this.messages, required this.success, this.result, });

factory RumSiteTagResponseSingle.fromJson(Map<String, dynamic> json) { return RumSiteTagResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => RumMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => RumMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? RumSiteTagResponseSingleResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<RumMessages2> errors;

final List<RumMessages2> messages;

/// Whether the API call was successful.
final bool success;

final RumSiteTagResponseSingleResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
RumSiteTagResponseSingle copyWith({List<RumMessages2>? errors, List<RumMessages2>? messages, bool? success, RumSiteTagResponseSingleResult Function()? result, }) { return RumSiteTagResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RumSiteTagResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'RumSiteTagResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
