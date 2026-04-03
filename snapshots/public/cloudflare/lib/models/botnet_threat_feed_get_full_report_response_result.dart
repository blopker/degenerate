// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BotnetThreatFeedGetFullReportResponseResult {const BotnetThreatFeedGetFullReportResponseResult({this.cidr, this.date, this.offenseCount, });

factory BotnetThreatFeedGetFullReportResponseResult.fromJson(Map<String, dynamic> json) { return BotnetThreatFeedGetFullReportResponseResult(
  cidr: json['cidr'] as String?,
  date: json['date'] != null ? DateTime.parse(json['date'] as String) : null,
  offenseCount: json['offense_count'] != null ? (json['offense_count'] as num).toInt() : null,
); }

final String? cidr;

final DateTime? date;

final int? offenseCount;

Map<String, dynamic> toJson() { return {
  'cidr': ?cidr,
  if (date != null) 'date': date?.toIso8601String(),
  'offense_count': ?offenseCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cidr', 'date', 'offense_count'}.contains(key)); } 
BotnetThreatFeedGetFullReportResponseResult copyWith({String Function()? cidr, DateTime Function()? date, int Function()? offenseCount, }) { return BotnetThreatFeedGetFullReportResponseResult(
  cidr: cidr != null ? cidr() : this.cidr,
  date: date != null ? date() : this.date,
  offenseCount: offenseCount != null ? offenseCount() : this.offenseCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotnetThreatFeedGetFullReportResponseResult &&
          cidr == other.cidr &&
          date == other.date &&
          offenseCount == other.offenseCount; } 
@override int get hashCode { return Object.hash(cidr, date, offenseCount); } 
@override String toString() { return 'BotnetThreatFeedGetFullReportResponseResult(cidr: $cidr, date: $date, offenseCount: $offenseCount)'; } 
 }
