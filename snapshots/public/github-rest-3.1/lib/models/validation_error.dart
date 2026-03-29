// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'validation_error_errors.dart';/// Validation Error
final class ValidationError {const ValidationError({required this.message, required this.documentationUrl, this.errors, });

factory ValidationError.fromJson(Map<String, dynamic> json) { return ValidationError(
  message: json['message'] as String,
  documentationUrl: json['documentation_url'] as String,
  errors: (json['errors'] as List<dynamic>?)?.map((e) => ValidationErrorErrors.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String message;

final String documentationUrl;

final List<ValidationErrorErrors>? errors;

Map<String, dynamic> toJson() { return {
  'message': message,
  'documentation_url': documentationUrl,
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String &&
      json.containsKey('documentation_url') && json['documentation_url'] is String; } 
ValidationError copyWith({String? message, String? documentationUrl, List<ValidationErrorErrors> Function()? errors, }) { return ValidationError(
  message: message ?? this.message,
  documentationUrl: documentationUrl ?? this.documentationUrl,
  errors: errors != null ? errors() : this.errors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ValidationError &&
          message == other.message &&
          documentationUrl == other.documentationUrl &&
          listEquals(errors, other.errors); } 
@override int get hashCode { return Object.hash(message, documentationUrl, Object.hashAll(errors ?? const [])); } 
@override String toString() { return 'ValidationError(message: $message, documentationUrl: $documentationUrl, errors: $errors)'; } 
 }
