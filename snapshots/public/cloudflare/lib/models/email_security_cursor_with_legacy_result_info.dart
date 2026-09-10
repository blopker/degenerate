// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityCursorWithLegacyResultInfo {const EmailSecurityCursorWithLegacyResultInfo({required this.count, required this.page, required this.perPage, required this.totalCount, this.next = const Omittable.absent(), this.previous = const Omittable.absent(), });

factory EmailSecurityCursorWithLegacyResultInfo.fromJson(Map<String, dynamic> json) { return EmailSecurityCursorWithLegacyResultInfo(
  count: (json['count'] as num).toInt(),
  next: json.containsKey('next') ? Omittable(json['next'] as String?) : const Omittable.absent(),
  page: (json['page'] as num).toInt(),
  perPage: (json['per_page'] as num).toInt(),
  previous: json.containsKey('previous') ? Omittable(json['previous'] as String?) : const Omittable.absent(),
  totalCount: (json['total_count'] as num).toInt(),
); }

final int count;

final Omittable<String?> next;

/// Deprecated: Returns always 0
final int page;

/// number of items per page
final int perPage;

final Omittable<String?> previous;

/// Deprecated: Returns always 0
final int totalCount;

Map<String, dynamic> toJson() { return {
  'count': count,
  if (next.isPresent) 'next': next.value,
  'page': page,
  'per_page': perPage,
  if (previous.isPresent) 'previous': previous.value,
  'total_count': totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('page') && json['page'] is num &&
      json.containsKey('per_page') && json['per_page'] is num &&
      json.containsKey('total_count') && json['total_count'] is num; } 
EmailSecurityCursorWithLegacyResultInfo copyWith({int? count, Omittable<String?>? next, int? page, int? perPage, Omittable<String?>? previous, int? totalCount, }) { return EmailSecurityCursorWithLegacyResultInfo(
  count: count ?? this.count,
  next: next ?? this.next,
  page: page ?? this.page,
  perPage: perPage ?? this.perPage,
  previous: previous ?? this.previous,
  totalCount: totalCount ?? this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityCursorWithLegacyResultInfo &&
          count == other.count &&
          next == other.next &&
          page == other.page &&
          perPage == other.perPage &&
          previous == other.previous &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(count, next, page, perPage, previous, totalCount); } 
@override String toString() { return 'EmailSecurityCursorWithLegacyResultInfo(count: $count, next: $next, page: $page, perPage: $perPage, previous: $previous, totalCount: $totalCount)'; } 
 }
