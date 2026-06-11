// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_list.dart';import 'lists_messages2.dart';@immutable final class ListsListResponseCollection {const ListsListResponseCollection({required this.errors, required this.messages, required this.result, required this.success, });

factory ListsListResponseCollection.fromJson(Map<String, dynamic> json) { return ListsListResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => ListsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ListsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: ListsList.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<ListsMessages2> errors;

final List<ListsMessages2> messages;

final ListsList result;

/// Defines whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ListsListResponseCollection copyWith({List<ListsMessages2>? errors, List<ListsMessages2>? messages, ListsList? result, bool? success, }) { return ListsListResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ListsListResponseCollection(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
