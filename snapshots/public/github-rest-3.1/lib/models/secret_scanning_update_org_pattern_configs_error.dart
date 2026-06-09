// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /orgs/{org}/secret-scanning/pattern-configurations`.
sealed class SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError();

/// Parse the variant matching the response status code.
factory SecretScanningUpdateOrgPatternConfigsError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => SecretScanningUpdateOrgPatternConfigsError400.parse(response),
  403 => SecretScanningUpdateOrgPatternConfigsError403.parse(response),
  404 => SecretScanningUpdateOrgPatternConfigsError404.parse(response),
  409 => SecretScanningUpdateOrgPatternConfigsError409.parse(response),
  422 => SecretScanningUpdateOrgPatternConfigsError422.parse(response),
  _ => SecretScanningUpdateOrgPatternConfigsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class SecretScanningUpdateOrgPatternConfigsError400 extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError400(this.data);

factory SecretScanningUpdateOrgPatternConfigsError400.parse(ApiResponse response) { return SecretScanningUpdateOrgPatternConfigsError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningUpdateOrgPatternConfigsError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningUpdateOrgPatternConfigsError400($data)'; } 
 }
/// The `403` response.
@immutable final class SecretScanningUpdateOrgPatternConfigsError403 extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError403(this.data);

factory SecretScanningUpdateOrgPatternConfigsError403.parse(ApiResponse response) { return SecretScanningUpdateOrgPatternConfigsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningUpdateOrgPatternConfigsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningUpdateOrgPatternConfigsError403($data)'; } 
 }
/// The `404` response.
@immutable final class SecretScanningUpdateOrgPatternConfigsError404 extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError404(this.data);

factory SecretScanningUpdateOrgPatternConfigsError404.parse(ApiResponse response) { return SecretScanningUpdateOrgPatternConfigsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningUpdateOrgPatternConfigsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningUpdateOrgPatternConfigsError404($data)'; } 
 }
/// The `409` response.
@immutable final class SecretScanningUpdateOrgPatternConfigsError409 extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError409(this.data);

factory SecretScanningUpdateOrgPatternConfigsError409.parse(ApiResponse response) { return SecretScanningUpdateOrgPatternConfigsError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningUpdateOrgPatternConfigsError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningUpdateOrgPatternConfigsError409($data)'; } 
 }
/// The `422` response.
@immutable final class SecretScanningUpdateOrgPatternConfigsError422 extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError422(this.data);

factory SecretScanningUpdateOrgPatternConfigsError422.parse(ApiResponse response) { return SecretScanningUpdateOrgPatternConfigsError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningUpdateOrgPatternConfigsError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SecretScanningUpdateOrgPatternConfigsError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SecretScanningUpdateOrgPatternConfigsError$Unknown extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningUpdateOrgPatternConfigsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SecretScanningUpdateOrgPatternConfigsError.unknown($statusCode)'; } 
 }
