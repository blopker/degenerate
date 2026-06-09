// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'secret_scanning_list_alerts_for_org_response503.dart';/// Error responses of `GET /orgs/{org}/secret-scanning/alerts`.
sealed class SecretScanningListAlertsForOrgError {const SecretScanningListAlertsForOrgError();

/// Parse the variant matching the response status code.
factory SecretScanningListAlertsForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => SecretScanningListAlertsForOrgError404.parse(response),
  503 => SecretScanningListAlertsForOrgError503.parse(response),
  _ => SecretScanningListAlertsForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class SecretScanningListAlertsForOrgError404 extends SecretScanningListAlertsForOrgError {const SecretScanningListAlertsForOrgError404(this.data);

factory SecretScanningListAlertsForOrgError404.parse(ApiResponse response) { return SecretScanningListAlertsForOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningListAlertsForOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningListAlertsForOrgError404($data)'; } 
 }
/// The `503` response.
@immutable final class SecretScanningListAlertsForOrgError503 extends SecretScanningListAlertsForOrgError {const SecretScanningListAlertsForOrgError503(this.data);

factory SecretScanningListAlertsForOrgError503.parse(ApiResponse response) { return SecretScanningListAlertsForOrgError503(SecretScanningListAlertsForOrgResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final SecretScanningListAlertsForOrgResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningListAlertsForOrgError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningListAlertsForOrgError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecretScanningListAlertsForOrgError$Unknown extends SecretScanningListAlertsForOrgError {const SecretScanningListAlertsForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningListAlertsForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecretScanningListAlertsForOrgError.unknown($statusCode)'; } 
 }
