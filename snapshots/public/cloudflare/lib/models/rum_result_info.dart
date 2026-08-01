// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RumResultInfo {const RumResultInfo({this.count, this.page, this.perPage, this.totalCount, this.totalPages = const Omittable.absent(), });

factory RumResultInfo.fromJson(Map<String, dynamic> json) { return RumResultInfo(
  count: json['count'] != null ? (json['count'] as num).toInt() : null,
  page: json['page'] != null ? (json['page'] as num).toInt() : null,
  perPage: json['per_page'] != null ? (json['per_page'] as num).toInt() : null,
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toInt() : null,
  totalPages: json.containsKey('total_pages') ? Omittable(json['total_pages'] != null ? (json['total_pages'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The total number of items on the current page.
final int? count;

/// Current page within the paginated list of results.
final int? page;

/// The maximum number of items to return per page of results.
final int? perPage;

/// The total number of items.
final int? totalCount;

/// The total number of pages.
final Omittable<int?> totalPages;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'page': ?page,
  'per_page': ?perPage,
  'total_count': ?totalCount,
  if (totalPages.isPresent) 'total_pages': totalPages.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'page', 'per_page', 'total_count', 'total_pages'}.contains(key)); } 
RumResultInfo copyWith({int? Function()? count, int? Function()? page, int? Function()? perPage, int? Function()? totalCount, Omittable<int?>? totalPages, }) { return RumResultInfo(
  count: count != null ? count() : this.count,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
  totalPages: totalPages ?? this.totalPages,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RumResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount &&
          totalPages == other.totalPages; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount, totalPages); } 
@override String toString() { return 'RumResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount, totalPages: $totalPages)'; } 
 }
