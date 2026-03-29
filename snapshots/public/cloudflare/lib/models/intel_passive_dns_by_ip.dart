// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_passive_dns_by_ip_reverse_records.dart';final class IntelPassiveDnsByIp {const IntelPassiveDnsByIp({this.count, this.page, this.perPage, this.reverseRecords, });

factory IntelPassiveDnsByIp.fromJson(Map<String, dynamic> json) { return IntelPassiveDnsByIp(
  count: json['count'] != null ? (json['count'] as num).toDouble() : null,
  page: json['page'] != null ? (json['page'] as num).toDouble() : null,
  perPage: json['per_page'] != null ? (json['per_page'] as num).toDouble() : null,
  reverseRecords: (json['reverse_records'] as List<dynamic>?)?.map((e) => IntelPassiveDnsByIpReverseRecords.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Total results returned based on your search parameters.
final double? count;

/// Current page within paginated list of results.
final double? page;

/// Number of results per page of results.
final double? perPage;

/// Reverse DNS look-ups observed during the time period.
final List<IntelPassiveDnsByIpReverseRecords>? reverseRecords;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'page': ?page,
  'per_page': ?perPage,
  if (reverseRecords != null) 'reverse_records': reverseRecords?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IntelPassiveDnsByIp copyWith({double Function()? count, double Function()? page, double Function()? perPage, List<IntelPassiveDnsByIpReverseRecords> Function()? reverseRecords, }) { return IntelPassiveDnsByIp(
  count: count != null ? count() : this.count,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  reverseRecords: reverseRecords != null ? reverseRecords() : this.reverseRecords,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelPassiveDnsByIp &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          listEquals(reverseRecords, other.reverseRecords); } 
@override int get hashCode { return Object.hash(count, page, perPage, Object.hashAll(reverseRecords ?? const [])); } 
@override String toString() { return 'IntelPassiveDnsByIp(count: $count, page: $page, perPage: $perPage, reverseRecords: $reverseRecords)'; } 
 }
