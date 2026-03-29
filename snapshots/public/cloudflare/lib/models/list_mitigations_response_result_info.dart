// GENERATED CODE - DO NOT MODIFY BY HAND

final class ListMitigationsResponseResultInfo {const ListMitigationsResponseResultInfo({required this.count, required this.page, required this.perPage, required this.totalCount, required this.totalPages, });

factory ListMitigationsResponseResultInfo.fromJson(Map<String, dynamic> json) { return ListMitigationsResponseResultInfo(
  count: (json['count'] as num).toDouble(),
  page: (json['page'] as num).toDouble(),
  perPage: (json['per_page'] as num).toDouble(),
  totalCount: (json['total_count'] as num).toDouble(),
  totalPages: (json['total_pages'] as num).toDouble(),
); }

final double count;

final double page;

final double perPage;

final double totalCount;

final double totalPages;

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
ListMitigationsResponseResultInfo copyWith({double? count, double? page, double? perPage, double? totalCount, double? totalPages, }) { return ListMitigationsResponseResultInfo(
  count: count ?? this.count,
  page: page ?? this.page,
  perPage: perPage ?? this.perPage,
  totalCount: totalCount ?? this.totalCount,
  totalPages: totalPages ?? this.totalPages,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListMitigationsResponseResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount &&
          totalPages == other.totalPages; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount, totalPages); } 
@override String toString() { return 'ListMitigationsResponseResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount, totalPages: $totalPages)'; } 
 }
