// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_search_response_result_data.dart';@immutable final class AutoragConfigSearchResponseResult {const AutoragConfigSearchResponseResult({required this.searchQuery, this.data, this.hasMore = false, this.nextPage = const Omittable.absent(), this.object, });

factory AutoragConfigSearchResponseResult.fromJson(Map<String, dynamic> json) { return AutoragConfigSearchResponseResult(
  data: (json['data'] as List<dynamic>?)?.map((e) => AutoragConfigSearchResponseResultData.fromJson(e as Map<String, dynamic>)).toList(),
  hasMore: json.containsKey('has_more') ? json['has_more'] as bool : false,
  nextPage: json.containsKey('next_page') ? Omittable(json['next_page'] as String?) : const Omittable.absent(),
  object: json['object'] as String?,
  searchQuery: json['search_query'] as String,
); }

final List<AutoragConfigSearchResponseResultData>? data;

final bool hasMore;

final Omittable<String?> nextPage;

final String? object;

final String searchQuery;

Map<String, dynamic> toJson() { return {
  if (data != null) 'data': data?.map((e) => e.toJson()).toList(),
  'has_more': hasMore,
  if (nextPage.isPresent) 'next_page': nextPage.value,
  'object': ?object,
  'search_query': searchQuery,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('search_query') && json['search_query'] is String; } 
AutoragConfigSearchResponseResult copyWith({List<AutoragConfigSearchResponseResultData>? Function()? data, bool Function()? hasMore, Omittable<String?>? nextPage, String? Function()? object, String? searchQuery, }) { return AutoragConfigSearchResponseResult(
  data: data != null ? data() : this.data,
  hasMore: hasMore != null ? hasMore() : this.hasMore,
  nextPage: nextPage ?? this.nextPage,
  object: object != null ? object() : this.object,
  searchQuery: searchQuery ?? this.searchQuery,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoragConfigSearchResponseResult &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          nextPage == other.nextPage &&
          object == other.object &&
          searchQuery == other.searchQuery; } 
@override int get hashCode { return Object.hash(Object.hashAll(data ?? const []), hasMore, nextPage, object, searchQuery); } 
@override String toString() { return 'AutoragConfigSearchResponseResult(data: $data, hasMore: $hasMore, nextPage: $nextPage, object: $object, searchQuery: $searchQuery)'; } 
 }
