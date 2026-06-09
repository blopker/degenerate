// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tag_create_response400.dart';import 'post_tag_create_response404.dart';/// Error responses of `POST /accounts/{account_id}/cloudforce-one/events/tags/create`.
sealed class PostTagCreateError {const PostTagCreateError();

/// Parse the variant matching the response status code.
factory PostTagCreateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PostTagCreateError400.parse(response),
  404 => PostTagCreateError404.parse(response),
  _ => PostTagCreateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PostTagCreateError400 extends PostTagCreateError {const PostTagCreateError400(this.data);

factory PostTagCreateError400.parse(ApiResponse response) { return PostTagCreateError400(PostTagCreateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostTagCreateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTagCreateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostTagCreateError400($data)'; } 
 }
/// The `404` response.
@immutable final class PostTagCreateError404 extends PostTagCreateError {const PostTagCreateError404(this.data);

factory PostTagCreateError404.parse(ApiResponse response) { return PostTagCreateError404(PostTagCreateResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostTagCreateResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTagCreateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostTagCreateError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PostTagCreateError$Unknown extends PostTagCreateError {const PostTagCreateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTagCreateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PostTagCreateError.unknown($statusCode)'; } 
 }
