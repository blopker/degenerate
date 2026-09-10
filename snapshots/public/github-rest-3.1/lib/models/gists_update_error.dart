// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsUpdateError {const GistsUpdateError();

/// Decodes the payload for its declared status and content type.
static GistsUpdateError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return GistsUpdateError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return GistsUpdateError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return GistsUpdateErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class GistsUpdateError404 extends GistsUpdateError {const GistsUpdateError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class GistsUpdateError422 extends GistsUpdateError {const GistsUpdateError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsUpdateErrorUnknown extends GistsUpdateError {const GistsUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
