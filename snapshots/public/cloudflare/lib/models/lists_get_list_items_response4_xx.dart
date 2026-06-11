// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_get_list_items_response4_xx_result_info.dart';import 'lists_messages2.dart';@immutable final class ListsGetListItemsResponse4Xx {const ListsGetListItemsResponse4Xx({required this.result, required this.errors, required this.messages, required this.success, this.resultInfo, });

factory ListsGetListItemsResponse4Xx.fromJson(Map<String, dynamic> json) { return ListsGetListItemsResponse4Xx(
  result: json['result'] as Map<String, dynamic>?,
  resultInfo: json['result_info'] != null ? ListsGetListItemsResponse4XxResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  errors: (json['errors'] as List<dynamic>).map((e) => ListsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ListsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final Map<String,dynamic>? result;

final ListsGetListItemsResponse4XxResultInfo? resultInfo;

final List<ListsMessages2> errors;

final List<ListsMessages2> messages;

/// Defines whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'result': ?result,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ListsGetListItemsResponse4Xx copyWith({Map<String, dynamic>? Function()? result, ListsGetListItemsResponse4XxResultInfo Function()? resultInfo, List<ListsMessages2>? errors, List<ListsMessages2>? messages, bool? success, }) { return ListsGetListItemsResponse4Xx(
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsGetListItemsResponse4Xx &&
          result == other.result &&
          resultInfo == other.resultInfo &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, resultInfo, Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'ListsGetListItemsResponse4Xx(result: $result, resultInfo: $resultInfo, errors: $errors, messages: $messages, success: $success)'; } 
 }
