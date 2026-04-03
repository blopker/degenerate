// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_components_schemas_messages2.dart';import 'aaa_silence.dart';@immutable final class AaaSilencesComponentsSchemasResponseCollection {const AaaSilencesComponentsSchemasResponseCollection({required this.errors, required this.messages, required this.success, this.result, });

factory AaaSilencesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AaaSilencesComponentsSchemasResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => AaaComponentsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AaaComponentsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => AaaSilence.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AaaComponentsSchemasMessages2> errors;

final List<AaaComponentsSchemasMessages2> messages;

/// Whether the API call was successful
final bool success;

final List<AaaSilence>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AaaSilencesComponentsSchemasResponseCollection copyWith({List<AaaComponentsSchemasMessages2>? errors, List<AaaComponentsSchemasMessages2>? messages, bool? success, List<AaaSilence> Function()? result, }) { return AaaSilencesComponentsSchemasResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaSilencesComponentsSchemasResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'AaaSilencesComponentsSchemasResponseCollection(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
