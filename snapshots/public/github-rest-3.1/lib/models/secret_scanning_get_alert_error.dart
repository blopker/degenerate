// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_get_alert_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}`.
sealed class SecretScanningGetAlertError {const SecretScanningGetAlertError();

/// Parse the variant matching the response status code.
factory SecretScanningGetAlertError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => SecretScanningGetAlertError304.parse(response),
  404 => SecretScanningGetAlertError404.parse(response),
  503 => SecretScanningGetAlertError503.parse(response),
  _ => SecretScanningGetAlertError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class SecretScanningGetAlertError304 extends SecretScanningGetAlertError {const SecretScanningGetAlertError304();

factory SecretScanningGetAlertError304.parse(ApiResponse _) { return const SecretScanningGetAlertError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SecretScanningGetAlertError304; } 
@override int get hashCode { return (SecretScanningGetAlertError304).hashCode; } 
@override String toString() { return 'SecretScanningGetAlertError304()'; } 
 }
/// The `404` response.
@immutable final class SecretScanningGetAlertError404 extends SecretScanningGetAlertError {const SecretScanningGetAlertError404();

factory SecretScanningGetAlertError404.parse(ApiResponse _) { return const SecretScanningGetAlertError404(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SecretScanningGetAlertError404; } 
@override int get hashCode { return (SecretScanningGetAlertError404).hashCode; } 
@override String toString() { return 'SecretScanningGetAlertError404()'; } 
 }
/// The `503` response.
@immutable final class SecretScanningGetAlertError503 extends SecretScanningGetAlertError {const SecretScanningGetAlertError503(this.data);

factory SecretScanningGetAlertError503.parse(ApiResponse response) { return SecretScanningGetAlertError503(SecretScanningGetAlertResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final SecretScanningGetAlertResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningGetAlertError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningGetAlertError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecretScanningGetAlertError$Unknown extends SecretScanningGetAlertError {const SecretScanningGetAlertError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningGetAlertError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecretScanningGetAlertError.unknown($statusCode)'; } 
 }
