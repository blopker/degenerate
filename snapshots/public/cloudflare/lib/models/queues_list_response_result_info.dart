// GENERATED CODE - DO NOT MODIFY BY HAND

final class QueuesListResponseResultInfo {const QueuesListResponseResultInfo({this.count, this.page, this.perPage, this.totalCount, this.totalPages, });

factory QueuesListResponseResultInfo.fromJson(Map<String, dynamic> json) { return QueuesListResponseResultInfo(
  count: json['count'] != null ? (json['count'] as num).toDouble() : null,
  page: json['page'] != null ? (json['page'] as num).toDouble() : null,
  perPage: json['per_page'] != null ? (json['per_page'] as num).toDouble() : null,
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toDouble() : null,
  totalPages: json['total_pages'] != null ? (json['total_pages'] as num).toDouble() : null,
); }

/// Total number of queues
final double? count;

/// Current page within paginated list of queues
final double? page;

/// Number of queues per page
final double? perPage;

/// Total queues available without any search parameters
final double? totalCount;

/// Total pages available without any search parameters
final double? totalPages;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'page': ?page,
  'per_page': ?perPage,
  'total_count': ?totalCount,
  'total_pages': ?totalPages,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'page', 'per_page', 'total_count', 'total_pages'}.contains(key)); } 
QueuesListResponseResultInfo copyWith({double Function()? count, double Function()? page, double Function()? perPage, double Function()? totalCount, double Function()? totalPages, }) { return QueuesListResponseResultInfo(
  count: count != null ? count() : this.count,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
  totalPages: totalPages != null ? totalPages() : this.totalPages,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QueuesListResponseResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount &&
          totalPages == other.totalPages; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount, totalPages); } 
@override String toString() { return 'QueuesListResponseResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount, totalPages: $totalPages)'; } 
 }
