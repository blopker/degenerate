// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_error.dart';extension type const McnResourcesCatalogPolicyPreview(String value) {
factory McnResourcesCatalogPolicyPreview.fromJson(String json) => McnResourcesCatalogPolicyPreview(json);

String toJson() => value;

}
@immutable final class McnResourcesCatalogPolicyPreviewResponse {const McnResourcesCatalogPolicyPreviewResponse({required this.messages, required this.success, required this.errors, required this.result, });

factory McnResourcesCatalogPolicyPreviewResponse.fromJson(Map<String, dynamic> json) { return McnResourcesCatalogPolicyPreviewResponse(
  messages: (json['messages'] as List<dynamic>).map((e) => McnError.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => McnError.fromJson(e as Map<String, dynamic>)).toList(),
  result: McnResourcesCatalogPolicyPreview.fromJson(json['result'] as String),
); }

final List<McnError> messages;

final bool success;

final List<McnError> errors;

final McnResourcesCatalogPolicyPreview result;

Map<String, dynamic> toJson() { return {
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'errors': errors.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('errors') &&
      json.containsKey('result'); } 
McnResourcesCatalogPolicyPreviewResponse copyWith({List<McnError>? messages, bool? success, List<McnError>? errors, McnResourcesCatalogPolicyPreview? result, }) { return McnResourcesCatalogPolicyPreviewResponse(
  messages: messages ?? this.messages,
  success: success ?? this.success,
  errors: errors ?? this.errors,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnResourcesCatalogPolicyPreviewResponse &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(errors, other.errors) &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(messages), success, Object.hashAll(errors), result); } 
@override String toString() { return 'McnResourcesCatalogPolicyPreviewResponse(messages: $messages, success: $success, errors: $errors, result: $result)'; } 
 }
