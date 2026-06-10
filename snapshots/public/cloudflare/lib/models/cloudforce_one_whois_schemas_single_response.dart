// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudforce_one_whois_schemas_messages2.dart';import 'cloudforce_one_whois_whois.dart';@immutable final class CloudforceOneWhoisSchemasSingleResponse {const CloudforceOneWhoisSchemasSingleResponse({required this.errors, required this.messages, required this.success, this.result, });

factory CloudforceOneWhoisSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return CloudforceOneWhoisSchemasSingleResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => CloudforceOneWhoisSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CloudforceOneWhoisSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? CloudforceOneWhoisWhois.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<CloudforceOneWhoisSchemasMessages2> errors;

final List<CloudforceOneWhoisSchemasMessages2> messages;

/// Returns a boolean for the success/failure of the API call.
final bool success;

final CloudforceOneWhoisWhois? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
CloudforceOneWhoisSchemasSingleResponse copyWith({List<CloudforceOneWhoisSchemasMessages2>? errors, List<CloudforceOneWhoisSchemasMessages2>? messages, bool? success, CloudforceOneWhoisWhois Function()? result, }) { return CloudforceOneWhoisSchemasSingleResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneWhoisSchemasSingleResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'CloudforceOneWhoisSchemasSingleResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
