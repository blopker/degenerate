// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError();

/// Decodes the payload for its declared status and content type.
static BillingUpdateBudgetOrgError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return BillingUpdateBudgetOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return BillingUpdateBudgetOrgError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return BillingUpdateBudgetOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 401:
final json = jsonDecode(response.body);
return BillingUpdateBudgetOrgError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return BillingUpdateBudgetOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return BillingUpdateBudgetOrgError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return BillingUpdateBudgetOrgError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return BillingUpdateBudgetOrgError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return BillingUpdateBudgetOrgErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class BillingUpdateBudgetOrgError400ApplicationJson extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 400 (application/scim+json).
final class BillingUpdateBudgetOrgError400ApplicationScimJson extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

 }
/// Response for 401 (application/json).
final class BillingUpdateBudgetOrgError401 extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class BillingUpdateBudgetOrgError403 extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class BillingUpdateBudgetOrgError404 extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class BillingUpdateBudgetOrgError422 extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// Response for 500 (application/json).
final class BillingUpdateBudgetOrgError500 extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class BillingUpdateBudgetOrgErrorUnknown extends BillingUpdateBudgetOrgError {const BillingUpdateBudgetOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
