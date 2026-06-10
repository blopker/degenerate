// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_item.dart';import 'lists_items_list_response_collection_result_info.dart';import 'lists_list_item_asn_full.dart';import 'lists_list_item_hostname_full.dart';import 'lists_list_item_ip_full.dart';import 'lists_list_item_redirect_full.dart';import 'lists_messages2.dart';@immutable final class ListsItemsListResponseCollection {const ListsItemsListResponseCollection({required this.result, required this.errors, required this.messages, required this.success, this.resultInfo, });

factory ListsItemsListResponseCollection.fromJson(Map<String, dynamic> json) { return ListsItemsListResponseCollection(
  result: (json['result'] as List<dynamic>).map((e) => OneOf4.parse(e, fromA: (v) => ListsListItemIpFull.fromJson(v as Map<String, dynamic>), fromB: (v) => ListsListItemHostnameFull.fromJson(v as Map<String, dynamic>), fromC: (v) => ListsListItemRedirectFull.fromJson(v as Map<String, dynamic>), fromD: (v) => ListsListItemAsnFull.fromJson(v as Map<String, dynamic>),)).toList(),
  errors: (json['errors'] as List<dynamic>).map((e) => ListsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ListsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ListsItemsListResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<ListsItem> result;

final List<ListsMessages2> errors;

final List<ListsMessages2> messages;

/// Defines whether the API call was successful.
final bool success;

final ListsItemsListResponseCollectionResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ListsItemsListResponseCollection copyWith({List<ListsItem>? result, List<ListsMessages2>? errors, List<ListsMessages2>? messages, bool? success, ListsItemsListResponseCollectionResultInfo Function()? resultInfo, }) { return ListsItemsListResponseCollection(
  result: result ?? this.result,
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsItemsListResponseCollection &&
          listEquals(result, other.result) &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(result), Object.hashAll(errors), Object.hashAll(messages), success, resultInfo); } 
@override String toString() { return 'ListsItemsListResponseCollection(result: $result, errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo)'; } 
 }
