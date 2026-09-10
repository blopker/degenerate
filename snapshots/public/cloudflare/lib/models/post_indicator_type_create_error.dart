// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_indicator_type_create_response400.dart';import 'post_indicator_type_create_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PostIndicatorTypeCreateError {const PostIndicatorTypeCreateError();

/// Decodes the payload for its declared status and content type.
static PostIndicatorTypeCreateError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostIndicatorTypeCreateError400(PostIndicatorTypeCreateResponse400.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return PostIndicatorTypeCreateError500(PostIndicatorTypeCreateResponse500.fromJson(json as Map<String, dynamic>));
default:
return PostIndicatorTypeCreateErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class PostIndicatorTypeCreateError400 extends PostIndicatorTypeCreateError {const PostIndicatorTypeCreateError400(this.data);

/// The decoded response payload.
final PostIndicatorTypeCreateResponse400 data;

 }
/// Response for 500 (application/json).
final class PostIndicatorTypeCreateError500 extends PostIndicatorTypeCreateError {const PostIndicatorTypeCreateError500(this.data);

/// The decoded response payload.
final PostIndicatorTypeCreateResponse500 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class PostIndicatorTypeCreateErrorUnknown extends PostIndicatorTypeCreateError {const PostIndicatorTypeCreateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
