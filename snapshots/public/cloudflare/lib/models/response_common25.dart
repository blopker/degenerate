// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_messages2.dart';final class ResponseCommon25 {const ResponseCommon25({required this.errors, required this.messages, required this.success, });

factory ResponseCommon25.fromJson(Map<String, dynamic> json) { return ResponseCommon25(
  errors: (json['errors'] as List<dynamic>).map((e) => DnsRecordsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnsRecordsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<DnsRecordsMessages2> errors;

final List<DnsRecordsMessages2> messages;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCommon25 copyWith({List<DnsRecordsMessages2>? errors, List<DnsRecordsMessages2>? messages, bool? success, }) { return ResponseCommon25(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommon25 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'ResponseCommon25(errors: $errors, messages: $messages, success: $success)'; } 
 }
