// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_list.dart';import 'lists_messages2.dart';@immutable final class ListsListsResponseCollection {const ListsListsResponseCollection({required this.result, required this.errors, required this.messages, required this.success, });

factory ListsListsResponseCollection.fromJson(Map<String, dynamic> json) { return ListsListsResponseCollection(
  result: (json['result'] as List<dynamic>).map((e) => ListsList.fromJson(e as Map<String, dynamic>)).toList(),
  errors: (json['errors'] as List<dynamic>).map((e) => ListsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ListsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<ListsList> result;

final List<ListsMessages2> errors;

final List<ListsMessages2> messages;

/// Defines whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ListsListsResponseCollection copyWith({List<ListsList>? result, List<ListsMessages2>? errors, List<ListsMessages2>? messages, bool? success, }) { return ListsListsResponseCollection(
  result: result ?? this.result,
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListsResponseCollection &&
          listEquals(result, other.result) &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(result), Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'ListsListsResponseCollection(result: $result, errors: $errors, messages: $messages, success: $success)'; } 
 }
