// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_github_billing_usage_summary_report_org_response503.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgError();

/// Decodes the payload for its declared status and content type.
static BillingGetGithubBillingUsageSummaryReportOrgError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportOrgError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportOrgError500(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportOrgError503(BillingGetGithubBillingUsageSummaryReportOrgResponse503.fromJson(json as Map<String, dynamic>));
default:
return BillingGetGithubBillingUsageSummaryReportOrgErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class BillingGetGithubBillingUsageSummaryReportOrgError400ApplicationJson extends BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 400 (application/scim+json).
final class BillingGetGithubBillingUsageSummaryReportOrgError400ApplicationScimJson extends BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

 }
/// Response for 403 (application/json).
final class BillingGetGithubBillingUsageSummaryReportOrgError403 extends BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 500 (application/json).
final class BillingGetGithubBillingUsageSummaryReportOrgError500 extends BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class BillingGetGithubBillingUsageSummaryReportOrgError503 extends BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgError503(this.data);

/// The decoded response payload.
final BillingGetGithubBillingUsageSummaryReportOrgResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class BillingGetGithubBillingUsageSummaryReportOrgErrorUnknown extends BillingGetGithubBillingUsageSummaryReportOrgError {const BillingGetGithubBillingUsageSummaryReportOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
