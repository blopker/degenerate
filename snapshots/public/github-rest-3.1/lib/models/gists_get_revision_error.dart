// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsGetRevisionError {const GistsGetRevisionError();

/// Decodes the payload for its declared status and content type.
static GistsGetRevisionError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return GistsGetRevisionError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GistsGetRevisionError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return GistsGetRevisionError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return GistsGetRevisionErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class GistsGetRevisionError403 extends GistsGetRevisionError {const GistsGetRevisionError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class GistsGetRevisionError404 extends GistsGetRevisionError {const GistsGetRevisionError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class GistsGetRevisionError422 extends GistsGetRevisionError {const GistsGetRevisionError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class GistsGetRevisionErrorUnknown extends GistsGetRevisionError {const GistsGetRevisionErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
