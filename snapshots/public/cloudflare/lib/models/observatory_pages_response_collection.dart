// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'observatory_messages2.dart';import 'observatory_pages_response_collection_result.dart';@immutable final class ObservatoryPagesResponseCollection {const ObservatoryPagesResponseCollection({required this.errors, required this.messages, required this.success, this.result, });

factory ObservatoryPagesResponseCollection.fromJson(Map<String, dynamic> json) { return ObservatoryPagesResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => ObservatoryMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ObservatoryMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => ObservatoryPagesResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ObservatoryMessages2> errors;

final List<ObservatoryMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<ObservatoryPagesResponseCollectionResult>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ObservatoryPagesResponseCollection copyWith({List<ObservatoryMessages2>? errors, List<ObservatoryMessages2>? messages, bool? success, List<ObservatoryPagesResponseCollectionResult> Function()? result, }) { return ObservatoryPagesResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryPagesResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'ObservatoryPagesResponseCollection(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
