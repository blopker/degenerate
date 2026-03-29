// GENERATED CODE - DO NOT MODIFY BY HAND

final class Web3ResultInfo {const Web3ResultInfo({this.count, this.page, this.perPage, this.totalCount, });

factory Web3ResultInfo.fromJson(Map<String, dynamic> json) { return Web3ResultInfo(
  count: json['count'] != null ? (json['count'] as num).toDouble() : null,
  page: json['page'] != null ? (json['page'] as num).toDouble() : null,
  perPage: json['per_page'] != null ? (json['per_page'] as num).toDouble() : null,
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toDouble() : null,
); }

/// Specifies the total number of results for the requested service.
final double? count;

/// Specifies the current page within paginated list of results.
final double? page;

/// Specifies the number of results per page of results.
final double? perPage;

/// Specifies the total results available without any search parameters.
final double? totalCount;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'page': ?page,
  'per_page': ?perPage,
  'total_count': ?totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Web3ResultInfo copyWith({double Function()? count, double Function()? page, double Function()? perPage, double Function()? totalCount, }) { return Web3ResultInfo(
  count: count != null ? count() : this.count,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3ResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount); } 
@override String toString() { return 'Web3ResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount)'; } 
 }
