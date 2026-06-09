// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_files_response404.dart';import 'autorag_config_files_response503.dart';/// Error responses of `GET /accounts/{account_id}/autorag/rags/{id}/files`.
sealed class AutoragConfigFilesError {const AutoragConfigFilesError();

/// Parse the variant matching the response status code.
factory AutoragConfigFilesError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => AutoragConfigFilesError404.parse(response),
  503 => AutoragConfigFilesError503.parse(response),
  _ => AutoragConfigFilesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class AutoragConfigFilesError404 extends AutoragConfigFilesError {const AutoragConfigFilesError404(this.data);

factory AutoragConfigFilesError404.parse(ApiResponse response) { return AutoragConfigFilesError404(AutoragConfigFilesResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AutoragConfigFilesResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigFilesError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AutoragConfigFilesError404($data)'; } 
 }
/// The `503` response.
@immutable final class AutoragConfigFilesError503 extends AutoragConfigFilesError {const AutoragConfigFilesError503(this.data);

factory AutoragConfigFilesError503.parse(ApiResponse response) { return AutoragConfigFilesError503(AutoragConfigFilesResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AutoragConfigFilesResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigFilesError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AutoragConfigFilesError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AutoragConfigFilesError$Unknown extends AutoragConfigFilesError {const AutoragConfigFilesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigFilesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AutoragConfigFilesError.unknown($statusCode)'; } 
 }
