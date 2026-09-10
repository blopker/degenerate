// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'issues_create_response503.dart';import 'scim_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesCreateError {const IssuesCreateError();

/// Decodes the payload for its declared status and content type.
static IssuesCreateError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  IssuesCreateError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  IssuesCreateError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  IssuesCreateError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 403:
final json = jsonDecode(response.body);
return  IssuesCreateError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  IssuesCreateError404(BasicError.fromJson(json as Map<String, dynamic>));case 410:
final json = jsonDecode(response.body);
return  IssuesCreateError410(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  IssuesCreateError422(ValidationError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  IssuesCreateError503(IssuesCreateResponse503.fromJson(json as Map<String, dynamic>));default:
return  IssuesCreateErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class IssuesCreateError400ApplicationJson extends IssuesCreateError {const IssuesCreateError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class IssuesCreateError400ApplicationScimJson extends IssuesCreateError {const IssuesCreateError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class IssuesCreateError403 extends IssuesCreateError {const IssuesCreateError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class IssuesCreateError404 extends IssuesCreateError {const IssuesCreateError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 410 (application/json).
final class IssuesCreateError410 extends IssuesCreateError {const IssuesCreateError410(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class IssuesCreateError422 extends IssuesCreateError {const IssuesCreateError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 503 (application/json).
final class IssuesCreateError503 extends IssuesCreateError {const IssuesCreateError503(this.data);

/// The decoded response payload.
final IssuesCreateResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesCreateErrorUnknown extends IssuesCreateError {const IssuesCreateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
