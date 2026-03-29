// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_tag_list_response_pagination.dart';import 'get_tag_list_response_tags.dart';final class GetTagListResponse {const GetTagListResponse({required this.pagination, required this.tags, });

factory GetTagListResponse.fromJson(Map<String, dynamic> json) { return GetTagListResponse(
  pagination: GetTagListResponsePagination.fromJson(json['pagination'] as Map<String, dynamic>),
  tags: (json['tags'] as List<dynamic>).map((e) => GetTagListResponseTags.fromJson(e as Map<String, dynamic>)).toList(),
); }

final GetTagListResponsePagination pagination;

final List<GetTagListResponseTags> tags;

Map<String, dynamic> toJson() { return {
  'pagination': pagination.toJson(),
  'tags': tags.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('pagination') &&
      json.containsKey('tags'); } 
GetTagListResponse copyWith({GetTagListResponsePagination? pagination, List<GetTagListResponseTags>? tags, }) { return GetTagListResponse(
  pagination: pagination ?? this.pagination,
  tags: tags ?? this.tags,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetTagListResponse &&
          pagination == other.pagination &&
          listEquals(tags, other.tags); } 
@override int get hashCode { return Object.hash(pagination, Object.hashAll(tags)); } 
@override String toString() { return 'GetTagListResponse(pagination: $pagination, tags: $tags)'; } 
 }
