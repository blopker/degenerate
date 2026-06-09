// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_list_job_logs_response404.dart';import 'autorag_config_list_job_logs_response503.dart';/// Error responses of `GET /accounts/{account_id}/autorag/rags/{id}/jobs/{job_id}/logs`.
sealed class AutoragConfigListJobLogsError {const AutoragConfigListJobLogsError();

/// Parse the variant matching the response status code.
factory AutoragConfigListJobLogsError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => AutoragConfigListJobLogsError404.parse(response),
  503 => AutoragConfigListJobLogsError503.parse(response),
  _ => AutoragConfigListJobLogsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class AutoragConfigListJobLogsError404 extends AutoragConfigListJobLogsError {const AutoragConfigListJobLogsError404(this.data);

factory AutoragConfigListJobLogsError404.parse(ApiResponse response) { return AutoragConfigListJobLogsError404(AutoragConfigListJobLogsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AutoragConfigListJobLogsResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigListJobLogsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AutoragConfigListJobLogsError404($data)'; } 
 }
/// The `503` response.
@immutable final class AutoragConfigListJobLogsError503 extends AutoragConfigListJobLogsError {const AutoragConfigListJobLogsError503(this.data);

factory AutoragConfigListJobLogsError503.parse(ApiResponse response) { return AutoragConfigListJobLogsError503(AutoragConfigListJobLogsResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AutoragConfigListJobLogsResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigListJobLogsError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AutoragConfigListJobLogsError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AutoragConfigListJobLogsError$Unknown extends AutoragConfigListJobLogsError {const AutoragConfigListJobLogsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigListJobLogsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AutoragConfigListJobLogsError.unknown($statusCode)'; } 
 }
