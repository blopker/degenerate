// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsDeleteCommentError {const GistsDeleteCommentError();

/// Decodes the payload for its declared status and content type.
static GistsDeleteCommentError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const GistsDeleteCommentError304();
case 403:
final json = jsonDecode(response.body);
return GistsDeleteCommentError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GistsDeleteCommentError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return GistsDeleteCommentErrorUnknown(response);
}
}
}
/// Response for 304.
final class GistsDeleteCommentError304 extends GistsDeleteCommentError {const GistsDeleteCommentError304();

}
/// Response for 403 (application/json).
final class GistsDeleteCommentError403 extends GistsDeleteCommentError {const GistsDeleteCommentError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class GistsDeleteCommentError404 extends GistsDeleteCommentError {const GistsDeleteCommentError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsDeleteCommentErrorUnknown extends GistsDeleteCommentError {const GistsDeleteCommentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
