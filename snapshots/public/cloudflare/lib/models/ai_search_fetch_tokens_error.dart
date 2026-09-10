// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_fetch_tokens_response400.dart';import 'ai_search_fetch_tokens_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AiSearchFetchTokensError {const AiSearchFetchTokensError();

/// Decodes the payload for its declared status and content type.
static AiSearchFetchTokensError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  AiSearchFetchTokensError400(AiSearchFetchTokensResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  AiSearchFetchTokensError404(AiSearchFetchTokensResponse404.fromJson(json as Map<String, dynamic>));default:
return  AiSearchFetchTokensErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class AiSearchFetchTokensError400 extends AiSearchFetchTokensError {const AiSearchFetchTokensError400(this.data);

/// The decoded response payload.
final AiSearchFetchTokensResponse400 data;

}
/// Response for 404 (application/json).
final class AiSearchFetchTokensError404 extends AiSearchFetchTokensError {const AiSearchFetchTokensError404(this.data);

/// The decoded response payload.
final AiSearchFetchTokensResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AiSearchFetchTokensErrorUnknown extends AiSearchFetchTokensError {const AiSearchFetchTokensErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
