// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pages_messages2.dart';import 'pages_project.dart';final class PagesProjectCreateProjectResponse {const PagesProjectCreateProjectResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory PagesProjectCreateProjectResponse.fromJson(Map<String, dynamic> json) { return PagesProjectCreateProjectResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => PagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => PagesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: PagesProject.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<PagesMessages2> errors;

final List<PagesMessages2> messages;

/// Whether the API call was successful.
final bool success;

final PagesProject result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
PagesProjectCreateProjectResponse copyWith({List<PagesMessages2>? errors, List<PagesMessages2>? messages, bool? success, PagesProject? result, }) { return PagesProjectCreateProjectResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesProjectCreateProjectResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'PagesProjectCreateProjectResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
