// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailDestinationAddressesResponseCollectionResultInfo {const EmailDestinationAddressesResponseCollectionResultInfo({this.count = const Omittable.absent(), this.page = const Omittable.absent(), this.perPage = const Omittable.absent(), this.totalCount = const Omittable.absent(), });

factory EmailDestinationAddressesResponseCollectionResultInfo.fromJson(Map<String, dynamic> json) { return EmailDestinationAddressesResponseCollectionResultInfo(
  count: json.containsKey('count') ? Omittable(json['count']) : const Omittable.absent(),
  page: json.containsKey('page') ? Omittable(json['page']) : const Omittable.absent(),
  perPage: json.containsKey('per_page') ? Omittable(json['per_page']) : const Omittable.absent(),
  totalCount: json.containsKey('total_count') ? Omittable(json['total_count']) : const Omittable.absent(),
); }

final Omittable<dynamic> count;

final Omittable<dynamic> page;

final Omittable<dynamic> perPage;

final Omittable<dynamic> totalCount;

Map<String, dynamic> toJson() { return {
  if (count.isPresent) 'count': count.value,
  if (page.isPresent) 'page': page.value,
  if (perPage.isPresent) 'per_page': perPage.value,
  if (totalCount.isPresent) 'total_count': totalCount.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'page', 'per_page', 'total_count'}.contains(key)); } 
EmailDestinationAddressesResponseCollectionResultInfo copyWith({Omittable<dynamic>? count, Omittable<dynamic>? page, Omittable<dynamic>? perPage, Omittable<dynamic>? totalCount, }) { return EmailDestinationAddressesResponseCollectionResultInfo(
  count: count ?? this.count,
  page: page ?? this.page,
  perPage: perPage ?? this.perPage,
  totalCount: totalCount ?? this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailDestinationAddressesResponseCollectionResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount); } 
@override String toString() { return 'EmailDestinationAddressesResponseCollectionResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount)'; } 
 }
