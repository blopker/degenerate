// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_get_scan_history_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/secret-scanning/scan-history`.
sealed class SecretScanningGetScanHistoryError {const SecretScanningGetScanHistoryError();

/// Parse the variant matching the response status code.
factory SecretScanningGetScanHistoryError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => SecretScanningGetScanHistoryError404.parse(response),
  503 => SecretScanningGetScanHistoryError503.parse(response),
  _ => SecretScanningGetScanHistoryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class SecretScanningGetScanHistoryError404 extends SecretScanningGetScanHistoryError {const SecretScanningGetScanHistoryError404();

factory SecretScanningGetScanHistoryError404.parse(ApiResponse _) { return const SecretScanningGetScanHistoryError404(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SecretScanningGetScanHistoryError404; } 
@override int get hashCode { return (SecretScanningGetScanHistoryError404).hashCode; } 
@override String toString() { return 'SecretScanningGetScanHistoryError404()'; } 
 }
/// The `503` response.
@immutable final class SecretScanningGetScanHistoryError503 extends SecretScanningGetScanHistoryError {const SecretScanningGetScanHistoryError503(this.data);

factory SecretScanningGetScanHistoryError503.parse(ApiResponse response) { return SecretScanningGetScanHistoryError503(SecretScanningGetScanHistoryResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final SecretScanningGetScanHistoryResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningGetScanHistoryError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningGetScanHistoryError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecretScanningGetScanHistoryError$Unknown extends SecretScanningGetScanHistoryError {const SecretScanningGetScanHistoryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningGetScanHistoryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecretScanningGetScanHistoryError.unknown($statusCode)'; } 
 }
