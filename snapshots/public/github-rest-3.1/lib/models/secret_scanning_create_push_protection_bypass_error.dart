// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_create_push_protection_bypass_response503.dart';/// Error responses of `POST /repos/{owner}/{repo}/secret-scanning/push-protection-bypasses`.
sealed class SecretScanningCreatePushProtectionBypassError {const SecretScanningCreatePushProtectionBypassError();

/// Parse the variant matching the response status code.
factory SecretScanningCreatePushProtectionBypassError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => SecretScanningCreatePushProtectionBypassError403.parse(response),
  404 => SecretScanningCreatePushProtectionBypassError404.parse(response),
  422 => SecretScanningCreatePushProtectionBypassError422.parse(response),
  503 => SecretScanningCreatePushProtectionBypassError503.parse(response),
  _ => SecretScanningCreatePushProtectionBypassError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class SecretScanningCreatePushProtectionBypassError403 extends SecretScanningCreatePushProtectionBypassError {const SecretScanningCreatePushProtectionBypassError403();

factory SecretScanningCreatePushProtectionBypassError403.parse(ApiResponse _) { return const SecretScanningCreatePushProtectionBypassError403(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SecretScanningCreatePushProtectionBypassError403; } 
@override int get hashCode { return (SecretScanningCreatePushProtectionBypassError403).hashCode; } 
@override String toString() { return 'SecretScanningCreatePushProtectionBypassError403()'; } 
 }
/// The `404` response.
@immutable final class SecretScanningCreatePushProtectionBypassError404 extends SecretScanningCreatePushProtectionBypassError {const SecretScanningCreatePushProtectionBypassError404();

factory SecretScanningCreatePushProtectionBypassError404.parse(ApiResponse _) { return const SecretScanningCreatePushProtectionBypassError404(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SecretScanningCreatePushProtectionBypassError404; } 
@override int get hashCode { return (SecretScanningCreatePushProtectionBypassError404).hashCode; } 
@override String toString() { return 'SecretScanningCreatePushProtectionBypassError404()'; } 
 }
/// The `422` response.
@immutable final class SecretScanningCreatePushProtectionBypassError422 extends SecretScanningCreatePushProtectionBypassError {const SecretScanningCreatePushProtectionBypassError422();

factory SecretScanningCreatePushProtectionBypassError422.parse(ApiResponse _) { return const SecretScanningCreatePushProtectionBypassError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SecretScanningCreatePushProtectionBypassError422; } 
@override int get hashCode { return (SecretScanningCreatePushProtectionBypassError422).hashCode; } 
@override String toString() { return 'SecretScanningCreatePushProtectionBypassError422()'; } 
 }
/// The `503` response.
@immutable final class SecretScanningCreatePushProtectionBypassError503 extends SecretScanningCreatePushProtectionBypassError {const SecretScanningCreatePushProtectionBypassError503(this.data);

factory SecretScanningCreatePushProtectionBypassError503.parse(ApiResponse response) { return SecretScanningCreatePushProtectionBypassError503(SecretScanningCreatePushProtectionBypassResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final SecretScanningCreatePushProtectionBypassResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningCreatePushProtectionBypassError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningCreatePushProtectionBypassError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecretScanningCreatePushProtectionBypassError$Unknown extends SecretScanningCreatePushProtectionBypassError {const SecretScanningCreatePushProtectionBypassError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningCreatePushProtectionBypassError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecretScanningCreatePushProtectionBypassError.unknown($statusCode)'; } 
 }
