// GENERATED CODE - DO NOT MODIFY BY HAND

final class ZeroTrustGatewayResultInfo {const ZeroTrustGatewayResultInfo({this.count, this.page, this.perPage, this.totalCount, });

factory ZeroTrustGatewayResultInfo.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayResultInfo(
  count: json['count'] != null ? (json['count'] as num).toDouble() : null,
  page: json['page'] != null ? (json['page'] as num).toDouble() : null,
  perPage: json['per_page'] != null ? (json['per_page'] as num).toDouble() : null,
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toDouble() : null,
); }

/// Indicate the total number of results for the requested service.
final double? count;

/// Indicate the current page within a paginated list of results.
final double? page;

/// Indicate the number of results per page.
final double? perPage;

/// Indicate the total results available without any search parameters.
final double? totalCount;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'page': ?page,
  'per_page': ?perPage,
  'total_count': ?totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZeroTrustGatewayResultInfo copyWith({double Function()? count, double Function()? page, double Function()? perPage, double Function()? totalCount, }) { return ZeroTrustGatewayResultInfo(
  count: count != null ? count() : this.count,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount); } 
@override String toString() { return 'ZeroTrustGatewayResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount)'; } 
 }
