// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_list_locations_for_alert_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}/locations`.
sealed class SecretScanningListLocationsForAlertError {const SecretScanningListLocationsForAlertError();

/// Parse the variant matching the response status code.
factory SecretScanningListLocationsForAlertError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => SecretScanningListLocationsForAlertError404.parse(response),
  503 => SecretScanningListLocationsForAlertError503.parse(response),
  _ => SecretScanningListLocationsForAlertError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class SecretScanningListLocationsForAlertError404 extends SecretScanningListLocationsForAlertError {const SecretScanningListLocationsForAlertError404();

factory SecretScanningListLocationsForAlertError404.parse(ApiResponse _) { return const SecretScanningListLocationsForAlertError404(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SecretScanningListLocationsForAlertError404; } 
@override int get hashCode { return (SecretScanningListLocationsForAlertError404).hashCode; } 
@override String toString() { return 'SecretScanningListLocationsForAlertError404()'; } 
 }
/// The `503` response.
@immutable final class SecretScanningListLocationsForAlertError503 extends SecretScanningListLocationsForAlertError {const SecretScanningListLocationsForAlertError503(this.data);

factory SecretScanningListLocationsForAlertError503.parse(ApiResponse response) { return SecretScanningListLocationsForAlertError503(SecretScanningListLocationsForAlertResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final SecretScanningListLocationsForAlertResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningListLocationsForAlertError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningListLocationsForAlertError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecretScanningListLocationsForAlertError$Unknown extends SecretScanningListLocationsForAlertError {const SecretScanningListLocationsForAlertError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningListLocationsForAlertError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecretScanningListLocationsForAlertError.unknown($statusCode)'; } 
 }
