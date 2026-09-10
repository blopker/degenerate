// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_list_job_logs_response400.dart';import 'ai_search_instance_list_job_logs_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AiSearchInstanceListJobLogsError {const AiSearchInstanceListJobLogsError();

/// Decodes the payload for its declared status and content type.
static AiSearchInstanceListJobLogsError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return AiSearchInstanceListJobLogsError400(AiSearchInstanceListJobLogsResponse400.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return AiSearchInstanceListJobLogsError500(AiSearchInstanceListJobLogsResponse500.fromJson(json as Map<String, dynamic>));
default:
return AiSearchInstanceListJobLogsErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class AiSearchInstanceListJobLogsError400 extends AiSearchInstanceListJobLogsError {const AiSearchInstanceListJobLogsError400(this.data);

/// The decoded response payload.
final AiSearchInstanceListJobLogsResponse400 data;

 }
/// Response for 500 (application/json).
final class AiSearchInstanceListJobLogsError500 extends AiSearchInstanceListJobLogsError {const AiSearchInstanceListJobLogsError500(this.data);

/// The decoded response payload.
final AiSearchInstanceListJobLogsResponse500 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class AiSearchInstanceListJobLogsErrorUnknown extends AiSearchInstanceListJobLogsError {const AiSearchInstanceListJobLogsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
