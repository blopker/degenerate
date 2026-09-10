// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsListError {const GistsListError();

/// Decodes the payload for its declared status and content type.
static GistsListError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const GistsListError304();
case 403:
final json = jsonDecode(response.body);
return GistsListError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return GistsListErrorUnknown(response);
}
}
}
/// Response for 304.
final class GistsListError304 extends GistsListError {const GistsListError304();

}
/// Response for 403 (application/json).
final class GistsListError403 extends GistsListError {const GistsListError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsListErrorUnknown extends GistsListError {const GistsListErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
