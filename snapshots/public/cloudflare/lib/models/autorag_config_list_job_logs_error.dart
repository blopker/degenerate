// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_list_job_logs_response404.dart';import 'autorag_config_list_job_logs_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AutoragConfigListJobLogsError {const AutoragConfigListJobLogsError();

/// Decodes the payload for its declared status and content type.
static AutoragConfigListJobLogsError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return AutoragConfigListJobLogsError404(AutoragConfigListJobLogsResponse404.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return AutoragConfigListJobLogsError503(AutoragConfigListJobLogsResponse503.fromJson(json as Map<String, dynamic>));
default:
return AutoragConfigListJobLogsErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class AutoragConfigListJobLogsError404 extends AutoragConfigListJobLogsError {const AutoragConfigListJobLogsError404(this.data);

/// The decoded response payload.
final AutoragConfigListJobLogsResponse404 data;

 }
/// Response for 503 (application/json).
final class AutoragConfigListJobLogsError503 extends AutoragConfigListJobLogsError {const AutoragConfigListJobLogsError503(this.data);

/// The decoded response payload.
final AutoragConfigListJobLogsResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class AutoragConfigListJobLogsErrorUnknown extends AutoragConfigListJobLogsError {const AutoragConfigListJobLogsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
