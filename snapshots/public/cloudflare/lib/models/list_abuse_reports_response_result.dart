// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'abuse_reports_abuse_report.dart';final class ListAbuseReportsResponseResult {const ListAbuseReportsResponseResult({required this.reports});

factory ListAbuseReportsResponseResult.fromJson(Map<String, dynamic> json) { return ListAbuseReportsResponseResult(
  reports: (json['reports'] as List<dynamic>).map((e) => AbuseReportsAbuseReport.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AbuseReportsAbuseReport> reports;

Map<String, dynamic> toJson() { return {
  'reports': reports.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('reports'); } 
ListAbuseReportsResponseResult copyWith({List<AbuseReportsAbuseReport>? reports}) { return ListAbuseReportsResponseResult(
  reports: reports ?? this.reports,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListAbuseReportsResponseResult &&
          listEquals(reports, other.reports); } 
@override int get hashCode { return Object.hashAll(reports).hashCode; } 
@override String toString() { return 'ListAbuseReportsResponseResult(reports: $reports)'; } 
 }
