// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_reporting_report_runs_request_parameters.dart';final class PostReportingReportRunsRequest {const PostReportingReportRunsRequest({this.expand, this.parameters, required this.reportType, });

factory PostReportingReportRunsRequest.fromJson(Map<String, dynamic> json) { return PostReportingReportRunsRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  parameters: json['parameters'] != null ? PostReportingReportRunsRequestParameters.fromJson(json['parameters'] as Map<String, dynamic>) : null,
  reportType: json['report_type'] as String,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Parameters specifying how the report should be run. Different Report Types have different required and optional parameters, listed in the [API Access to Reports](https://docs.stripe.com/reporting/statements/api) documentation.
final PostReportingReportRunsRequestParameters? parameters;

/// The ID of the [report type](https://docs.stripe.com/reporting/statements/api#report-types) to run, such as `"balance.summary.1"`.
final String reportType;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  if (parameters != null) 'parameters': parameters?.toJson(),
  'report_type': reportType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('report_type') && json['report_type'] is String; } 
PostReportingReportRunsRequest copyWith({List<String> Function()? expand, PostReportingReportRunsRequestParameters Function()? parameters, String? reportType, }) { return PostReportingReportRunsRequest(
  expand: expand != null ? expand() : this.expand,
  parameters: parameters != null ? parameters() : this.parameters,
  reportType: reportType ?? this.reportType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostReportingReportRunsRequest &&
          listEquals(expand, other.expand) &&
          parameters == other.parameters &&
          reportType == other.reportType; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), parameters, reportType); } 
@override String toString() { return 'PostReportingReportRunsRequest(expand: $expand, parameters: $parameters, reportType: $reportType)'; } 
 }
