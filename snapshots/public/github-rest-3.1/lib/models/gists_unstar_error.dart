// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsUnstarError {const GistsUnstarError();

/// Decodes the payload for its declared status and content type.
static GistsUnstarError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const GistsUnstarError304();case 403:
final json = jsonDecode(response.body);
return  GistsUnstarError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  GistsUnstarError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  GistsUnstarErrorUnknown(response); }}
}
/// Response for 304.
final class GistsUnstarError304 extends GistsUnstarError {const GistsUnstarError304();

}
/// Response for 403 (application/json).
final class GistsUnstarError403 extends GistsUnstarError {const GistsUnstarError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class GistsUnstarError404 extends GistsUnstarError {const GistsUnstarError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsUnstarErrorUnknown extends GistsUnstarError {const GistsUnstarErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
