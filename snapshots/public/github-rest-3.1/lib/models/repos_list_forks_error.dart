// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposListForksError {const ReposListForksError();

/// Decodes the payload for its declared status and content type.
static ReposListForksError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return ReposListForksError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return ReposListForksError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return ReposListForksError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

default:
return ReposListForksErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class ReposListForksError400ApplicationJson extends ReposListForksError {const ReposListForksError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class ReposListForksError400ApplicationScimJson extends ReposListForksError {const ReposListForksError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposListForksErrorUnknown extends ReposListForksError {const ReposListForksErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
