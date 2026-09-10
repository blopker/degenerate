// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsListForksError {const GistsListForksError();

/// Decodes the payload for its declared status and content type.
static GistsListForksError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const GistsListForksError304();
case 403:
final json = jsonDecode(response.body);
return GistsListForksError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GistsListForksError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return GistsListForksErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class GistsListForksError304 extends GistsListForksError {const GistsListForksError304();

 }
/// Response for 403 (application/json).
final class GistsListForksError403 extends GistsListForksError {const GistsListForksError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class GistsListForksError404 extends GistsListForksError {const GistsListForksError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class GistsListForksErrorUnknown extends GistsListForksError {const GistsListForksErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
