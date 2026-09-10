// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_update_tokens_response400.dart';import 'ai_search_update_tokens_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AiSearchUpdateTokensError {const AiSearchUpdateTokensError();

/// Decodes the payload for its declared status and content type.
static AiSearchUpdateTokensError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  AiSearchUpdateTokensError400(AiSearchUpdateTokensResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  AiSearchUpdateTokensError404(AiSearchUpdateTokensResponse404.fromJson(json as Map<String, dynamic>));default:
return  AiSearchUpdateTokensErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class AiSearchUpdateTokensError400 extends AiSearchUpdateTokensError {const AiSearchUpdateTokensError400(this.data);

/// The decoded response payload.
final AiSearchUpdateTokensResponse400 data;

}
/// Response for 404 (application/json).
final class AiSearchUpdateTokensError404 extends AiSearchUpdateTokensError {const AiSearchUpdateTokensError404(this.data);

/// The decoded response payload.
final AiSearchUpdateTokensResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AiSearchUpdateTokensErrorUnknown extends AiSearchUpdateTokensError {const AiSearchUpdateTokensErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
