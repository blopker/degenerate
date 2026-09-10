// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_github_billing_usage_report_org_response503.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgError();

/// Decodes the payload for its declared status and content type.
static BillingGetGithubBillingUsageReportOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageReportOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageReportOrgError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageReportOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageReportOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageReportOrgError500(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageReportOrgError503(BillingGetGithubBillingUsageReportOrgResponse503.fromJson(json as Map<String, dynamic>));
default:
return BillingGetGithubBillingUsageReportOrgErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class BillingGetGithubBillingUsageReportOrgError400ApplicationJson extends BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class BillingGetGithubBillingUsageReportOrgError400ApplicationScimJson extends BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class BillingGetGithubBillingUsageReportOrgError403 extends BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class BillingGetGithubBillingUsageReportOrgError500 extends BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class BillingGetGithubBillingUsageReportOrgError503 extends BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgError503(this.data);

/// The decoded response payload.
final BillingGetGithubBillingUsageReportOrgResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class BillingGetGithubBillingUsageReportOrgErrorUnknown extends BillingGetGithubBillingUsageReportOrgError {const BillingGetGithubBillingUsageReportOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
