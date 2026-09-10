// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tag_create_response400.dart';import 'post_tag_create_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PostTagCreateError {const PostTagCreateError();

/// Decodes the payload for its declared status and content type.
static PostTagCreateError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostTagCreateError400(PostTagCreateResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return PostTagCreateError404(PostTagCreateResponse404.fromJson(json as Map<String, dynamic>));
default:
return PostTagCreateErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class PostTagCreateError400 extends PostTagCreateError {const PostTagCreateError400(this.data);

/// The decoded response payload.
final PostTagCreateResponse400 data;

 }
/// Response for 404 (application/json).
final class PostTagCreateError404 extends PostTagCreateError {const PostTagCreateError404(this.data);

/// The decoded response payload.
final PostTagCreateResponse404 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class PostTagCreateErrorUnknown extends PostTagCreateError {const PostTagCreateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
