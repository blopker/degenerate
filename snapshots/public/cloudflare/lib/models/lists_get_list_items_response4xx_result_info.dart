// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_get_list_items_response4xx_result_info_cursors.dart';@immutable final class ListsGetListItemsResponse4xxResultInfo {const ListsGetListItemsResponse4xxResultInfo({this.cursors});

factory ListsGetListItemsResponse4xxResultInfo.fromJson(Map<String, dynamic> json) { return ListsGetListItemsResponse4xxResultInfo(
  cursors: json['cursors'] != null ? ListsGetListItemsResponse4xxResultInfoCursors.fromJson(json['cursors'] as Map<String, dynamic>) : null,
); }

final ListsGetListItemsResponse4xxResultInfoCursors? cursors;

Map<String, dynamic> toJson() { return {
  if (cursors != null) 'cursors': cursors?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cursors'}.contains(key)); } 
ListsGetListItemsResponse4xxResultInfo copyWith({ListsGetListItemsResponse4xxResultInfoCursors? Function()? cursors}) { return ListsGetListItemsResponse4xxResultInfo(
  cursors: cursors != null ? cursors() : this.cursors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsGetListItemsResponse4xxResultInfo &&
          cursors == other.cursors; } 
@override int get hashCode { return cursors.hashCode; } 
@override String toString() { return 'ListsGetListItemsResponse4xxResultInfo(cursors: $cursors)'; } 
 }
