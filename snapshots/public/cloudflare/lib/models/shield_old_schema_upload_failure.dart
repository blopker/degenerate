// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_messages2.dart';import 'shield_old_schema_upload_details_errors_critical.dart';@immutable final class ShieldOldSchemaUploadFailure {const ShieldOldSchemaUploadFailure({required this.errors, required this.messages, required this.result, required this.success, this.uploadDetails, });

factory ShieldOldSchemaUploadFailure.fromJson(Map<String, dynamic> json) { return ShieldOldSchemaUploadFailure(
  errors: (json['errors'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
  uploadDetails: json['upload_details'] != null ? ShieldOldSchemaUploadDetailsErrorsCritical.fromJson(json['upload_details'] as Map<String, dynamic>) : null,
); }

final List<ShieldMessages2> errors;

final List<ShieldMessages2> messages;

final Map<String,dynamic>? result;

/// Whether the API call was successful.
final bool success;

final ShieldOldSchemaUploadDetailsErrorsCritical? uploadDetails;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
  if (uploadDetails != null) 'upload_details': uploadDetails?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ShieldOldSchemaUploadFailure copyWith({List<ShieldMessages2>? errors, List<ShieldMessages2>? messages, Map<String, dynamic>? Function()? result, bool? success, ShieldOldSchemaUploadDetailsErrorsCritical Function()? uploadDetails, }) { return ShieldOldSchemaUploadFailure(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  uploadDetails: uploadDetails != null ? uploadDetails() : this.uploadDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOldSchemaUploadFailure &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success &&
          uploadDetails == other.uploadDetails; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success, uploadDetails); } 
@override String toString() { return 'ShieldOldSchemaUploadFailure(errors: $errors, messages: $messages, result: $result, success: $success, uploadDetails: $uploadDetails)'; } 
 }
