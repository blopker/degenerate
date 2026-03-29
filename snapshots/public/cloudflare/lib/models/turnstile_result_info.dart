// GENERATED CODE - DO NOT MODIFY BY HAND

final class TurnstileResultInfo {const TurnstileResultInfo({required this.count, required this.page, required this.perPage, required this.totalCount, });

factory TurnstileResultInfo.fromJson(Map<String, dynamic> json) { return TurnstileResultInfo(
  count: (json['count'] as num).toDouble(),
  page: (json['page'] as num).toDouble(),
  perPage: (json['per_page'] as num).toDouble(),
  totalCount: (json['total_count'] as num).toDouble(),
); }

/// Total number of results for the requested service
final double count;

/// Current page within paginated list of results
final double page;

/// Number of results per page of results
final double perPage;

/// Total results available without any search parameters
final double totalCount;

Map<String, dynamic> toJson() { return {
  'count': count,
  'page': page,
  'per_page': perPage,
  'total_count': totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('page') && json['page'] is num &&
      json.containsKey('per_page') && json['per_page'] is num &&
      json.containsKey('total_count') && json['total_count'] is num; } 
TurnstileResultInfo copyWith({double? count, double? page, double? perPage, double? totalCount, }) { return TurnstileResultInfo(
  count: count ?? this.count,
  page: page ?? this.page,
  perPage: perPage ?? this.perPage,
  totalCount: totalCount ?? this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TurnstileResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount); } 
@override String toString() { return 'TurnstileResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount)'; } 
 }
