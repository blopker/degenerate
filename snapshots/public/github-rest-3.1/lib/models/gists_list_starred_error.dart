// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsListStarredError {const GistsListStarredError();

/// Decodes the payload for its declared status and content type.
static GistsListStarredError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const GistsListStarredError304();
case 401:
final json = jsonDecode(response.body);
return GistsListStarredError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return GistsListStarredError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return GistsListStarredErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class GistsListStarredError304 extends GistsListStarredError {const GistsListStarredError304();

 }
/// Response for 401 (application/json).
final class GistsListStarredError401 extends GistsListStarredError {const GistsListStarredError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class GistsListStarredError403 extends GistsListStarredError {const GistsListStarredError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class GistsListStarredErrorUnknown extends GistsListStarredError {const GistsListStarredErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
