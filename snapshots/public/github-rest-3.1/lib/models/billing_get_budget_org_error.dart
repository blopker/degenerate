// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_get_budget_org_response503.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BillingGetBudgetOrgError {const BillingGetBudgetOrgError();

/// Decodes the payload for its declared status and content type.
static BillingGetBudgetOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  BillingGetBudgetOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  BillingGetBudgetOrgError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  BillingGetBudgetOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 403:
final json = jsonDecode(response.body);
return  BillingGetBudgetOrgError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  BillingGetBudgetOrgError404(BasicError.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  BillingGetBudgetOrgError500(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  BillingGetBudgetOrgError503(BillingGetBudgetOrgResponse503.fromJson(json as Map<String, dynamic>));default:
return  BillingGetBudgetOrgErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class BillingGetBudgetOrgError400ApplicationJson extends BillingGetBudgetOrgError {const BillingGetBudgetOrgError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class BillingGetBudgetOrgError400ApplicationScimJson extends BillingGetBudgetOrgError {const BillingGetBudgetOrgError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class BillingGetBudgetOrgError403 extends BillingGetBudgetOrgError {const BillingGetBudgetOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class BillingGetBudgetOrgError404 extends BillingGetBudgetOrgError {const BillingGetBudgetOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class BillingGetBudgetOrgError500 extends BillingGetBudgetOrgError {const BillingGetBudgetOrgError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class BillingGetBudgetOrgError503 extends BillingGetBudgetOrgError {const BillingGetBudgetOrgError503(this.data);

/// The decoded response payload.
final BillingGetBudgetOrgResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class BillingGetBudgetOrgErrorUnknown extends BillingGetBudgetOrgError {const BillingGetBudgetOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
