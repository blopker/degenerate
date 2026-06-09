// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_list_alerts_for_repo_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/secret-scanning/alerts`.
sealed class SecretScanningListAlertsForRepoError {const SecretScanningListAlertsForRepoError();

/// Parse the variant matching the response status code.
factory SecretScanningListAlertsForRepoError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => SecretScanningListAlertsForRepoError404.parse(response),
  503 => SecretScanningListAlertsForRepoError503.parse(response),
  _ => SecretScanningListAlertsForRepoError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class SecretScanningListAlertsForRepoError404 extends SecretScanningListAlertsForRepoError {const SecretScanningListAlertsForRepoError404();

factory SecretScanningListAlertsForRepoError404.parse(ApiResponse _) { return const SecretScanningListAlertsForRepoError404(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SecretScanningListAlertsForRepoError404; } 
@override int get hashCode { return (SecretScanningListAlertsForRepoError404).hashCode; } 
@override String toString() { return 'SecretScanningListAlertsForRepoError404()'; } 
 }
/// The `503` response.
@immutable final class SecretScanningListAlertsForRepoError503 extends SecretScanningListAlertsForRepoError {const SecretScanningListAlertsForRepoError503(this.data);

factory SecretScanningListAlertsForRepoError503.parse(ApiResponse response) { return SecretScanningListAlertsForRepoError503(SecretScanningListAlertsForRepoResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final SecretScanningListAlertsForRepoResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningListAlertsForRepoError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningListAlertsForRepoError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecretScanningListAlertsForRepoError$Unknown extends SecretScanningListAlertsForRepoError {const SecretScanningListAlertsForRepoError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningListAlertsForRepoError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecretScanningListAlertsForRepoError.unknown($statusCode)'; } 
 }
