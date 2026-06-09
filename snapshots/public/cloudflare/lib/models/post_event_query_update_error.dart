// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_event_query_update_response400.dart';import 'post_event_query_update_response404.dart';/// Error responses of `POST /accounts/{account_id}/cloudforce-one/events/queries/{query_id}`.
sealed class PostEventQueryUpdateError {const PostEventQueryUpdateError();

/// Parse the variant matching the response status code.
factory PostEventQueryUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PostEventQueryUpdateError400.parse(response),
  404 => PostEventQueryUpdateError404.parse(response),
  _ => PostEventQueryUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PostEventQueryUpdateError400 extends PostEventQueryUpdateError {const PostEventQueryUpdateError400(this.data);

factory PostEventQueryUpdateError400.parse(ApiResponse response) { return PostEventQueryUpdateError400(PostEventQueryUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostEventQueryUpdateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostEventQueryUpdateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostEventQueryUpdateError400($data)'; } 
 }
/// The `404` response.
@immutable final class PostEventQueryUpdateError404 extends PostEventQueryUpdateError {const PostEventQueryUpdateError404(this.data);

factory PostEventQueryUpdateError404.parse(ApiResponse response) { return PostEventQueryUpdateError404(PostEventQueryUpdateResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostEventQueryUpdateResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostEventQueryUpdateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostEventQueryUpdateError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PostEventQueryUpdateError$Unknown extends PostEventQueryUpdateError {const PostEventQueryUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostEventQueryUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PostEventQueryUpdateError.unknown($statusCode)'; } 
 }
