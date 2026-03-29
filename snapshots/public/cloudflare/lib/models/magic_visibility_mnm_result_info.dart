// GENERATED CODE - DO NOT MODIFY BY HAND

final class MagicVisibilityMnmResultInfo {const MagicVisibilityMnmResultInfo({this.count, this.page, this.perPage, this.totalCount, });

factory MagicVisibilityMnmResultInfo.fromJson(Map<String, dynamic> json) { return MagicVisibilityMnmResultInfo(
  count: json['count'] != null ? (json['count'] as num).toDouble() : null,
  page: json['page'] != null ? (json['page'] as num).toDouble() : null,
  perPage: json['per_page'] != null ? (json['per_page'] as num).toDouble() : null,
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toDouble() : null,
); }

/// Total number of results for the requested service
final double? count;

/// Current page within paginated list of results
final double? page;

/// Number of results per page of results
final double? perPage;

/// Total results available without any search parameters
final double? totalCount;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'page': ?page,
  'per_page': ?perPage,
  'total_count': ?totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MagicVisibilityMnmResultInfo copyWith({double Function()? count, double Function()? page, double Function()? perPage, double Function()? totalCount, }) { return MagicVisibilityMnmResultInfo(
  count: count != null ? count() : this.count,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityMnmResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount); } 
@override String toString() { return 'MagicVisibilityMnmResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount)'; } 
 }
