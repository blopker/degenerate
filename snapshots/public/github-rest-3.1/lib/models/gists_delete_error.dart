// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsDeleteError {const GistsDeleteError();

/// Decodes the payload for its declared status and content type.
static GistsDeleteError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const GistsDeleteError304();
case 403:
final json = jsonDecode(response.body);
return GistsDeleteError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GistsDeleteError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return GistsDeleteErrorUnknown(response);
}
}
}
/// Response for 304.
final class GistsDeleteError304 extends GistsDeleteError {const GistsDeleteError304();

}
/// Response for 403 (application/json).
final class GistsDeleteError403 extends GistsDeleteError {const GistsDeleteError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class GistsDeleteError404 extends GistsDeleteError {const GistsDeleteError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsDeleteErrorUnknown extends GistsDeleteError {const GistsDeleteErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
