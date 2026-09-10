// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'gists_get_comment_response403.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsGetCommentError {const GistsGetCommentError();

/// Decodes the payload for its declared status and content type.
static GistsGetCommentError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const GistsGetCommentError304();case 403:
final json = jsonDecode(response.body);
return  GistsGetCommentError403(GistsGetCommentResponse403.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  GistsGetCommentError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  GistsGetCommentErrorUnknown(response); }}
}
/// Response for 304.
final class GistsGetCommentError304 extends GistsGetCommentError {const GistsGetCommentError304();

}
/// Response for 403 (application/json).
final class GistsGetCommentError403 extends GistsGetCommentError {const GistsGetCommentError403(this.data);

/// The decoded response payload.
final GistsGetCommentResponse403 data;

}
/// Response for 404 (application/json).
final class GistsGetCommentError404 extends GistsGetCommentError {const GistsGetCommentError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsGetCommentErrorUnknown extends GistsGetCommentError {const GistsGetCommentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
