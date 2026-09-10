// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsListPublicError {const GistsListPublicError();

/// Decodes the payload for its declared status and content type.
static GistsListPublicError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const GistsListPublicError304();
case 403:
final json = jsonDecode(response.body);
return GistsListPublicError403(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return GistsListPublicError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return GistsListPublicErrorUnknown(response);
}
}
}
/// Response for 304.
final class GistsListPublicError304 extends GistsListPublicError {const GistsListPublicError304();

}
/// Response for 403 (application/json).
final class GistsListPublicError403 extends GistsListPublicError {const GistsListPublicError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class GistsListPublicError422 extends GistsListPublicError {const GistsListPublicError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsListPublicErrorUnknown extends GistsListPublicError {const GistsListPublicErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
