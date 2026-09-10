// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'pulls_get_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PullsGetError {const PullsGetError();

/// Decodes the payload for its declared status and content type.
static PullsGetError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const PullsGetError304();case 404:
final json = jsonDecode(response.body);
return  PullsGetError404(BasicError.fromJson(json as Map<String, dynamic>));case 406:
final json = jsonDecode(response.body);
return  PullsGetError406(BasicError.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  PullsGetError500(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  PullsGetError503(PullsGetResponse503.fromJson(json as Map<String, dynamic>));default:
return  PullsGetErrorUnknown(response); }}
}
/// Response for 304.
final class PullsGetError304 extends PullsGetError {const PullsGetError304();

}
/// Response for 404 (application/json).
final class PullsGetError404 extends PullsGetError {const PullsGetError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 406 (application/json).
final class PullsGetError406 extends PullsGetError {const PullsGetError406(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class PullsGetError500 extends PullsGetError {const PullsGetError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class PullsGetError503 extends PullsGetError {const PullsGetError503(this.data);

/// The decoded response payload.
final PullsGetResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PullsGetErrorUnknown extends PullsGetError {const PullsGetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
