// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_github_billing_premium_request_usage_report_org_response503.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError();

/// Decodes the payload for its declared status and content type.
static BillingGetGithubBillingPremiumRequestUsageReportOrgError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return BillingGetGithubBillingPremiumRequestUsageReportOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return BillingGetGithubBillingPremiumRequestUsageReportOrgError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return BillingGetGithubBillingPremiumRequestUsageReportOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return BillingGetGithubBillingPremiumRequestUsageReportOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return BillingGetGithubBillingPremiumRequestUsageReportOrgError404(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return BillingGetGithubBillingPremiumRequestUsageReportOrgError500(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return BillingGetGithubBillingPremiumRequestUsageReportOrgError503(BillingGetGithubBillingPremiumRequestUsageReportOrgResponse503.fromJson(json as Map<String, dynamic>));
default:
return BillingGetGithubBillingPremiumRequestUsageReportOrgErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class BillingGetGithubBillingPremiumRequestUsageReportOrgError400ApplicationJson extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 400 (application/scim+json).
final class BillingGetGithubBillingPremiumRequestUsageReportOrgError400ApplicationScimJson extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

 }
/// Response for 403 (application/json).
final class BillingGetGithubBillingPremiumRequestUsageReportOrgError403 extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class BillingGetGithubBillingPremiumRequestUsageReportOrgError404 extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 500 (application/json).
final class BillingGetGithubBillingPremiumRequestUsageReportOrgError500 extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class BillingGetGithubBillingPremiumRequestUsageReportOrgError503 extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgError503(this.data);

/// The decoded response payload.
final BillingGetGithubBillingPremiumRequestUsageReportOrgResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class BillingGetGithubBillingPremiumRequestUsageReportOrgErrorUnknown extends BillingGetGithubBillingPremiumRequestUsageReportOrgError {const BillingGetGithubBillingPremiumRequestUsageReportOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
