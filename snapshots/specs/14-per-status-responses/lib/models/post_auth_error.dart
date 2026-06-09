// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_auth_response401.dart';import 'post_auth_response_default.dart';/// Error responses of `POST /auth`.
sealed class PostAuthError {const PostAuthError();

/// Parse the variant matching the response status code.
factory PostAuthError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => PostAuthError401.parse(response),
  _ => PostAuthErrorDefault.parse(response),
}; }

 }
/// The `401` response.
@immutable final class PostAuthError401 extends PostAuthError {const PostAuthError401(this.data);

factory PostAuthError401.parse(ApiResponse response) { return PostAuthError401(PostAuthResponse401.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostAuthResponse401 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAuthError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostAuthError401($data)'; } 
 }
/// The `default` response.
@immutable final class PostAuthErrorDefault extends PostAuthError {const PostAuthErrorDefault(this.data);

factory PostAuthErrorDefault.parse(ApiResponse response) { return PostAuthErrorDefault(PostAuthResponseDefault.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostAuthResponseDefault data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAuthErrorDefault && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostAuthErrorDefault($data)'; } 
 }
