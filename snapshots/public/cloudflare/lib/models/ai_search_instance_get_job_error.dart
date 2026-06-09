// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_get_job_response400.dart';import 'ai_search_instance_get_job_response500.dart';/// Error responses of `GET /accounts/{account_id}/ai-search/instances/{id}/jobs/{job_id}`.
sealed class AiSearchInstanceGetJobError {const AiSearchInstanceGetJobError();

/// Parse the variant matching the response status code.
factory AiSearchInstanceGetJobError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AiSearchInstanceGetJobError400.parse(response),
  500 => AiSearchInstanceGetJobError500.parse(response),
  _ => AiSearchInstanceGetJobError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AiSearchInstanceGetJobError400 extends AiSearchInstanceGetJobError {const AiSearchInstanceGetJobError400(this.data);

factory AiSearchInstanceGetJobError400.parse(ApiResponse response) { return AiSearchInstanceGetJobError400(AiSearchInstanceGetJobResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchInstanceGetJobResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceGetJobError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchInstanceGetJobError400($data)'; } 
 }
/// The `500` response.
@immutable final class AiSearchInstanceGetJobError500 extends AiSearchInstanceGetJobError {const AiSearchInstanceGetJobError500(this.data);

factory AiSearchInstanceGetJobError500.parse(ApiResponse response) { return AiSearchInstanceGetJobError500(AiSearchInstanceGetJobResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchInstanceGetJobResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceGetJobError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchInstanceGetJobError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AiSearchInstanceGetJobError$Unknown extends AiSearchInstanceGetJobError {const AiSearchInstanceGetJobError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceGetJobError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AiSearchInstanceGetJobError.unknown($statusCode)'; } 
 }
