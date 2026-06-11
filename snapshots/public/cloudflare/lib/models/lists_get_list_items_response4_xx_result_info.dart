// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_get_list_items_response4_xx_result_info_cursors.dart';@immutable final class ListsGetListItemsResponse4XxResultInfo {const ListsGetListItemsResponse4XxResultInfo({this.cursors});

factory ListsGetListItemsResponse4XxResultInfo.fromJson(Map<String, dynamic> json) { return ListsGetListItemsResponse4XxResultInfo(
  cursors: json['cursors'] != null ? ListsGetListItemsResponse4XxResultInfoCursors.fromJson(json['cursors'] as Map<String, dynamic>) : null,
); }

final ListsGetListItemsResponse4XxResultInfoCursors? cursors;

Map<String, dynamic> toJson() { return {
  if (cursors != null) 'cursors': cursors?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cursors'}.contains(key)); } 
ListsGetListItemsResponse4XxResultInfo copyWith({ListsGetListItemsResponse4XxResultInfoCursors Function()? cursors}) { return ListsGetListItemsResponse4XxResultInfo(
  cursors: cursors != null ? cursors() : this.cursors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsGetListItemsResponse4XxResultInfo &&
          cursors == other.cursors; } 
@override int get hashCode { return cursors.hashCode; } 
@override String toString() { return 'ListsGetListItemsResponse4XxResultInfo(cursors: $cursors)'; } 
 }
