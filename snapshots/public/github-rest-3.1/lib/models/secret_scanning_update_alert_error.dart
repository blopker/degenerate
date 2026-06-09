// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_update_alert_response503.dart';/// Error responses of `PATCH /repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}`.
sealed class SecretScanningUpdateAlertError {const SecretScanningUpdateAlertError();

/// Parse the variant matching the response status code.
factory SecretScanningUpdateAlertError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => SecretScanningUpdateAlertError400.parse(response),
  404 => SecretScanningUpdateAlertError404.parse(response),
  422 => SecretScanningUpdateAlertError422.parse(response),
  503 => SecretScanningUpdateAlertError503.parse(response),
  _ => SecretScanningUpdateAlertError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class SecretScanningUpdateAlertError400 extends SecretScanningUpdateAlertError {const SecretScanningUpdateAlertError400();

factory SecretScanningUpdateAlertError400.parse(ApiResponse _) { return const SecretScanningUpdateAlertError400(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SecretScanningUpdateAlertError400; } 
@override int get hashCode { return (SecretScanningUpdateAlertError400).hashCode; } 
@override String toString() { return 'SecretScanningUpdateAlertError400()'; } 
 }
/// The `404` response.
@immutable final class SecretScanningUpdateAlertError404 extends SecretScanningUpdateAlertError {const SecretScanningUpdateAlertError404();

factory SecretScanningUpdateAlertError404.parse(ApiResponse _) { return const SecretScanningUpdateAlertError404(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SecretScanningUpdateAlertError404; } 
@override int get hashCode { return (SecretScanningUpdateAlertError404).hashCode; } 
@override String toString() { return 'SecretScanningUpdateAlertError404()'; } 
 }
/// The `422` response.
@immutable final class SecretScanningUpdateAlertError422 extends SecretScanningUpdateAlertError {const SecretScanningUpdateAlertError422();

factory SecretScanningUpdateAlertError422.parse(ApiResponse _) { return const SecretScanningUpdateAlertError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SecretScanningUpdateAlertError422; } 
@override int get hashCode { return (SecretScanningUpdateAlertError422).hashCode; } 
@override String toString() { return 'SecretScanningUpdateAlertError422()'; } 
 }
/// The `503` response.
@immutable final class SecretScanningUpdateAlertError503 extends SecretScanningUpdateAlertError {const SecretScanningUpdateAlertError503(this.data);

factory SecretScanningUpdateAlertError503.parse(ApiResponse response) { return SecretScanningUpdateAlertError503(SecretScanningUpdateAlertResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final SecretScanningUpdateAlertResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningUpdateAlertError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningUpdateAlertError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecretScanningUpdateAlertError$Unknown extends SecretScanningUpdateAlertError {const SecretScanningUpdateAlertError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningUpdateAlertError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecretScanningUpdateAlertError.unknown($statusCode)'; } 
 }
