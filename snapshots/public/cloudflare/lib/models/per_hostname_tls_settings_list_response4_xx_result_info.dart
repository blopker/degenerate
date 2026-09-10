// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PerHostnameTlsSettingsListResponse4XxResultInfo {const PerHostnameTlsSettingsListResponse4XxResultInfo({this.count = const Omittable.absent(), this.page = const Omittable.absent(), this.perPage = const Omittable.absent(), this.totalCount = const Omittable.absent(), this.totalPages, });

factory PerHostnameTlsSettingsListResponse4XxResultInfo.fromJson(Map<String, dynamic> json) { return PerHostnameTlsSettingsListResponse4XxResultInfo(
  count: json.containsKey('count') ? Omittable(json['count']) : const Omittable.absent(),
  page: json.containsKey('page') ? Omittable(json['page']) : const Omittable.absent(),
  perPage: json.containsKey('per_page') ? Omittable(json['per_page']) : const Omittable.absent(),
  totalCount: json.containsKey('total_count') ? Omittable(json['total_count']) : const Omittable.absent(),
  totalPages: json['total_pages'] != null ? (json['total_pages'] as num).toDouble() : null,
); }

final Omittable<dynamic> count;

final Omittable<dynamic> page;

final Omittable<dynamic> perPage;

final Omittable<dynamic> totalCount;

/// Total pages available of results
final double? totalPages;

Map<String, dynamic> toJson() { return {
  if (count.isPresent) 'count': count.value,
  if (page.isPresent) 'page': page.value,
  if (perPage.isPresent) 'per_page': perPage.value,
  if (totalCount.isPresent) 'total_count': totalCount.value,
  'total_pages': ?totalPages,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'page', 'per_page', 'total_count', 'total_pages'}.contains(key)); } 
PerHostnameTlsSettingsListResponse4XxResultInfo copyWith({Omittable<dynamic>? count, Omittable<dynamic>? page, Omittable<dynamic>? perPage, Omittable<dynamic>? totalCount, double? Function()? totalPages, }) { return PerHostnameTlsSettingsListResponse4XxResultInfo(
  count: count ?? this.count,
  page: page ?? this.page,
  perPage: perPage ?? this.perPage,
  totalCount: totalCount ?? this.totalCount,
  totalPages: totalPages != null ? totalPages() : this.totalPages,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PerHostnameTlsSettingsListResponse4XxResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount &&
          totalPages == other.totalPages; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount, totalPages); } 
@override String toString() { return 'PerHostnameTlsSettingsListResponse4XxResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount, totalPages: $totalPages)'; } 
 }
