// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AppsListSubscriptionsForAuthenticatedUserError {const AppsListSubscriptionsForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static AppsListSubscriptionsForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const AppsListSubscriptionsForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return AppsListSubscriptionsForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return AppsListSubscriptionsForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return AppsListSubscriptionsForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class AppsListSubscriptionsForAuthenticatedUserError304 extends AppsListSubscriptionsForAuthenticatedUserError {const AppsListSubscriptionsForAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class AppsListSubscriptionsForAuthenticatedUserError401 extends AppsListSubscriptionsForAuthenticatedUserError {const AppsListSubscriptionsForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class AppsListSubscriptionsForAuthenticatedUserError404 extends AppsListSubscriptionsForAuthenticatedUserError {const AppsListSubscriptionsForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class AppsListSubscriptionsForAuthenticatedUserErrorUnknown extends AppsListSubscriptionsForAuthenticatedUserError {const AppsListSubscriptionsForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
