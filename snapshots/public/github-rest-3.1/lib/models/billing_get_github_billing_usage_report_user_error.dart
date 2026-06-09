// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_github_billing_usage_report_user_response503.dart';/// Error responses of `GET /users/{username}/settings/billing/usage`.
sealed class BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserError();

/// Parse the variant matching the response status code.
factory BillingGetGithubBillingUsageReportUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BillingGetGithubBillingUsageReportUserError400.parse(response),
  403 => BillingGetGithubBillingUsageReportUserError403.parse(response),
  500 => BillingGetGithubBillingUsageReportUserError500.parse(response),
  503 => BillingGetGithubBillingUsageReportUserError503.parse(response),
  _ => BillingGetGithubBillingUsageReportUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BillingGetGithubBillingUsageReportUserError400 extends BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserError400(this.data);

factory BillingGetGithubBillingUsageReportUserError400.parse(ApiResponse response) { return BillingGetGithubBillingUsageReportUserError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageReportUserError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageReportUserError400($data)'; } 
 }
/// The `403` response.
@immutable final class BillingGetGithubBillingUsageReportUserError403 extends BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserError403(this.data);

factory BillingGetGithubBillingUsageReportUserError403.parse(ApiResponse response) { return BillingGetGithubBillingUsageReportUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageReportUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageReportUserError403($data)'; } 
 }
/// The `500` response.
@immutable final class BillingGetGithubBillingUsageReportUserError500 extends BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserError500(this.data);

factory BillingGetGithubBillingUsageReportUserError500.parse(ApiResponse response) { return BillingGetGithubBillingUsageReportUserError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageReportUserError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageReportUserError500($data)'; } 
 }
/// The `503` response.
@immutable final class BillingGetGithubBillingUsageReportUserError503 extends BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserError503(this.data);

factory BillingGetGithubBillingUsageReportUserError503.parse(ApiResponse response) { return BillingGetGithubBillingUsageReportUserError503(BillingGetGithubBillingUsageReportUserResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BillingGetGithubBillingUsageReportUserResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageReportUserError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BillingGetGithubBillingUsageReportUserError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BillingGetGithubBillingUsageReportUserError$Unknown extends BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingGetGithubBillingUsageReportUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BillingGetGithubBillingUsageReportUserError.unknown($statusCode)'; } 
 }
