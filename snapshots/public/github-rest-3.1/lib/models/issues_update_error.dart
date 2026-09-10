// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'issues_update_response503.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesUpdateError {const IssuesUpdateError();

/// Decodes the payload for its declared status and content type.
static IssuesUpdateError parse(ApiResponse response) { switch (response.statusCode) {
case 301:
final json = jsonDecode(response.body);
return IssuesUpdateError301(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return IssuesUpdateError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return IssuesUpdateError404(BasicError.fromJson(json as Map<String, dynamic>));
case 410:
final json = jsonDecode(response.body);
return IssuesUpdateError410(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return IssuesUpdateError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return IssuesUpdateError503(IssuesUpdateResponse503.fromJson(json as Map<String, dynamic>));
default:
return IssuesUpdateErrorUnknown(response);
}
 } 
 }
/// Response for 301 (application/json).
final class IssuesUpdateError301 extends IssuesUpdateError {const IssuesUpdateError301(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class IssuesUpdateError403 extends IssuesUpdateError {const IssuesUpdateError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class IssuesUpdateError404 extends IssuesUpdateError {const IssuesUpdateError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 410 (application/json).
final class IssuesUpdateError410 extends IssuesUpdateError {const IssuesUpdateError410(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class IssuesUpdateError422 extends IssuesUpdateError {const IssuesUpdateError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// Response for 503 (application/json).
final class IssuesUpdateError503 extends IssuesUpdateError {const IssuesUpdateError503(this.data);

/// The decoded response payload.
final IssuesUpdateResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesUpdateErrorUnknown extends IssuesUpdateError {const IssuesUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
