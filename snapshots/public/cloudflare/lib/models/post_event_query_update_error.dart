// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_event_query_update_response400.dart';import 'post_event_query_update_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PostEventQueryUpdateError {const PostEventQueryUpdateError();

/// Decodes the payload for its declared status and content type.
static PostEventQueryUpdateError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostEventQueryUpdateError400(PostEventQueryUpdateResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return PostEventQueryUpdateError404(PostEventQueryUpdateResponse404.fromJson(json as Map<String, dynamic>));
default:
return PostEventQueryUpdateErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class PostEventQueryUpdateError400 extends PostEventQueryUpdateError {const PostEventQueryUpdateError400(this.data);

/// The decoded response payload.
final PostEventQueryUpdateResponse400 data;

 }
/// Response for 404 (application/json).
final class PostEventQueryUpdateError404 extends PostEventQueryUpdateError {const PostEventQueryUpdateError404(this.data);

/// The decoded response payload.
final PostEventQueryUpdateResponse404 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class PostEventQueryUpdateErrorUnknown extends PostEventQueryUpdateError {const PostEventQueryUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
