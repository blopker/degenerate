// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'pulls_merge_response405.dart';import 'pulls_merge_response409.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PullsMergeError {const PullsMergeError();

/// Decodes the payload for its declared status and content type.
static PullsMergeError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return PullsMergeError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return PullsMergeError404(BasicError.fromJson(json as Map<String, dynamic>));
case 405:
final json = jsonDecode(response.body);
return PullsMergeError405(PullsMergeResponse405.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return PullsMergeError409(PullsMergeResponse409.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return PullsMergeError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return PullsMergeErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class PullsMergeError403 extends PullsMergeError {const PullsMergeError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class PullsMergeError404 extends PullsMergeError {const PullsMergeError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 405 (application/json).
final class PullsMergeError405 extends PullsMergeError {const PullsMergeError405(this.data);

/// The decoded response payload.
final PullsMergeResponse405 data;

 }
/// Response for 409 (application/json).
final class PullsMergeError409 extends PullsMergeError {const PullsMergeError409(this.data);

/// The decoded response payload.
final PullsMergeResponse409 data;

 }
/// Response for 422 (application/json).
final class PullsMergeError422 extends PullsMergeError {const PullsMergeError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class PullsMergeErrorUnknown extends PullsMergeError {const PullsMergeErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
