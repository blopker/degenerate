// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_markdown_response400.dart';import 'brapi_post_markdown_response422.dart';import 'brapi_post_markdown_response429.dart';import 'brapi_post_markdown_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BrapiPostMarkdownError {const BrapiPostMarkdownError();

/// Decodes the payload for its declared status and content type.
static BrapiPostMarkdownError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  BrapiPostMarkdownError400(BrapiPostMarkdownResponse400.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  BrapiPostMarkdownError422(BrapiPostMarkdownResponse422.fromJson(json as Map<String, dynamic>));case 429:
final json = jsonDecode(response.body);
return  BrapiPostMarkdownError429(BrapiPostMarkdownResponse429.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  BrapiPostMarkdownError500(BrapiPostMarkdownResponse500.fromJson(json as Map<String, dynamic>));default:
return  BrapiPostMarkdownErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class BrapiPostMarkdownError400 extends BrapiPostMarkdownError {const BrapiPostMarkdownError400(this.data);

/// The decoded response payload.
final BrapiPostMarkdownResponse400 data;

}
/// Response for 422 (application/json).
final class BrapiPostMarkdownError422 extends BrapiPostMarkdownError {const BrapiPostMarkdownError422(this.data);

/// The decoded response payload.
final BrapiPostMarkdownResponse422 data;

}
/// Response for 429 (application/json).
final class BrapiPostMarkdownError429 extends BrapiPostMarkdownError {const BrapiPostMarkdownError429(this.data);

/// The decoded response payload.
final BrapiPostMarkdownResponse429 data;

}
/// Response for 500 (application/json).
final class BrapiPostMarkdownError500 extends BrapiPostMarkdownError {const BrapiPostMarkdownError500(this.data);

/// The decoded response payload.
final BrapiPostMarkdownResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class BrapiPostMarkdownErrorUnknown extends BrapiPostMarkdownError {const BrapiPostMarkdownErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
