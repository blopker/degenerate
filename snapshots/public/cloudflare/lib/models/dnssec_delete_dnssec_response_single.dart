// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dnssec_messages2.dart';@immutable final class DnssecDeleteDnssecResponseSingle {const DnssecDeleteDnssecResponseSingle({required this.errors, required this.messages, required this.success, this.result, });

factory DnssecDeleteDnssecResponseSingle.fromJson(Map<String, dynamic> json) { return DnssecDeleteDnssecResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => DnssecMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnssecMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] as String?,
); }

final List<DnssecMessages2> errors;

final List<DnssecMessages2> messages;

/// Whether the API call was successful.
final bool success;

final String? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DnssecDeleteDnssecResponseSingle copyWith({List<DnssecMessages2>? errors, List<DnssecMessages2>? messages, bool? success, String Function()? result, }) { return DnssecDeleteDnssecResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnssecDeleteDnssecResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'DnssecDeleteDnssecResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
