// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PipelinesResponseResultInfo {const PipelinesResponseResultInfo({required this.count, required this.page, required this.perPage, required this.totalCount, });

factory PipelinesResponseResultInfo.fromJson(Map<String, dynamic> json) { return PipelinesResponseResultInfo(
  count: (json['count'] as num).toDouble(),
  page: (json['page'] as num).toDouble(),
  perPage: (json['per_page'] as num).toDouble(),
  totalCount: (json['total_count'] as num).toDouble(),
); }

/// Indicates the number of items on current page.
final double count;

/// Indicates the current page number.
final double page;

/// Indicates the number of items per page.
final double perPage;

/// Indicates the total number of items.
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
PipelinesResponseResultInfo copyWith({double? count, double? page, double? perPage, double? totalCount, }) { return PipelinesResponseResultInfo(
  count: count ?? this.count,
  page: page ?? this.page,
  perPage: perPage ?? this.perPage,
  totalCount: totalCount ?? this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PipelinesResponseResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount); } 
@override String toString() { return 'PipelinesResponseResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount)'; } 
 }
