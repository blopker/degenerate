// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudforce_one_whois_messages2.dart';@immutable final class WhoisRecordGetWhoisRecordResponse4Xx {const WhoisRecordGetWhoisRecordResponse4Xx({required this.errors, required this.messages, required this.success, required this.result, });

factory WhoisRecordGetWhoisRecordResponse4Xx.fromJson(Map<String, dynamic> json) { return WhoisRecordGetWhoisRecordResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => CloudforceOneWhoisMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CloudforceOneWhoisMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] as Map<String, dynamic>?,
); }

final List<CloudforceOneWhoisMessages2> errors;

final List<CloudforceOneWhoisMessages2> messages;

/// Returns a boolean for the success/failure of the API call.
final bool success;

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
WhoisRecordGetWhoisRecordResponse4Xx copyWith({List<CloudforceOneWhoisMessages2>? errors, List<CloudforceOneWhoisMessages2>? messages, bool? success, Map<String, dynamic>? Function()? result, }) { return WhoisRecordGetWhoisRecordResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WhoisRecordGetWhoisRecordResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'WhoisRecordGetWhoisRecordResponse4Xx(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
