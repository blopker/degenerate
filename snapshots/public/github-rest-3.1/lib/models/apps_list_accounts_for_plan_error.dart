// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AppsListAccountsForPlanError {const AppsListAccountsForPlanError();

/// Decodes the payload for its declared status and content type.
static AppsListAccountsForPlanError parse(ApiResponse response) { switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return AppsListAccountsForPlanError401(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return AppsListAccountsForPlanError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return AppsListAccountsForPlanError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return AppsListAccountsForPlanErrorUnknown(response);
}
 } 
 }
/// Response for 401 (application/json).
final class AppsListAccountsForPlanError401 extends AppsListAccountsForPlanError {const AppsListAccountsForPlanError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class AppsListAccountsForPlanError404 extends AppsListAccountsForPlanError {const AppsListAccountsForPlanError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class AppsListAccountsForPlanError422 extends AppsListAccountsForPlanError {const AppsListAccountsForPlanError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class AppsListAccountsForPlanErrorUnknown extends AppsListAccountsForPlanError {const AppsListAccountsForPlanErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
