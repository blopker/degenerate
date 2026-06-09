// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_github_billing_premium_request_usage_report_user_response503.dart';/// Error responses of `GET /users/{username}/settings/billing/premium_request/usage`.
sealed class BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError();

/// Parse the variant matching the response status code.
factory BillingGetGithubBillingPremiumRequestUsageReportUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BillingGetGithubBillingPremiumRequestUsageReportUserError400.parse(response),
  403 => BillingGetGithubBillingPremiumRequestUsageReportUserError403.parse(response),
  404 => BillingGetGithubBillingPremiumRequestUsageReportUserError404.parse(response),
  500 => BillingGetGithubBillingPremiumRequestUsageReportUserError500.parse(response),
  503 => BillingGetGithubBillingPremiumRequestUsageReportUserError503.parse(response),
  _ => BillingGetGithubBillingPremiumRequestUsageReportUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BillingGetGithubBillingPremiumRequestUsageReportUserError400 extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError400(this.data);

factory BillingGetGithubBillingPremiumRequestUsageReportUserError400.parse(ApiResponse response) { return BillingGetGithubBillingPremiumRequestUsageReportUserError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingPremiumRequestUsageReportUserError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportUserError400($data)'; } 
 }
/// The `403` response.
@immutable final class BillingGetGithubBillingPremiumRequestUsageReportUserError403 extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError403(this.data);

factory BillingGetGithubBillingPremiumRequestUsageReportUserError403.parse(ApiResponse response) { return BillingGetGithubBillingPremiumRequestUsageReportUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingPremiumRequestUsageReportUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class BillingGetGithubBillingPremiumRequestUsageReportUserError404 extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError404(this.data);

factory BillingGetGithubBillingPremiumRequestUsageReportUserError404.parse(ApiResponse response) { return BillingGetGithubBillingPremiumRequestUsageReportUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingPremiumRequestUsageReportUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportUserError404($data)'; } 
 }
/// The `500` response.
@immutable final class BillingGetGithubBillingPremiumRequestUsageReportUserError500 extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError500(this.data);

factory BillingGetGithubBillingPremiumRequestUsageReportUserError500.parse(ApiResponse response) { return BillingGetGithubBillingPremiumRequestUsageReportUserError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingPremiumRequestUsageReportUserError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportUserError500($data)'; } 
 }
/// The `503` response.
@immutable final class BillingGetGithubBillingPremiumRequestUsageReportUserError503 extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError503(this.data);

factory BillingGetGithubBillingPremiumRequestUsageReportUserError503.parse(ApiResponse response) { return BillingGetGithubBillingPremiumRequestUsageReportUserError503(BillingGetGithubBillingPremiumRequestUsageReportUserResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BillingGetGithubBillingPremiumRequestUsageReportUserResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingPremiumRequestUsageReportUserError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportUserError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BillingGetGithubBillingPremiumRequestUsageReportUserError$Unknown extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingPremiumRequestUsageReportUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BillingGetGithubBillingPremiumRequestUsageReportUserError.unknown($statusCode)'; } 
 }
