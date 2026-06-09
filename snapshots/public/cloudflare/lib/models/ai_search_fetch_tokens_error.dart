// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_fetch_tokens_response400.dart';import 'ai_search_fetch_tokens_response404.dart';/// Error responses of `GET /accounts/{account_id}/ai-search/tokens/{id}`.
sealed class AiSearchFetchTokensError {const AiSearchFetchTokensError();

/// Parse the variant matching the response status code.
factory AiSearchFetchTokensError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AiSearchFetchTokensError400.parse(response),
  404 => AiSearchFetchTokensError404.parse(response),
  _ => AiSearchFetchTokensError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AiSearchFetchTokensError400 extends AiSearchFetchTokensError {const AiSearchFetchTokensError400(this.data);

factory AiSearchFetchTokensError400.parse(ApiResponse response) { return AiSearchFetchTokensError400(AiSearchFetchTokensResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchFetchTokensResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchFetchTokensError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchFetchTokensError400($data)'; } 
 }
/// The `404` response.
@immutable final class AiSearchFetchTokensError404 extends AiSearchFetchTokensError {const AiSearchFetchTokensError404(this.data);

factory AiSearchFetchTokensError404.parse(ApiResponse response) { return AiSearchFetchTokensError404(AiSearchFetchTokensResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchFetchTokensResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchFetchTokensError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchFetchTokensError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AiSearchFetchTokensError$Unknown extends AiSearchFetchTokensError {const AiSearchFetchTokensError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchFetchTokensError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AiSearchFetchTokensError.unknown($statusCode)'; } 
 }
