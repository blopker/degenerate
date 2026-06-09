// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_list_jobs_response404.dart';import 'autorag_config_list_jobs_response503.dart';/// Error responses of `GET /accounts/{account_id}/autorag/rags/{id}/jobs`.
sealed class AutoragConfigListJobsError {const AutoragConfigListJobsError();

/// Parse the variant matching the response status code.
factory AutoragConfigListJobsError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => AutoragConfigListJobsError404.parse(response),
  503 => AutoragConfigListJobsError503.parse(response),
  _ => AutoragConfigListJobsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class AutoragConfigListJobsError404 extends AutoragConfigListJobsError {const AutoragConfigListJobsError404(this.data);

factory AutoragConfigListJobsError404.parse(ApiResponse response) { return AutoragConfigListJobsError404(AutoragConfigListJobsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AutoragConfigListJobsResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigListJobsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AutoragConfigListJobsError404($data)'; } 
 }
/// The `503` response.
@immutable final class AutoragConfigListJobsError503 extends AutoragConfigListJobsError {const AutoragConfigListJobsError503(this.data);

factory AutoragConfigListJobsError503.parse(ApiResponse response) { return AutoragConfigListJobsError503(AutoragConfigListJobsResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AutoragConfigListJobsResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigListJobsError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AutoragConfigListJobsError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AutoragConfigListJobsError$Unknown extends AutoragConfigListJobsError {const AutoragConfigListJobsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigListJobsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AutoragConfigListJobsError.unknown($statusCode)'; } 
 }
