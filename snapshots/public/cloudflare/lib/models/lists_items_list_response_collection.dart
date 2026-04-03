// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_item.dart';import 'lists_items_list_response_collection_result_info.dart';import 'lists_list_item_asn_object.dart';import 'lists_list_item_hostname_object.dart';import 'lists_list_item_ip_object.dart';import 'lists_list_item_redirect_object.dart';@immutable final class ListsItemsListResponseCollection {const ListsItemsListResponseCollection({this.result, this.resultInfo, });

factory ListsItemsListResponseCollection.fromJson(Map<String, dynamic> json) { return ListsItemsListResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf4.parse(e, fromA: (v) => ListsListItemIpObject.fromJson(v as Map<String, dynamic>), fromB: (v) => ListsListItemHostnameObject.fromJson(v as Map<String, dynamic>), fromC: (v) => ListsListItemRedirectObject.fromJson(v as Map<String, dynamic>), fromD: (v) => ListsListItemAsnObject.fromJson(v as Map<String, dynamic>),)).toList(),
  resultInfo: json['result_info'] != null ? ListsItemsListResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<ListsItem>? result;

final ListsItemsListResponseCollectionResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result', 'result_info'}.contains(key)); } 
ListsItemsListResponseCollection copyWith({List<ListsItem> Function()? result, ListsItemsListResponseCollectionResultInfo Function()? resultInfo, }) { return ListsItemsListResponseCollection(
  result: result != null ? result() : this.result,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsItemsListResponseCollection &&
          listEquals(result, other.result) &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(result ?? const []), resultInfo); } 
@override String toString() { return 'ListsItemsListResponseCollection(result: $result, resultInfo: $resultInfo)'; } 
 }
