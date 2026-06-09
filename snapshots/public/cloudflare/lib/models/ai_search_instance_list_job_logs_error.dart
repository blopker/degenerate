// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_list_job_logs_response400.dart';import 'ai_search_instance_list_job_logs_response500.dart';/// Error responses of `GET /accounts/{account_id}/ai-search/instances/{id}/jobs/{job_id}/logs`.
sealed class AiSearchInstanceListJobLogsError {const AiSearchInstanceListJobLogsError();

/// Parse the variant matching the response status code.
factory AiSearchInstanceListJobLogsError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AiSearchInstanceListJobLogsError400.parse(response),
  500 => AiSearchInstanceListJobLogsError500.parse(response),
  _ => AiSearchInstanceListJobLogsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AiSearchInstanceListJobLogsError400 extends AiSearchInstanceListJobLogsError {const AiSearchInstanceListJobLogsError400(this.data);

factory AiSearchInstanceListJobLogsError400.parse(ApiResponse response) { return AiSearchInstanceListJobLogsError400(AiSearchInstanceListJobLogsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchInstanceListJobLogsResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceListJobLogsError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchInstanceListJobLogsError400($data)'; } 
 }
/// The `500` response.
@immutable final class AiSearchInstanceListJobLogsError500 extends AiSearchInstanceListJobLogsError {const AiSearchInstanceListJobLogsError500(this.data);

factory AiSearchInstanceListJobLogsError500.parse(ApiResponse response) { return AiSearchInstanceListJobLogsError500(AiSearchInstanceListJobLogsResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchInstanceListJobLogsResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceListJobLogsError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchInstanceListJobLogsError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AiSearchInstanceListJobLogsError$Unknown extends AiSearchInstanceListJobLogsError {const AiSearchInstanceListJobLogsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceListJobLogsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AiSearchInstanceListJobLogsError.unknown($statusCode)'; } 
 }
