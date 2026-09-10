// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsCreateError {const GistsCreateError();

/// Decodes the payload for its declared status and content type.
static GistsCreateError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const GistsCreateError304();
case 403:
final json = jsonDecode(response.body);
return GistsCreateError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GistsCreateError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return GistsCreateError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return GistsCreateErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class GistsCreateError304 extends GistsCreateError {const GistsCreateError304();

 }
/// Response for 403 (application/json).
final class GistsCreateError403 extends GistsCreateError {const GistsCreateError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class GistsCreateError404 extends GistsCreateError {const GistsCreateError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class GistsCreateError422 extends GistsCreateError {const GistsCreateError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class GistsCreateErrorUnknown extends GistsCreateError {const GistsCreateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
