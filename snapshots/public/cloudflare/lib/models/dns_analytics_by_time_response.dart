// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_analytics_report_bytime.dart';@immutable final class DnsAnalyticsByTimeResponse {const DnsAnalyticsByTimeResponse({this.result});

factory DnsAnalyticsByTimeResponse.fromJson(Map<String, dynamic> json) { return DnsAnalyticsByTimeResponse(
  result: json['result'] != null ? DnsAnalyticsReportBytime.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsAnalyticsReportBytime? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsAnalyticsByTimeResponse copyWith({DnsAnalyticsReportBytime Function()? result}) { return DnsAnalyticsByTimeResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsAnalyticsByTimeResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsAnalyticsByTimeResponse(result: $result)'; } 
 }
