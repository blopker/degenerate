// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AppsListSubscriptionsForAuthenticatedUserStubbedError {const AppsListSubscriptionsForAuthenticatedUserStubbedError();

/// Decodes the payload for its declared status and content type.
static AppsListSubscriptionsForAuthenticatedUserStubbedError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const AppsListSubscriptionsForAuthenticatedUserStubbedError304();
case 401:
final json = jsonDecode(response.body);
return AppsListSubscriptionsForAuthenticatedUserStubbedError401(BasicError.fromJson(json as Map<String, dynamic>));
default:
return AppsListSubscriptionsForAuthenticatedUserStubbedErrorUnknown(response);
}
}
}
/// Response for 304.
final class AppsListSubscriptionsForAuthenticatedUserStubbedError304 extends AppsListSubscriptionsForAuthenticatedUserStubbedError {const AppsListSubscriptionsForAuthenticatedUserStubbedError304();

}
/// Response for 401 (application/json).
final class AppsListSubscriptionsForAuthenticatedUserStubbedError401 extends AppsListSubscriptionsForAuthenticatedUserStubbedError {const AppsListSubscriptionsForAuthenticatedUserStubbedError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AppsListSubscriptionsForAuthenticatedUserStubbedErrorUnknown extends AppsListSubscriptionsForAuthenticatedUserStubbedError {const AppsListSubscriptionsForAuthenticatedUserStubbedErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
