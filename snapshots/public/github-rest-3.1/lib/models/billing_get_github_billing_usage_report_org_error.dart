// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_github_billing_usage_report_org_response503.dart';/// Error responses of `GET /organizations/{org}/settings/billing/usage`.
sealed class BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgError();

/// Parse the variant matching the response status code.
factory BillingGetGithubBillingUsageReportOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BillingGetGithubBillingUsageReportOrgError400.parse(response),
  403 => BillingGetGithubBillingUsageReportOrgError403.parse(response),
  500 => BillingGetGithubBillingUsageReportOrgError500.parse(response),
  503 => BillingGetGithubBillingUsageReportOrgError503.parse(response),
  _ => BillingGetGithubBillingUsageReportOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BillingGetGithubBillingUsageReportOrgError400 extends BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgError400(this.data);

factory BillingGetGithubBillingUsageReportOrgError400.parse(ApiResponse response) { return BillingGetGithubBillingUsageReportOrgError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageReportOrgError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageReportOrgError400($data)'; } 
 }
/// The `403` response.
@immutable final class BillingGetGithubBillingUsageReportOrgError403 extends BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgError403(this.data);

factory BillingGetGithubBillingUsageReportOrgError403.parse(ApiResponse response) { return BillingGetGithubBillingUsageReportOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageReportOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageReportOrgError403($data)'; } 
 }
/// The `500` response.
@immutable final class BillingGetGithubBillingUsageReportOrgError500 extends BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgError500(this.data);

factory BillingGetGithubBillingUsageReportOrgError500.parse(ApiResponse response) { return BillingGetGithubBillingUsageReportOrgError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageReportOrgError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageReportOrgError500($data)'; } 
 }
/// The `503` response.
@immutable final class BillingGetGithubBillingUsageReportOrgError503 extends BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgError503(this.data);

factory BillingGetGithubBillingUsageReportOrgError503.parse(ApiResponse response) { return BillingGetGithubBillingUsageReportOrgError503(BillingGetGithubBillingUsageReportOrgResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BillingGetGithubBillingUsageReportOrgResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageReportOrgError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageReportOrgError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BillingGetGithubBillingUsageReportOrgError$Unknown extends BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageReportOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BillingGetGithubBillingUsageReportOrgError.unknown($statusCode)'; } 
 }
