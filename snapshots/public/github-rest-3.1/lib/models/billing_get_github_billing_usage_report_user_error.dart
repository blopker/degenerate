// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_github_billing_usage_report_user_response503.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserError();

/// Decodes the payload for its declared status and content type.
static BillingGetGithubBillingUsageReportUserError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageReportUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageReportUserError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageReportUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageReportUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageReportUserError500(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return BillingGetGithubBillingUsageReportUserError503(BillingGetGithubBillingUsageReportUserResponse503.fromJson(json as Map<String, dynamic>));
default:
return BillingGetGithubBillingUsageReportUserErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class BillingGetGithubBillingUsageReportUserError400ApplicationJson extends BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class BillingGetGithubBillingUsageReportUserError400ApplicationScimJson extends BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class BillingGetGithubBillingUsageReportUserError403 extends BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class BillingGetGithubBillingUsageReportUserError500 extends BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class BillingGetGithubBillingUsageReportUserError503 extends BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserError503(this.data);

/// The decoded response payload.
final BillingGetGithubBillingUsageReportUserResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class BillingGetGithubBillingUsageReportUserErrorUnknown extends BillingGetGithubBillingUsageReportUserError {const BillingGetGithubBillingUsageReportUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
