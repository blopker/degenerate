// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PackagesListPackagesForUserError {const PackagesListPackagesForUserError();

/// Decodes the payload for its declared status and content type.
static PackagesListPackagesForUserError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
return  const PackagesListPackagesForUserError400();case 401:
final json = jsonDecode(response.body);
return  PackagesListPackagesForUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  PackagesListPackagesForUserError403(BasicError.fromJson(json as Map<String, dynamic>));default:
return  PackagesListPackagesForUserErrorUnknown(response); }}
}
/// Response for 400.
final class PackagesListPackagesForUserError400 extends PackagesListPackagesForUserError {const PackagesListPackagesForUserError400();

}
/// Response for 401 (application/json).
final class PackagesListPackagesForUserError401 extends PackagesListPackagesForUserError {const PackagesListPackagesForUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class PackagesListPackagesForUserError403 extends PackagesListPackagesForUserError {const PackagesListPackagesForUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PackagesListPackagesForUserErrorUnknown extends PackagesListPackagesForUserError {const PackagesListPackagesForUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
