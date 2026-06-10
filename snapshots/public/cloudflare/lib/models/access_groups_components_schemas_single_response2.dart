// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_components_schemas_groups.dart';import 'access_messages2.dart';@immutable final class AccessGroupsComponentsSchemasSingleResponse2 {const AccessGroupsComponentsSchemasSingleResponse2({required this.errors, required this.messages, required this.success, this.result, });

factory AccessGroupsComponentsSchemasSingleResponse2.fromJson(Map<String, dynamic> json) { return AccessGroupsComponentsSchemasSingleResponse2(
  errors: (json['errors'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? AccessComponentsSchemasGroups.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<AccessMessages2> errors;

final List<AccessMessages2> messages;

/// Whether the API call was successful.
final bool success;

final AccessComponentsSchemasGroups? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AccessGroupsComponentsSchemasSingleResponse2 copyWith({List<AccessMessages2>? errors, List<AccessMessages2>? messages, bool? success, AccessComponentsSchemasGroups Function()? result, }) { return AccessGroupsComponentsSchemasSingleResponse2(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGroupsComponentsSchemasSingleResponse2 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'AccessGroupsComponentsSchemasSingleResponse2(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
