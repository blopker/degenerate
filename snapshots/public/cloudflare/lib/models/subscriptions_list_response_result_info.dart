// GENERATED CODE - DO NOT MODIFY BY HAND

final class SubscriptionsListResponseResultInfo {const SubscriptionsListResponseResultInfo({required this.count, required this.page, required this.perPage, required this.totalCount, required this.totalPages, });

factory SubscriptionsListResponseResultInfo.fromJson(Map<String, dynamic> json) { return SubscriptionsListResponseResultInfo(
  count: (json['count'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  perPage: (json['per_page'] as num).toInt(),
  totalCount: (json['total_count'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
); }

/// Number of items in current page
final int count;

/// Current page number
final int page;

/// Items per page
final int perPage;

/// Total number of items
final int totalCount;

/// Total number of pages
final int totalPages;

Map<String, dynamic> toJson() { return {
  'count': count,
  'page': page,
  'per_page': perPage,
  'total_count': totalCount,
  'total_pages': totalPages,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('page') && json['page'] is num &&
      json.containsKey('per_page') && json['per_page'] is num &&
      json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('total_pages') && json['total_pages'] is num; } 
SubscriptionsListResponseResultInfo copyWith({int? count, int? page, int? perPage, int? totalCount, int? totalPages, }) { return SubscriptionsListResponseResultInfo(
  count: count ?? this.count,
  page: page ?? this.page,
  perPage: perPage ?? this.perPage,
  totalCount: totalCount ?? this.totalCount,
  totalPages: totalPages ?? this.totalPages,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionsListResponseResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount &&
          totalPages == other.totalPages; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount, totalPages); } 
@override String toString() { return 'SubscriptionsListResponseResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount, totalPages: $totalPages)'; } 
 }
