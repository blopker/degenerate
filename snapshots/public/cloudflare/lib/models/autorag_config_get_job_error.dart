// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_get_job_response404.dart';import 'autorag_config_get_job_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AutoragConfigGetJobError {const AutoragConfigGetJobError();

/// Decodes the payload for its declared status and content type.
static AutoragConfigGetJobError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return AutoragConfigGetJobError404(AutoragConfigGetJobResponse404.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return AutoragConfigGetJobError503(AutoragConfigGetJobResponse503.fromJson(json as Map<String, dynamic>));
default:
return AutoragConfigGetJobErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class AutoragConfigGetJobError404 extends AutoragConfigGetJobError {const AutoragConfigGetJobError404(this.data);

/// The decoded response payload.
final AutoragConfigGetJobResponse404 data;

 }
/// Response for 503 (application/json).
final class AutoragConfigGetJobError503 extends AutoragConfigGetJobError {const AutoragConfigGetJobError503(this.data);

/// The decoded response payload.
final AutoragConfigGetJobResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class AutoragConfigGetJobErrorUnknown extends AutoragConfigGetJobError {const AutoragConfigGetJobErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
