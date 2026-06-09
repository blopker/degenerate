// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_change_job_status_response400.dart';import 'ai_search_instance_change_job_status_response500.dart';/// Error responses of `PATCH /accounts/{account_id}/ai-search/instances/{id}/jobs/{job_id}`.
sealed class AiSearchInstanceChangeJobStatusError {const AiSearchInstanceChangeJobStatusError();

/// Parse the variant matching the response status code.
factory AiSearchInstanceChangeJobStatusError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AiSearchInstanceChangeJobStatusError400.parse(response),
  500 => AiSearchInstanceChangeJobStatusError500.parse(response),
  _ => AiSearchInstanceChangeJobStatusError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AiSearchInstanceChangeJobStatusError400 extends AiSearchInstanceChangeJobStatusError {const AiSearchInstanceChangeJobStatusError400(this.data);

factory AiSearchInstanceChangeJobStatusError400.parse(ApiResponse response) { return AiSearchInstanceChangeJobStatusError400(AiSearchInstanceChangeJobStatusResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchInstanceChangeJobStatusResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceChangeJobStatusError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchInstanceChangeJobStatusError400($data)'; } 
 }
/// The `500` response.
@immutable final class AiSearchInstanceChangeJobStatusError500 extends AiSearchInstanceChangeJobStatusError {const AiSearchInstanceChangeJobStatusError500(this.data);

factory AiSearchInstanceChangeJobStatusError500.parse(ApiResponse response) { return AiSearchInstanceChangeJobStatusError500(AiSearchInstanceChangeJobStatusResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchInstanceChangeJobStatusResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceChangeJobStatusError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchInstanceChangeJobStatusError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AiSearchInstanceChangeJobStatusError$Unknown extends AiSearchInstanceChangeJobStatusError {const AiSearchInstanceChangeJobStatusError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceChangeJobStatusError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AiSearchInstanceChangeJobStatusError.unknown($statusCode)'; } 
 }
