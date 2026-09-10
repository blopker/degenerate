// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AutoragConfigFilesResponseResultInfo {const AutoragConfigFilesResponseResultInfo({required this.count, required this.page, required this.totalCount, this.perPage, });

factory AutoragConfigFilesResponseResultInfo.fromJson(Map<String, dynamic> json) { return AutoragConfigFilesResponseResultInfo(
  count: (json['count'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  perPage: json['per_page'] != null ? (json['per_page'] as num).toInt() : null,
  totalCount: (json['total_count'] as num).toInt(),
); }

final int count;

final int page;

final int? perPage;

final int totalCount;

/// The value with the schema default applied when absent.
int get perPageOrDefault { return perPage ?? 20; } 
Map<String, dynamic> toJson() { return {
  'count': count,
  'page': page,
  'per_page': ?perPage,
  'total_count': totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('page') && json['page'] is num &&
      json.containsKey('total_count') && json['total_count'] is num; } 
AutoragConfigFilesResponseResultInfo copyWith({int? count, int? page, int? Function()? perPage, int? totalCount, }) { return AutoragConfigFilesResponseResultInfo(
  count: count ?? this.count,
  page: page ?? this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  totalCount: totalCount ?? this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoragConfigFilesResponseResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount); } 
@override String toString() { return 'AutoragConfigFilesResponseResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount)'; } 
 }
