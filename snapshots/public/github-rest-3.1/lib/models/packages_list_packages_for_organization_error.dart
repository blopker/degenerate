// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PackagesListPackagesForOrganizationError {const PackagesListPackagesForOrganizationError();

/// Decodes the payload for its declared status and content type.
static PackagesListPackagesForOrganizationError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
return const PackagesListPackagesForOrganizationError400();
case 401:
final json = jsonDecode(response.body);
return PackagesListPackagesForOrganizationError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return PackagesListPackagesForOrganizationError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return PackagesListPackagesForOrganizationErrorUnknown(response);
}
 } 
 }
/// Response for 400.
final class PackagesListPackagesForOrganizationError400 extends PackagesListPackagesForOrganizationError {const PackagesListPackagesForOrganizationError400();

 }
/// Response for 401 (application/json).
final class PackagesListPackagesForOrganizationError401 extends PackagesListPackagesForOrganizationError {const PackagesListPackagesForOrganizationError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class PackagesListPackagesForOrganizationError403 extends PackagesListPackagesForOrganizationError {const PackagesListPackagesForOrganizationError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class PackagesListPackagesForOrganizationErrorUnknown extends PackagesListPackagesForOrganizationError {const PackagesListPackagesForOrganizationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
