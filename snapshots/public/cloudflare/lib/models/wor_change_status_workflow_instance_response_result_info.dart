// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorChangeStatusWorkflowInstanceResponseResultInfo {const WorChangeStatusWorkflowInstanceResponseResultInfo({required this.count, required this.perPage, required this.totalCount, this.cursor, this.page, });

factory WorChangeStatusWorkflowInstanceResponseResultInfo.fromJson(Map<String, dynamic> json) { return WorChangeStatusWorkflowInstanceResponseResultInfo(
  count: (json['count'] as num).toDouble(),
  cursor: json['cursor'] as String?,
  page: json['page'] != null ? (json['page'] as num).toDouble() : null,
  perPage: (json['per_page'] as num).toDouble(),
  totalCount: (json['total_count'] as num).toDouble(),
); }

final double count;

final String? cursor;

final double? page;

final double perPage;

final double totalCount;

Map<String, dynamic> toJson() { return {
  'count': count,
  'cursor': ?cursor,
  'page': ?page,
  'per_page': perPage,
  'total_count': totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('per_page') && json['per_page'] is num &&
      json.containsKey('total_count') && json['total_count'] is num; } 
WorChangeStatusWorkflowInstanceResponseResultInfo copyWith({double? count, String Function()? cursor, double Function()? page, double? perPage, double? totalCount, }) { return WorChangeStatusWorkflowInstanceResponseResultInfo(
  count: count ?? this.count,
  cursor: cursor != null ? cursor() : this.cursor,
  page: page != null ? page() : this.page,
  perPage: perPage ?? this.perPage,
  totalCount: totalCount ?? this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorChangeStatusWorkflowInstanceResponseResultInfo &&
          count == other.count &&
          cursor == other.cursor &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(count, cursor, page, perPage, totalCount); } 
@override String toString() { return 'WorChangeStatusWorkflowInstanceResponseResultInfo(count: $count, cursor: $cursor, page: $page, perPage: $perPage, totalCount: $totalCount)'; } 
 }
