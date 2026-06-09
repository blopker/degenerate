// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_update_tokens_response400.dart';import 'ai_search_update_tokens_response404.dart';/// Error responses of `PUT /accounts/{account_id}/ai-search/tokens/{id}`.
sealed class AiSearchUpdateTokensError {const AiSearchUpdateTokensError();

/// Parse the variant matching the response status code.
factory AiSearchUpdateTokensError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AiSearchUpdateTokensError400.parse(response),
  404 => AiSearchUpdateTokensError404.parse(response),
  _ => AiSearchUpdateTokensError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AiSearchUpdateTokensError400 extends AiSearchUpdateTokensError {const AiSearchUpdateTokensError400(this.data);

factory AiSearchUpdateTokensError400.parse(ApiResponse response) { return AiSearchUpdateTokensError400(AiSearchUpdateTokensResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchUpdateTokensResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateTokensError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchUpdateTokensError400($data)'; } 
 }
/// The `404` response.
@immutable final class AiSearchUpdateTokensError404 extends AiSearchUpdateTokensError {const AiSearchUpdateTokensError404(this.data);

factory AiSearchUpdateTokensError404.parse(ApiResponse response) { return AiSearchUpdateTokensError404(AiSearchUpdateTokensResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchUpdateTokensResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateTokensError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchUpdateTokensError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AiSearchUpdateTokensError$Unknown extends AiSearchUpdateTokensError {const AiSearchUpdateTokensError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateTokensError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AiSearchUpdateTokensError.unknown($statusCode)'; } 
 }
