// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_github_billing_usage_summary_report_user_response503.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError();

/// Decodes the payload for its declared status and content type.
static BillingGetGithubBillingUsageSummaryReportUserError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportUserError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportUserError500(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageSummaryReportUserError503(BillingGetGithubBillingUsageSummaryReportUserResponse503.fromJson(json as Map<String, dynamic>));
default:
return BillingGetGithubBillingUsageSummaryReportUserErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class BillingGetGithubBillingUsageSummaryReportUserError400ApplicationJson extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class BillingGetGithubBillingUsageSummaryReportUserError400ApplicationScimJson extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class BillingGetGithubBillingUsageSummaryReportUserError403 extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class BillingGetGithubBillingUsageSummaryReportUserError404 extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class BillingGetGithubBillingUsageSummaryReportUserError500 extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class BillingGetGithubBillingUsageSummaryReportUserError503 extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserError503(this.data);

/// The decoded response payload.
final BillingGetGithubBillingUsageSummaryReportUserResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class BillingGetGithubBillingUsageSummaryReportUserErrorUnknown extends BillingGetGithubBillingUsageSummaryReportUserError {const BillingGetGithubBillingUsageSummaryReportUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
