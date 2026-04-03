// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZonesResultInfo {const ZonesResultInfo({this.count, this.page, this.perPage, this.totalCount, this.totalPages, });

factory ZonesResultInfo.fromJson(Map<String, dynamic> json) { return ZonesResultInfo(
  count: json['count'] != null ? (json['count'] as num).toDouble() : null,
  page: json['page'] != null ? (json['page'] as num).toDouble() : null,
  perPage: json['per_page'] != null ? (json['per_page'] as num).toDouble() : null,
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toDouble() : null,
  totalPages: json['total_pages'] != null ? (json['total_pages'] as num).toDouble() : null,
); }

/// Total number of results for the requested service.
final double? count;

/// Current page within paginated list of results.
final double? page;

/// Number of results per page of results.
final double? perPage;

/// Total results available without any search parameters.
final double? totalCount;

/// Total number of pages
final double? totalPages;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'page': ?page,
  'per_page': ?perPage,
  'total_count': ?totalCount,
  'total_pages': ?totalPages,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'page', 'per_page', 'total_count', 'total_pages'}.contains(key)); } 
ZonesResultInfo copyWith({double Function()? count, double Function()? page, double Function()? perPage, double Function()? totalCount, double Function()? totalPages, }) { return ZonesResultInfo(
  count: count != null ? count() : this.count,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
  totalPages: totalPages != null ? totalPages() : this.totalPages,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount &&
          totalPages == other.totalPages; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount, totalPages); } 
@override String toString() { return 'ZonesResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount, totalPages: $totalPages)'; } 
 }
