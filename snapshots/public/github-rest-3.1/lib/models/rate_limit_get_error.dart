// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /rate_limit`.
sealed class RateLimitGetError {const RateLimitGetError();

/// Parse the variant matching the response status code.
factory RateLimitGetError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => RateLimitGetError304.parse(response),
  404 => RateLimitGetError404.parse(response),
  _ => RateLimitGetError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class RateLimitGetError304 extends RateLimitGetError {const RateLimitGetError304();

factory RateLimitGetError304.parse(ApiResponse _) { return const RateLimitGetError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is RateLimitGetError304; } 
@override int get hashCode { return (RateLimitGetError304).hashCode; } 
@override String toString() { return 'RateLimitGetError304()'; } 
 }
/// The `404` response.
@immutable final class RateLimitGetError404 extends RateLimitGetError {const RateLimitGetError404(this.data);

factory RateLimitGetError404.parse(ApiResponse response) { return RateLimitGetError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is RateLimitGetError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'RateLimitGetError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class RateLimitGetError$Unknown extends RateLimitGetError {const RateLimitGetError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is RateLimitGetError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'RateLimitGetError.unknown($statusCode)'; } 
 }
