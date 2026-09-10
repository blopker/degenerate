// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DependabotUpdateAlertError {const DependabotUpdateAlertError();

/// Decodes the payload for its declared status and content type.
static DependabotUpdateAlertError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return DependabotUpdateAlertError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return DependabotUpdateAlertError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return DependabotUpdateAlertError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return DependabotUpdateAlertError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return DependabotUpdateAlertError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return DependabotUpdateAlertError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return DependabotUpdateAlertError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
default:
return DependabotUpdateAlertErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class DependabotUpdateAlertError400ApplicationJson extends DependabotUpdateAlertError {const DependabotUpdateAlertError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 400 (application/scim+json).
final class DependabotUpdateAlertError400ApplicationScimJson extends DependabotUpdateAlertError {const DependabotUpdateAlertError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

 }
/// Response for 403 (application/json).
final class DependabotUpdateAlertError403 extends DependabotUpdateAlertError {const DependabotUpdateAlertError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class DependabotUpdateAlertError404 extends DependabotUpdateAlertError {const DependabotUpdateAlertError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 409 (application/json).
final class DependabotUpdateAlertError409 extends DependabotUpdateAlertError {const DependabotUpdateAlertError409(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class DependabotUpdateAlertError422 extends DependabotUpdateAlertError {const DependabotUpdateAlertError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class DependabotUpdateAlertErrorUnknown extends DependabotUpdateAlertError {const DependabotUpdateAlertErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
