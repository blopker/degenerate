// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_create_job_response400.dart';import 'ai_search_instance_create_job_response500.dart';/// Error responses of `POST /accounts/{account_id}/ai-search/instances/{id}/jobs`.
sealed class AiSearchInstanceCreateJobError {const AiSearchInstanceCreateJobError();

/// Parse the variant matching the response status code.
factory AiSearchInstanceCreateJobError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AiSearchInstanceCreateJobError400.parse(response),
  500 => AiSearchInstanceCreateJobError500.parse(response),
  _ => AiSearchInstanceCreateJobError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AiSearchInstanceCreateJobError400 extends AiSearchInstanceCreateJobError {const AiSearchInstanceCreateJobError400(this.data);

factory AiSearchInstanceCreateJobError400.parse(ApiResponse response) { return AiSearchInstanceCreateJobError400(AiSearchInstanceCreateJobResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchInstanceCreateJobResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceCreateJobError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchInstanceCreateJobError400($data)'; } 
 }
/// The `500` response.
@immutable final class AiSearchInstanceCreateJobError500 extends AiSearchInstanceCreateJobError {const AiSearchInstanceCreateJobError500(this.data);

factory AiSearchInstanceCreateJobError500.parse(ApiResponse response) { return AiSearchInstanceCreateJobError500(AiSearchInstanceCreateJobResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchInstanceCreateJobResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceCreateJobError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchInstanceCreateJobError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AiSearchInstanceCreateJobError$Unknown extends AiSearchInstanceCreateJobError {const AiSearchInstanceCreateJobError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceCreateJobError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AiSearchInstanceCreateJobError.unknown($statusCode)'; } 
 }
