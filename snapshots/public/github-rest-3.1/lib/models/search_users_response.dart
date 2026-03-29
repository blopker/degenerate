// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'user_search_result_item.dart';final class SearchUsersResponse {const SearchUsersResponse({required this.totalCount, required this.incompleteResults, required this.items, });

factory SearchUsersResponse.fromJson(Map<String, dynamic> json) { return SearchUsersResponse(
  totalCount: (json['total_count'] as num).toInt(),
  incompleteResults: json['incomplete_results'] as bool,
  items: (json['items'] as List<dynamic>).map((e) => UserSearchResultItem.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final bool incompleteResults;

final List<UserSearchResultItem> items;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'incomplete_results': incompleteResults,
  'items': items.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('incomplete_results') && json['incomplete_results'] is bool &&
      json.containsKey('items'); } 
SearchUsersResponse copyWith({int? totalCount, bool? incompleteResults, List<UserSearchResultItem>? items, }) { return SearchUsersResponse(
  totalCount: totalCount ?? this.totalCount,
  incompleteResults: incompleteResults ?? this.incompleteResults,
  items: items ?? this.items,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SearchUsersResponse &&
          totalCount == other.totalCount &&
          incompleteResults == other.incompleteResults &&
          listEquals(items, other.items); } 
@override int get hashCode { return Object.hash(totalCount, incompleteResults, Object.hashAll(items)); } 
@override String toString() { return 'SearchUsersResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)'; } 
 }
