// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_list_jobs_response404.dart';import 'autorag_config_list_jobs_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AutoragConfigListJobsError {const AutoragConfigListJobsError();

/// Decodes the payload for its declared status and content type.
static AutoragConfigListJobsError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return AutoragConfigListJobsError404(AutoragConfigListJobsResponse404.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return AutoragConfigListJobsError503(AutoragConfigListJobsResponse503.fromJson(json as Map<String, dynamic>));
default:
return AutoragConfigListJobsErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class AutoragConfigListJobsError404 extends AutoragConfigListJobsError {const AutoragConfigListJobsError404(this.data);

/// The decoded response payload.
final AutoragConfigListJobsResponse404 data;

 }
/// Response for 503 (application/json).
final class AutoragConfigListJobsError503 extends AutoragConfigListJobsError {const AutoragConfigListJobsError503(this.data);

/// The decoded response payload.
final AutoragConfigListJobsResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class AutoragConfigListJobsErrorUnknown extends AutoragConfigListJobsError {const AutoragConfigListJobsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
