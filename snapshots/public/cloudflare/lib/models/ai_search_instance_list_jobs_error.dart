// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_list_jobs_response400.dart';import 'ai_search_instance_list_jobs_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AiSearchInstanceListJobsError {const AiSearchInstanceListJobsError();

/// Decodes the payload for its declared status and content type.
static AiSearchInstanceListJobsError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  AiSearchInstanceListJobsError400(AiSearchInstanceListJobsResponse400.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  AiSearchInstanceListJobsError500(AiSearchInstanceListJobsResponse500.fromJson(json as Map<String, dynamic>));default:
return  AiSearchInstanceListJobsErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class AiSearchInstanceListJobsError400 extends AiSearchInstanceListJobsError {const AiSearchInstanceListJobsError400(this.data);

/// The decoded response payload.
final AiSearchInstanceListJobsResponse400 data;

}
/// Response for 500 (application/json).
final class AiSearchInstanceListJobsError500 extends AiSearchInstanceListJobsError {const AiSearchInstanceListJobsError500(this.data);

/// The decoded response payload.
final AiSearchInstanceListJobsResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AiSearchInstanceListJobsErrorUnknown extends AiSearchInstanceListJobsError {const AiSearchInstanceListJobsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
