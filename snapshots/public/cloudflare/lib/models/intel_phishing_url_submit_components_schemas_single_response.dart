// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_phishing_url_submit.dart';import 'intel_schemas_messages2.dart';@immutable final class IntelPhishingUrlSubmitComponentsSchemasSingleResponse {const IntelPhishingUrlSubmitComponentsSchemasSingleResponse({required this.errors, required this.messages, required this.success, this.result, });

factory IntelPhishingUrlSubmitComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return IntelPhishingUrlSubmitComponentsSchemasSingleResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => IntelSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => IntelSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? IntelPhishingUrlSubmit.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<IntelSchemasMessages2> errors;

final List<IntelSchemasMessages2> messages;

/// Whether the API call was successful.
final bool success;

final IntelPhishingUrlSubmit? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
IntelPhishingUrlSubmitComponentsSchemasSingleResponse copyWith({List<IntelSchemasMessages2>? errors, List<IntelSchemasMessages2>? messages, bool? success, IntelPhishingUrlSubmit Function()? result, }) { return IntelPhishingUrlSubmitComponentsSchemasSingleResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelPhishingUrlSubmitComponentsSchemasSingleResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'IntelPhishingUrlSubmitComponentsSchemasSingleResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
