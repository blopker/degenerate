// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_github_billing_premium_request_usage_report_org_response503.dart';/// Error responses of `GET /organizations/{org}/settings/billing/premium_request/usage`.
sealed class BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError();

/// Parse the variant matching the response status code.
factory BillingGetGithubBillingPremiumRequestUsageReportOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BillingGetGithubBillingPremiumRequestUsageReportOrgError400.parse(response),
  403 => BillingGetGithubBillingPremiumRequestUsageReportOrgError403.parse(response),
  404 => BillingGetGithubBillingPremiumRequestUsageReportOrgError404.parse(response),
  500 => BillingGetGithubBillingPremiumRequestUsageReportOrgError500.parse(response),
  503 => BillingGetGithubBillingPremiumRequestUsageReportOrgError503.parse(response),
  _ => BillingGetGithubBillingPremiumRequestUsageReportOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BillingGetGithubBillingPremiumRequestUsageReportOrgError400 extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError400(this.data);

factory BillingGetGithubBillingPremiumRequestUsageReportOrgError400.parse(ApiResponse response) { return BillingGetGithubBillingPremiumRequestUsageReportOrgError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingPremiumRequestUsageReportOrgError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportOrgError400($data)'; } 
 }
/// The `403` response.
@immutable final class BillingGetGithubBillingPremiumRequestUsageReportOrgError403 extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError403(this.data);

factory BillingGetGithubBillingPremiumRequestUsageReportOrgError403.parse(ApiResponse response) { return BillingGetGithubBillingPremiumRequestUsageReportOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingPremiumRequestUsageReportOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportOrgError403($data)'; } 
 }
/// The `404` response.
@immutable final class BillingGetGithubBillingPremiumRequestUsageReportOrgError404 extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError404(this.data);

factory BillingGetGithubBillingPremiumRequestUsageReportOrgError404.parse(ApiResponse response) { return BillingGetGithubBillingPremiumRequestUsageReportOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingPremiumRequestUsageReportOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportOrgError404($data)'; } 
 }
/// The `500` response.
@immutable final class BillingGetGithubBillingPremiumRequestUsageReportOrgError500 extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError500(this.data);

factory BillingGetGithubBillingPremiumRequestUsageReportOrgError500.parse(ApiResponse response) { return BillingGetGithubBillingPremiumRequestUsageReportOrgError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingPremiumRequestUsageReportOrgError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportOrgError500($data)'; } 
 }
/// The `503` response.
@immutable final class BillingGetGithubBillingPremiumRequestUsageReportOrgError503 extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError503(this.data);

factory BillingGetGithubBillingPremiumRequestUsageReportOrgError503.parse(ApiResponse response) { return BillingGetGithubBillingPremiumRequestUsageReportOrgError503(BillingGetGithubBillingPremiumRequestUsageReportOrgResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BillingGetGithubBillingPremiumRequestUsageReportOrgResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingPremiumRequestUsageReportOrgError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportOrgError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BillingGetGithubBillingPremiumRequestUsageReportOrgError$Unknown extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingPremiumRequestUsageReportOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportOrgError.unknown($statusCode)'; } 
 }
