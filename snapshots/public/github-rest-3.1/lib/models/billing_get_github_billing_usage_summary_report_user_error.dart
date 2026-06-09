// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_github_billing_usage_summary_report_user_response503.dart';/// Error responses of `GET /users/{username}/settings/billing/usage/summary`.
sealed class BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError();

/// Parse the variant matching the response status code.
factory BillingGetGithubBillingUsageSummaryReportUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BillingGetGithubBillingUsageSummaryReportUserError400.parse(response),
  403 => BillingGetGithubBillingUsageSummaryReportUserError403.parse(response),
  404 => BillingGetGithubBillingUsageSummaryReportUserError404.parse(response),
  500 => BillingGetGithubBillingUsageSummaryReportUserError500.parse(response),
  503 => BillingGetGithubBillingUsageSummaryReportUserError503.parse(response),
  _ => BillingGetGithubBillingUsageSummaryReportUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BillingGetGithubBillingUsageSummaryReportUserError400 extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError400(this.data);

factory BillingGetGithubBillingUsageSummaryReportUserError400.parse(ApiResponse response) { return BillingGetGithubBillingUsageSummaryReportUserError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageSummaryReportUserError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageSummaryReportUserError400($data)'; } 
 }
/// The `403` response.
@immutable final class BillingGetGithubBillingUsageSummaryReportUserError403 extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError403(this.data);

factory BillingGetGithubBillingUsageSummaryReportUserError403.parse(ApiResponse response) { return BillingGetGithubBillingUsageSummaryReportUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageSummaryReportUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageSummaryReportUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class BillingGetGithubBillingUsageSummaryReportUserError404 extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError404(this.data);

factory BillingGetGithubBillingUsageSummaryReportUserError404.parse(ApiResponse response) { return BillingGetGithubBillingUsageSummaryReportUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageSummaryReportUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageSummaryReportUserError404($data)'; } 
 }
/// The `500` response.
@immutable final class BillingGetGithubBillingUsageSummaryReportUserError500 extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError500(this.data);

factory BillingGetGithubBillingUsageSummaryReportUserError500.parse(ApiResponse response) { return BillingGetGithubBillingUsageSummaryReportUserError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageSummaryReportUserError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageSummaryReportUserError500($data)'; } 
 }
/// The `503` response.
@immutable final class BillingGetGithubBillingUsageSummaryReportUserError503 extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError503(this.data);

factory BillingGetGithubBillingUsageSummaryReportUserError503.parse(ApiResponse response) { return BillingGetGithubBillingUsageSummaryReportUserError503(BillingGetGithubBillingUsageSummaryReportUserResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BillingGetGithubBillingUsageSummaryReportUserResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageSummaryReportUserError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageSummaryReportUserError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BillingGetGithubBillingUsageSummaryReportUserError$Unknown extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageSummaryReportUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BillingGetGithubBillingUsageSummaryReportUserError.unknown($statusCode)'; } 
 }
