// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_get_job_response404.dart';import 'autorag_config_get_job_response503.dart';/// Error responses of `GET /accounts/{account_id}/autorag/rags/{id}/jobs/{job_id}`.
sealed class AutoragConfigGetJobError {const AutoragConfigGetJobError();

/// Parse the variant matching the response status code.
factory AutoragConfigGetJobError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => AutoragConfigGetJobError404.parse(response),
  503 => AutoragConfigGetJobError503.parse(response),
  _ => AutoragConfigGetJobError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class AutoragConfigGetJobError404 extends AutoragConfigGetJobError {const AutoragConfigGetJobError404(this.data);

factory AutoragConfigGetJobError404.parse(ApiResponse response) { return AutoragConfigGetJobError404(AutoragConfigGetJobResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AutoragConfigGetJobResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigGetJobError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AutoragConfigGetJobError404($data)'; } 
 }
/// The `503` response.
@immutable final class AutoragConfigGetJobError503 extends AutoragConfigGetJobError {const AutoragConfigGetJobError503(this.data);

factory AutoragConfigGetJobError503.parse(ApiResponse response) { return AutoragConfigGetJobError503(AutoragConfigGetJobResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AutoragConfigGetJobResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigGetJobError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AutoragConfigGetJobError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AutoragConfigGetJobError$Unknown extends AutoragConfigGetJobError {const AutoragConfigGetJobError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigGetJobError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AutoragConfigGetJobError.unknown($statusCode)'; } 
 }
