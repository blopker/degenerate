// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsListCommitsError {const GistsListCommitsError();

/// Decodes the payload for its declared status and content type.
static GistsListCommitsError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const GistsListCommitsError304();case 403:
final json = jsonDecode(response.body);
return  GistsListCommitsError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  GistsListCommitsError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  GistsListCommitsErrorUnknown(response); }}
}
/// Response for 304.
final class GistsListCommitsError304 extends GistsListCommitsError {const GistsListCommitsError304();

}
/// Response for 403 (application/json).
final class GistsListCommitsError403 extends GistsListCommitsError {const GistsListCommitsError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class GistsListCommitsError404 extends GistsListCommitsError {const GistsListCommitsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsListCommitsErrorUnknown extends GistsListCommitsError {const GistsListCommitsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
