// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_github_billing_usage_summary_report_org_response503.dart';/// Error responses of `GET /organizations/{org}/settings/billing/usage/summary`.
sealed class BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgError();

/// Parse the variant matching the response status code.
factory BillingGetGithubBillingUsageSummaryReportOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BillingGetGithubBillingUsageSummaryReportOrgError400.parse(response),
  403 => BillingGetGithubBillingUsageSummaryReportOrgError403.parse(response),
  500 => BillingGetGithubBillingUsageSummaryReportOrgError500.parse(response),
  503 => BillingGetGithubBillingUsageSummaryReportOrgError503.parse(response),
  _ => BillingGetGithubBillingUsageSummaryReportOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BillingGetGithubBillingUsageSummaryReportOrgError400 extends BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgError400(this.data);

factory BillingGetGithubBillingUsageSummaryReportOrgError400.parse(ApiResponse response) { return BillingGetGithubBillingUsageSummaryReportOrgError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageSummaryReportOrgError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageSummaryReportOrgError400($data)'; } 
 }
/// The `403` response.
@immutable final class BillingGetGithubBillingUsageSummaryReportOrgError403 extends BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgError403(this.data);

factory BillingGetGithubBillingUsageSummaryReportOrgError403.parse(ApiResponse response) { return BillingGetGithubBillingUsageSummaryReportOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageSummaryReportOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageSummaryReportOrgError403($data)'; } 
 }
/// The `500` response.
@immutable final class BillingGetGithubBillingUsageSummaryReportOrgError500 extends BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgError500(this.data);

factory BillingGetGithubBillingUsageSummaryReportOrgError500.parse(ApiResponse response) { return BillingGetGithubBillingUsageSummaryReportOrgError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageSummaryReportOrgError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageSummaryReportOrgError500($data)'; } 
 }
/// The `503` response.
@immutable final class BillingGetGithubBillingUsageSummaryReportOrgError503 extends BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgError503(this.data);

factory BillingGetGithubBillingUsageSummaryReportOrgError503.parse(ApiResponse response) { return BillingGetGithubBillingUsageSummaryReportOrgError503(BillingGetGithubBillingUsageSummaryReportOrgResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BillingGetGithubBillingUsageSummaryReportOrgResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageSummaryReportOrgError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageSummaryReportOrgError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BillingGetGithubBillingUsageSummaryReportOrgError$Unknown extends BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageSummaryReportOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BillingGetGithubBillingUsageSummaryReportOrgError.unknown($statusCode)'; } 
 }
