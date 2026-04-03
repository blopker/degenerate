// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class GetCustomersSearchResponseObject {const GetCustomersSearchResponseObject._(this.value);

factory GetCustomersSearchResponseObject.fromJson(String json) { return switch (json) {
  'search_result' => searchResult,
  _ => GetCustomersSearchResponseObject._(json),
}; }

static const GetCustomersSearchResponseObject searchResult = GetCustomersSearchResponseObject._('search_result');

static const List<GetCustomersSearchResponseObject> values = [searchResult];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetCustomersSearchResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetCustomersSearchResponseObject($value)'; } 
 }
/// 
@immutable final class GetCustomersSearchResponse {const GetCustomersSearchResponse({required this.data, required this.hasMore, required this.object, required this.url, this.nextPage, this.totalCount, });

factory GetCustomersSearchResponse.fromJson(Map<String, dynamic> json) { return GetCustomersSearchResponse(
  data: (json['data'] as List<dynamic>).map((e) => Customer.fromJson(e as Map<String, dynamic>)).toList(),
  hasMore: json['has_more'] as bool,
  nextPage: json['next_page'] as String?,
  object: GetCustomersSearchResponseObject.fromJson(json['object'] as String),
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toInt() : null,
  url: json['url'] as String,
); }

final List<Customer> data;

final bool hasMore;

final String? nextPage;

/// String representing the object's type. Objects of the same type share the same value.
final GetCustomersSearchResponseObject object;

/// The total number of objects that match the query, only accurate up to 10,000.
final int? totalCount;

final String url;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
  'has_more': hasMore,
  'next_page': ?nextPage,
  'object': object.toJson(),
  'total_count': ?totalCount,
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('has_more') && json['has_more'] is bool &&
      json.containsKey('object') &&
      json.containsKey('url') && json['url'] is String; } 
GetCustomersSearchResponse copyWith({List<Customer>? data, bool? hasMore, String? Function()? nextPage, GetCustomersSearchResponseObject? object, int Function()? totalCount, String? url, }) { return GetCustomersSearchResponse(
  data: data ?? this.data,
  hasMore: hasMore ?? this.hasMore,
  nextPage: nextPage != null ? nextPage() : this.nextPage,
  object: object ?? this.object,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetCustomersSearchResponse &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          nextPage == other.nextPage &&
          object == other.object &&
          totalCount == other.totalCount &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), hasMore, nextPage, object, totalCount, url); } 
@override String toString() { return 'GetCustomersSearchResponse(data: $data, hasMore: $hasMore, nextPage: $nextPage, object: $object, totalCount: $totalCount, url: $url)'; } 
 }
