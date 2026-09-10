// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'repos_get_commit_response503.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposGetCommitError {const ReposGetCommitError();

/// Decodes the payload for its declared status and content type.
static ReposGetCommitError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ReposGetCommitError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return ReposGetCommitError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposGetCommitError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return ReposGetCommitError500(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return ReposGetCommitError503(ReposGetCommitResponse503.fromJson(json as Map<String, dynamic>));
default:
return ReposGetCommitErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class ReposGetCommitError404 extends ReposGetCommitError {const ReposGetCommitError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 409 (application/json).
final class ReposGetCommitError409 extends ReposGetCommitError {const ReposGetCommitError409(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class ReposGetCommitError422 extends ReposGetCommitError {const ReposGetCommitError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// Response for 500 (application/json).
final class ReposGetCommitError500 extends ReposGetCommitError {const ReposGetCommitError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class ReposGetCommitError503 extends ReposGetCommitError {const ReposGetCommitError503(this.data);

/// The decoded response payload.
final ReposGetCommitResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetCommitErrorUnknown extends ReposGetCommitError {const ReposGetCommitErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
