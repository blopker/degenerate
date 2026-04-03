// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ResponseCollection31ResultInfo {const ResponseCollection31ResultInfo({this.count, this.page, this.perPage, this.totalCount, });

factory ResponseCollection31ResultInfo.fromJson(Map<String, dynamic> json) { return ResponseCollection31ResultInfo(
  count: json['count'] != null ? (json['count'] as num).toInt() : null,
  page: json['page'] != null ? (json['page'] as num).toInt() : null,
  perPage: json['per_page'] != null ? (json['per_page'] as num).toInt() : null,
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toInt() : null,
); }

/// Indicates the number of results in this page.
final int? count;

/// Specifies the current page number.
final int? page;

/// Specifies the number of results per page.
final int? perPage;

/// Specifies the total number of results.
final int? totalCount;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'page': ?page,
  'per_page': ?perPage,
  'total_count': ?totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'page', 'per_page', 'total_count'}.contains(key)); } 
ResponseCollection31ResultInfo copyWith({int Function()? count, int Function()? page, int Function()? perPage, int Function()? totalCount, }) { return ResponseCollection31ResultInfo(
  count: count != null ? count() : this.count,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection31ResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount); } 
@override String toString() { return 'ResponseCollection31ResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount)'; } 
 }
