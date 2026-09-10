// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsListCommentsError {const GistsListCommentsError();

/// Decodes the payload for its declared status and content type.
static GistsListCommentsError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const GistsListCommentsError304();
case 403:
final json = jsonDecode(response.body);
return GistsListCommentsError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GistsListCommentsError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return GistsListCommentsErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class GistsListCommentsError304 extends GistsListCommentsError {const GistsListCommentsError304();

 }
/// Response for 403 (application/json).
final class GistsListCommentsError403 extends GistsListCommentsError {const GistsListCommentsError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class GistsListCommentsError404 extends GistsListCommentsError {const GistsListCommentsError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class GistsListCommentsErrorUnknown extends GistsListCommentsError {const GistsListCommentsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
