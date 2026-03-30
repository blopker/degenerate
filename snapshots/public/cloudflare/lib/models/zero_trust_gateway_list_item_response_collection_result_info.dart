// GENERATED CODE - DO NOT MODIFY BY HAND

final class ZeroTrustGatewayListItemResponseCollectionResultInfo {const ZeroTrustGatewayListItemResponseCollectionResultInfo({this.count, this.page, this.perPage, this.totalCount, });

factory ZeroTrustGatewayListItemResponseCollectionResultInfo.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayListItemResponseCollectionResultInfo(
  count: json['count'] != null ? (json['count'] as num).toDouble() : null,
  page: json['page'] != null ? (json['page'] as num).toDouble() : null,
  perPage: json['per_page'] != null ? (json['per_page'] as num).toDouble() : null,
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toDouble() : null,
); }

/// Shows the total results returned based on your search parameters.
final double? count;

/// Show the current page within paginated list of results.
final double? page;

/// Show the number of results per page of results.
final double? perPage;

/// Show the total results available without any search parameters.
final double? totalCount;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'page': ?page,
  'per_page': ?perPage,
  'total_count': ?totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'page', 'per_page', 'total_count'}.contains(key)); } 
ZeroTrustGatewayListItemResponseCollectionResultInfo copyWith({double Function()? count, double Function()? page, double Function()? perPage, double Function()? totalCount, }) { return ZeroTrustGatewayListItemResponseCollectionResultInfo(
  count: count != null ? count() : this.count,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayListItemResponseCollectionResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount); } 
@override String toString() { return 'ZeroTrustGatewayListItemResponseCollectionResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount)'; } 
 }
