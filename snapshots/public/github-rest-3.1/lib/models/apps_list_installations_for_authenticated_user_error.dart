// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AppsListInstallationsForAuthenticatedUserError {const AppsListInstallationsForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static AppsListInstallationsForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const AppsListInstallationsForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return AppsListInstallationsForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return AppsListInstallationsForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return AppsListInstallationsForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class AppsListInstallationsForAuthenticatedUserError304 extends AppsListInstallationsForAuthenticatedUserError {const AppsListInstallationsForAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class AppsListInstallationsForAuthenticatedUserError401 extends AppsListInstallationsForAuthenticatedUserError {const AppsListInstallationsForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class AppsListInstallationsForAuthenticatedUserError403 extends AppsListInstallationsForAuthenticatedUserError {const AppsListInstallationsForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class AppsListInstallationsForAuthenticatedUserErrorUnknown extends AppsListInstallationsForAuthenticatedUserError {const AppsListInstallationsForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
