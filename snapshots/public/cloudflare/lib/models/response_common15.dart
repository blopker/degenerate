// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudforce_one_whois_schemas_messages2.dart';final class ResponseCommon15 {const ResponseCommon15({required this.errors, required this.messages, required this.success, });

factory ResponseCommon15.fromJson(Map<String, dynamic> json) { return ResponseCommon15(
  errors: (json['errors'] as List<dynamic>).map((e) => CloudforceOneWhoisSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CloudforceOneWhoisSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<CloudforceOneWhoisSchemasMessages2> errors;

final List<CloudforceOneWhoisSchemasMessages2> messages;

/// Returns a boolean for the success/failure of the API call.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCommon15 copyWith({List<CloudforceOneWhoisSchemasMessages2>? errors, List<CloudforceOneWhoisSchemasMessages2>? messages, bool? success, }) { return ResponseCommon15(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommon15 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'ResponseCommon15(errors: $errors, messages: $messages, success: $success)'; } 
 }
