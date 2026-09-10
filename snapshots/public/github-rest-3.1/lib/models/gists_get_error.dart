// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'gists_get_response403.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsGetError {const GistsGetError();

/// Decodes the payload for its declared status and content type.
static GistsGetError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const GistsGetError304();
case 403:
final json = jsonDecode(response.body);
return GistsGetError403(GistsGetResponse403.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GistsGetError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return GistsGetErrorUnknown(response);
}
}
}
/// Response for 304.
final class GistsGetError304 extends GistsGetError {const GistsGetError304();

}
/// Response for 403 (application/json).
final class GistsGetError403 extends GistsGetError {const GistsGetError403(this.data);

/// The decoded response payload.
final GistsGetResponse403 data;

}
/// Response for 404 (application/json).
final class GistsGetError404 extends GistsGetError {const GistsGetError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsGetErrorUnknown extends GistsGetError {const GistsGetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
