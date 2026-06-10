// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dnssec_dnssec.dart';import 'dnssec_messages2.dart';@immutable final class DnssecDnssecResponseSingle {const DnssecDnssecResponseSingle({required this.errors, required this.messages, required this.success, this.result, });

factory DnssecDnssecResponseSingle.fromJson(Map<String, dynamic> json) { return DnssecDnssecResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => DnssecMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnssecMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? DnssecDnssec.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<DnssecMessages2> errors;

final List<DnssecMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DnssecDnssec? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DnssecDnssecResponseSingle copyWith({List<DnssecMessages2>? errors, List<DnssecMessages2>? messages, bool? success, DnssecDnssec Function()? result, }) { return DnssecDnssecResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnssecDnssecResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'DnssecDnssecResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
