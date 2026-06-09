// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_auth_response.dart';import 'post_auth_response201.dart';import 'post_auth_response_default.dart';/// Success responses of `POST /auth`.
sealed class PostAuthSuccess {const PostAuthSuccess();

/// Parse the variant matching the response status code.
factory PostAuthSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => PostAuthSuccess200.parse(response),
  201 => PostAuthSuccess201.parse(response),
  _ => PostAuthSuccessDefault.parse(response),
}; }

 }
/// The `200` response.
@immutable final class PostAuthSuccess200 extends PostAuthSuccess {const PostAuthSuccess200(this.data);

factory PostAuthSuccess200.parse(ApiResponse response) { return PostAuthSuccess200(PostAuthResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostAuthResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAuthSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostAuthSuccess200($data)'; } 
 }
/// The `201` response.
@immutable final class PostAuthSuccess201 extends PostAuthSuccess {const PostAuthSuccess201(this.data);

factory PostAuthSuccess201.parse(ApiResponse response) { return PostAuthSuccess201(PostAuthResponse201.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostAuthResponse201 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAuthSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostAuthSuccess201($data)'; } 
 }
/// The `default` response.
@immutable final class PostAuthSuccessDefault extends PostAuthSuccess {const PostAuthSuccessDefault(this.data);

factory PostAuthSuccessDefault.parse(ApiResponse response) { return PostAuthSuccessDefault(PostAuthResponseDefault.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostAuthResponseDefault data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAuthSuccessDefault && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostAuthSuccessDefault($data)'; } 
 }
