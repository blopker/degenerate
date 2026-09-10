// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'billing_delete_budget_org_response503.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError();

/// Decodes the payload for its declared status and content type.
static BillingDeleteBudgetOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  BillingDeleteBudgetOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  BillingDeleteBudgetOrgError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  BillingDeleteBudgetOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 403:
final json = jsonDecode(response.body);
return  BillingDeleteBudgetOrgError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  BillingDeleteBudgetOrgError404(BasicError.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  BillingDeleteBudgetOrgError500(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  BillingDeleteBudgetOrgError503(BillingDeleteBudgetOrgResponse503.fromJson(json as Map<String, dynamic>));default:
return  BillingDeleteBudgetOrgErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class BillingDeleteBudgetOrgError400ApplicationJson extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class BillingDeleteBudgetOrgError400ApplicationScimJson extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class BillingDeleteBudgetOrgError403 extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class BillingDeleteBudgetOrgError404 extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class BillingDeleteBudgetOrgError500 extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class BillingDeleteBudgetOrgError503 extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgError503(this.data);

/// The decoded response payload.
final BillingDeleteBudgetOrgResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class BillingDeleteBudgetOrgErrorUnknown extends BillingDeleteBudgetOrgError {const BillingDeleteBudgetOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
