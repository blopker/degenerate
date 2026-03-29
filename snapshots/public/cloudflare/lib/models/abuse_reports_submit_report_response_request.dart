// GENERATED CODE - DO NOT MODIFY BY HAND

import 'abuse_reports_submission_report_type.dart';final class AbuseReportsSubmitReportResponseRequest {const AbuseReportsSubmitReportResponseRequest({required this.act});

factory AbuseReportsSubmitReportResponseRequest.fromJson(Map<String, dynamic> json) { return AbuseReportsSubmitReportResponseRequest(
  act: AbuseReportsSubmissionReportType.fromJson(json['act'] as String),
); }

/// The report type for submitted reports.
final AbuseReportsSubmissionReportType act;

Map<String, dynamic> toJson() { return {
  'act': act.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('act'); } 
AbuseReportsSubmitReportResponseRequest copyWith({AbuseReportsSubmissionReportType? act}) { return AbuseReportsSubmitReportResponseRequest(
  act: act ?? this.act,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AbuseReportsSubmitReportResponseRequest &&
          act == other.act; } 
@override int get hashCode { return act.hashCode; } 
@override String toString() { return 'AbuseReportsSubmitReportResponseRequest(act: $act)'; } 
 }
