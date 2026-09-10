// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsStarError {const GistsStarError();

/// Decodes the payload for its declared status and content type.
static GistsStarError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const GistsStarError304();case 403:
final json = jsonDecode(response.body);
return  GistsStarError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  GistsStarError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  GistsStarErrorUnknown(response); }}
}
/// Response for 304.
final class GistsStarError304 extends GistsStarError {const GistsStarError304();

}
/// Response for 403 (application/json).
final class GistsStarError403 extends GistsStarError {const GistsStarError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class GistsStarError404 extends GistsStarError {const GistsStarError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsStarErrorUnknown extends GistsStarError {const GistsStarErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
