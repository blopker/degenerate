// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsCreateCommentError {const GistsCreateCommentError();

/// Decodes the payload for its declared status and content type.
static GistsCreateCommentError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const GistsCreateCommentError304();
case 403:
final json = jsonDecode(response.body);
return GistsCreateCommentError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GistsCreateCommentError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return GistsCreateCommentErrorUnknown(response);
}
}
}
/// Response for 304.
final class GistsCreateCommentError304 extends GistsCreateCommentError {const GistsCreateCommentError304();

}
/// Response for 403 (application/json).
final class GistsCreateCommentError403 extends GistsCreateCommentError {const GistsCreateCommentError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class GistsCreateCommentError404 extends GistsCreateCommentError {const GistsCreateCommentError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsCreateCommentErrorUnknown extends GistsCreateCommentError {const GistsCreateCommentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
