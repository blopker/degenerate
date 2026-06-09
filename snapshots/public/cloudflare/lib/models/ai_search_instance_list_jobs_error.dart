// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_list_jobs_response400.dart';import 'ai_search_instance_list_jobs_response500.dart';/// Error responses of `GET /accounts/{account_id}/ai-search/instances/{id}/jobs`.
sealed class AiSearchInstanceListJobsError {const AiSearchInstanceListJobsError();

/// Parse the variant matching the response status code.
factory AiSearchInstanceListJobsError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AiSearchInstanceListJobsError400.parse(response),
  500 => AiSearchInstanceListJobsError500.parse(response),
  _ => AiSearchInstanceListJobsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AiSearchInstanceListJobsError400 extends AiSearchInstanceListJobsError {const AiSearchInstanceListJobsError400(this.data);

factory AiSearchInstanceListJobsError400.parse(ApiResponse response) { return AiSearchInstanceListJobsError400(AiSearchInstanceListJobsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchInstanceListJobsResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceListJobsError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchInstanceListJobsError400($data)'; } 
 }
/// The `500` response.
@immutable final class AiSearchInstanceListJobsError500 extends AiSearchInstanceListJobsError {const AiSearchInstanceListJobsError500(this.data);

factory AiSearchInstanceListJobsError500.parse(ApiResponse response) { return AiSearchInstanceListJobsError500(AiSearchInstanceListJobsResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchInstanceListJobsResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceListJobsError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchInstanceListJobsError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AiSearchInstanceListJobsError$Unknown extends AiSearchInstanceListJobsError {const AiSearchInstanceListJobsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceListJobsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AiSearchInstanceListJobsError.unknown($statusCode)'; } 
 }
