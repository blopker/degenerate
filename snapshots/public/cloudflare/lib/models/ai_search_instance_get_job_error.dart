// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_get_job_response400.dart';import 'ai_search_instance_get_job_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AiSearchInstanceGetJobError {const AiSearchInstanceGetJobError();

/// Decodes the payload for its declared status and content type.
static AiSearchInstanceGetJobError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  AiSearchInstanceGetJobError400(AiSearchInstanceGetJobResponse400.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  AiSearchInstanceGetJobError500(AiSearchInstanceGetJobResponse500.fromJson(json as Map<String, dynamic>));default:
return  AiSearchInstanceGetJobErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class AiSearchInstanceGetJobError400 extends AiSearchInstanceGetJobError {const AiSearchInstanceGetJobError400(this.data);

/// The decoded response payload.
final AiSearchInstanceGetJobResponse400 data;

}
/// Response for 500 (application/json).
final class AiSearchInstanceGetJobError500 extends AiSearchInstanceGetJobError {const AiSearchInstanceGetJobError500(this.data);

/// The decoded response payload.
final AiSearchInstanceGetJobResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AiSearchInstanceGetJobErrorUnknown extends AiSearchInstanceGetJobError {const AiSearchInstanceGetJobErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
