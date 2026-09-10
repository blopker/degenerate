// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tag_category_create_response400.dart';import 'post_tag_category_create_response409.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PostTagCategoryCreateError {const PostTagCategoryCreateError();

/// Decodes the payload for its declared status and content type.
static PostTagCategoryCreateError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostTagCategoryCreateError400(PostTagCategoryCreateResponse400.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return PostTagCategoryCreateError409(PostTagCategoryCreateResponse409.fromJson(json as Map<String, dynamic>));
default:
return PostTagCategoryCreateErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class PostTagCategoryCreateError400 extends PostTagCategoryCreateError {const PostTagCategoryCreateError400(this.data);

/// The decoded response payload.
final PostTagCategoryCreateResponse400 data;

}
/// Response for 409 (application/json).
final class PostTagCategoryCreateError409 extends PostTagCategoryCreateError {const PostTagCategoryCreateError409(this.data);

/// The decoded response payload.
final PostTagCategoryCreateResponse409 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PostTagCategoryCreateErrorUnknown extends PostTagCategoryCreateError {const PostTagCategoryCreateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
