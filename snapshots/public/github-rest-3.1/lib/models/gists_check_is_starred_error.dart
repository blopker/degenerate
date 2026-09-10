// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'gists_check_is_starred_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsCheckIsStarredError {const GistsCheckIsStarredError();

/// Decodes the payload for its declared status and content type.
static GistsCheckIsStarredError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const GistsCheckIsStarredError304();case 403:
final json = jsonDecode(response.body);
return  GistsCheckIsStarredError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  GistsCheckIsStarredError404(GistsCheckIsStarredResponse404.fromJson(json as Map<String, dynamic>));default:
return  GistsCheckIsStarredErrorUnknown(response); }}
}
/// Response for 304.
final class GistsCheckIsStarredError304 extends GistsCheckIsStarredError {const GistsCheckIsStarredError304();

}
/// Response for 403 (application/json).
final class GistsCheckIsStarredError403 extends GistsCheckIsStarredError {const GistsCheckIsStarredError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class GistsCheckIsStarredError404 extends GistsCheckIsStarredError {const GistsCheckIsStarredError404(this.data);

/// The decoded response payload.
final GistsCheckIsStarredResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsCheckIsStarredErrorUnknown extends GistsCheckIsStarredError {const GistsCheckIsStarredErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
