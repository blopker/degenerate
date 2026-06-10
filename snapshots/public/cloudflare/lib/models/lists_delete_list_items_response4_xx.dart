// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_messages2.dart';@immutable final class ListsDeleteListItemsResponse4Xx {const ListsDeleteListItemsResponse4Xx({required this.result, required this.errors, required this.messages, required this.success, });

factory ListsDeleteListItemsResponse4Xx.fromJson(Map<String, dynamic> json) { return ListsDeleteListItemsResponse4Xx(
  result: json['result'] as Map<String, dynamic>?,
  errors: (json['errors'] as List<dynamic>).map((e) => ListsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ListsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final Map<String,dynamic>? result;

final List<ListsMessages2> errors;

final List<ListsMessages2> messages;

/// Defines whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'result': ?result,
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ListsDeleteListItemsResponse4Xx copyWith({Map<String, dynamic>? Function()? result, List<ListsMessages2>? errors, List<ListsMessages2>? messages, bool? success, }) { return ListsDeleteListItemsResponse4Xx(
  result: result != null ? result() : this.result,
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsDeleteListItemsResponse4Xx &&
          result == other.result &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'ListsDeleteListItemsResponse4Xx(result: $result, errors: $errors, messages: $messages, success: $success)'; } 
 }
