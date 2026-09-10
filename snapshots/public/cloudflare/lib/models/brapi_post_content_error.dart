// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_content_response400.dart';import 'brapi_post_content_response422.dart';import 'brapi_post_content_response429.dart';import 'brapi_post_content_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BrapiPostContentError {const BrapiPostContentError();

/// Decodes the payload for its declared status and content type.
static BrapiPostContentError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return BrapiPostContentError400(BrapiPostContentResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return BrapiPostContentError422(BrapiPostContentResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return BrapiPostContentError429(BrapiPostContentResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return BrapiPostContentError500(BrapiPostContentResponse500.fromJson(json as Map<String, dynamic>));
default:
return BrapiPostContentErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class BrapiPostContentError400 extends BrapiPostContentError {const BrapiPostContentError400(this.data);

/// The decoded response payload.
final BrapiPostContentResponse400 data;

 }
/// Response for 422 (application/json).
final class BrapiPostContentError422 extends BrapiPostContentError {const BrapiPostContentError422(this.data);

/// The decoded response payload.
final BrapiPostContentResponse422 data;

 }
/// Response for 429 (application/json).
final class BrapiPostContentError429 extends BrapiPostContentError {const BrapiPostContentError429(this.data);

/// The decoded response payload.
final BrapiPostContentResponse429 data;

 }
/// Response for 500 (application/json).
final class BrapiPostContentError500 extends BrapiPostContentError {const BrapiPostContentError500(this.data);

/// The decoded response payload.
final BrapiPostContentResponse500 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class BrapiPostContentErrorUnknown extends BrapiPostContentError {const BrapiPostContentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
