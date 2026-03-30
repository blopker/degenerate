// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'alexandria_category.dart';import 'alexandria_messages2.dart';final class AlexandriaGetCategoriesResponse {const AlexandriaGetCategoriesResponse({required this.errors, required this.messages, required this.success, this.result, });

factory AlexandriaGetCategoriesResponse.fromJson(Map<String, dynamic> json) { return AlexandriaGetCategoriesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => AlexandriaMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AlexandriaMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => AlexandriaCategory.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AlexandriaMessages2> errors;

final List<AlexandriaMessages2> messages;

/// Indicates whether the API call was successful.
final bool success;

/// Returns the list of categories.
final List<AlexandriaCategory>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AlexandriaGetCategoriesResponse copyWith({List<AlexandriaMessages2>? errors, List<AlexandriaMessages2>? messages, bool? success, List<AlexandriaCategory> Function()? result, }) { return AlexandriaGetCategoriesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AlexandriaGetCategoriesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'AlexandriaGetCategoriesResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
