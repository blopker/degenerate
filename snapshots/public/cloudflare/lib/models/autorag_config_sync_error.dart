// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_sync_response400.dart';import 'autorag_config_sync_response404.dart';import 'autorag_config_sync_response429.dart';import 'autorag_config_sync_response503.dart';/// Error responses of `PATCH /accounts/{account_id}/autorag/rags/{id}/sync`.
sealed class AutoragConfigSyncError {const AutoragConfigSyncError();

/// Parse the variant matching the response status code.
factory AutoragConfigSyncError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AutoragConfigSyncError400.parse(response),
  404 => AutoragConfigSyncError404.parse(response),
  429 => AutoragConfigSyncError429.parse(response),
  503 => AutoragConfigSyncError503.parse(response),
  _ => AutoragConfigSyncError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AutoragConfigSyncError400 extends AutoragConfigSyncError {const AutoragConfigSyncError400(this.data);

factory AutoragConfigSyncError400.parse(ApiResponse response) { return AutoragConfigSyncError400(AutoragConfigSyncResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AutoragConfigSyncResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigSyncError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AutoragConfigSyncError400($data)'; } 
 }
/// The `404` response.
@immutable final class AutoragConfigSyncError404 extends AutoragConfigSyncError {const AutoragConfigSyncError404(this.data);

factory AutoragConfigSyncError404.parse(ApiResponse response) { return AutoragConfigSyncError404(AutoragConfigSyncResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AutoragConfigSyncResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigSyncError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AutoragConfigSyncError404($data)'; } 
 }
/// The `429` response.
@immutable final class AutoragConfigSyncError429 extends AutoragConfigSyncError {const AutoragConfigSyncError429(this.data);

factory AutoragConfigSyncError429.parse(ApiResponse response) { return AutoragConfigSyncError429(AutoragConfigSyncResponse429.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AutoragConfigSyncResponse429 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigSyncError429 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AutoragConfigSyncError429($data)'; } 
 }
/// The `503` response.
@immutable final class AutoragConfigSyncError503 extends AutoragConfigSyncError {const AutoragConfigSyncError503(this.data);

factory AutoragConfigSyncError503.parse(ApiResponse response) { return AutoragConfigSyncError503(AutoragConfigSyncResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AutoragConfigSyncResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigSyncError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AutoragConfigSyncError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AutoragConfigSyncError$Unknown extends AutoragConfigSyncError {const AutoragConfigSyncError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoragConfigSyncError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AutoragConfigSyncError.unknown($statusCode)'; } 
 }
