// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_github_billing_premium_request_usage_report_user_response503.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError();

/// Decodes the payload for its declared status and content type.
static BillingGetGithubBillingPremiumRequestUsageReportUserError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  BillingGetGithubBillingPremiumRequestUsageReportUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  BillingGetGithubBillingPremiumRequestUsageReportUserError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  BillingGetGithubBillingPremiumRequestUsageReportUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 403:
final json = jsonDecode(response.body);
return  BillingGetGithubBillingPremiumRequestUsageReportUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  BillingGetGithubBillingPremiumRequestUsageReportUserError404(BasicError.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  BillingGetGithubBillingPremiumRequestUsageReportUserError500(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  BillingGetGithubBillingPremiumRequestUsageReportUserError503(BillingGetGithubBillingPremiumRequestUsageReportUserResponse503.fromJson(json as Map<String, dynamic>));default:
return  BillingGetGithubBillingPremiumRequestUsageReportUserErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class BillingGetGithubBillingPremiumRequestUsageReportUserError400ApplicationJson extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class BillingGetGithubBillingPremiumRequestUsageReportUserError400ApplicationScimJson extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class BillingGetGithubBillingPremiumRequestUsageReportUserError403 extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class BillingGetGithubBillingPremiumRequestUsageReportUserError404 extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class BillingGetGithubBillingPremiumRequestUsageReportUserError500 extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class BillingGetGithubBillingPremiumRequestUsageReportUserError503 extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserError503(this.data);

/// The decoded response payload.
final BillingGetGithubBillingPremiumRequestUsageReportUserResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class BillingGetGithubBillingPremiumRequestUsageReportUserErrorUnknown extends BillingGetGithubBillingPremiumRequestUsageReportUserError {const BillingGetGithubBillingPremiumRequestUsageReportUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
