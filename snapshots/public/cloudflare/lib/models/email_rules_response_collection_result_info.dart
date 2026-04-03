// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailRulesResponseCollectionResultInfo {const EmailRulesResponseCollectionResultInfo({this.count, this.page, this.perPage, this.totalCount, });

factory EmailRulesResponseCollectionResultInfo.fromJson(Map<String, dynamic> json) { return EmailRulesResponseCollectionResultInfo(
  count: json['count'],
  page: json['page'],
  perPage: json['per_page'],
  totalCount: json['total_count'],
); }

final dynamic count;

final dynamic page;

final dynamic perPage;

final dynamic totalCount;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'page': ?page,
  'per_page': ?perPage,
  'total_count': ?totalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'page', 'per_page', 'total_count'}.contains(key)); } 
EmailRulesResponseCollectionResultInfo copyWith({dynamic Function()? count, dynamic Function()? page, dynamic Function()? perPage, dynamic Function()? totalCount, }) { return EmailRulesResponseCollectionResultInfo(
  count: count != null ? count() : this.count,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailRulesResponseCollectionResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount); } 
@override String toString() { return 'EmailRulesResponseCollectionResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount)'; } 
 }
