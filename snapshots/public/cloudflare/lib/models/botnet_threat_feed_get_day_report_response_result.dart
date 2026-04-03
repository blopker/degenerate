// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BotnetThreatFeedGetDayReportResponseResult {const BotnetThreatFeedGetDayReportResponseResult({this.cidr, this.date, this.offenseCount, });

factory BotnetThreatFeedGetDayReportResponseResult.fromJson(Map<String, dynamic> json) { return BotnetThreatFeedGetDayReportResponseResult(
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
BotnetThreatFeedGetDayReportResponseResult copyWith({String Function()? cidr, DateTime Function()? date, int Function()? offenseCount, }) { return BotnetThreatFeedGetDayReportResponseResult(
  cidr: cidr != null ? cidr() : this.cidr,
  date: date != null ? date() : this.date,
  offenseCount: offenseCount != null ? offenseCount() : this.offenseCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BotnetThreatFeedGetDayReportResponseResult &&
          cidr == other.cidr &&
          date == other.date &&
          offenseCount == other.offenseCount; } 
@override int get hashCode { return Object.hash(cidr, date, offenseCount); } 
@override String toString() { return 'BotnetThreatFeedGetDayReportResponseResult(cidr: $cidr, date: $date, offenseCount: $offenseCount)'; } 
 }
