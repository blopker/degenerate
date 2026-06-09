// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_scanning_default_setup_update_response.dart';import 'empty_object.dart';/// Success responses of `PATCH /repos/{owner}/{repo}/code-scanning/default-setup`.
sealed class CodeScanningUpdateDefaultSetupSuccess {const CodeScanningUpdateDefaultSetupSuccess();

/// Parse the variant matching the response status code.
factory CodeScanningUpdateDefaultSetupSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => CodeScanningUpdateDefaultSetupSuccess200.parse(response),
  202 => CodeScanningUpdateDefaultSetupSuccess202.parse(response),
  _ => CodeScanningUpdateDefaultSetupSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class CodeScanningUpdateDefaultSetupSuccess200 extends CodeScanningUpdateDefaultSetupSuccess {const CodeScanningUpdateDefaultSetupSuccess200(this.data);

factory CodeScanningUpdateDefaultSetupSuccess200.parse(ApiResponse response) { return CodeScanningUpdateDefaultSetupSuccess200(EmptyObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmptyObject data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateDefaultSetupSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUpdateDefaultSetupSuccess200($data)'; } 
 }
/// The `202` response.
@immutable final class CodeScanningUpdateDefaultSetupSuccess202 extends CodeScanningUpdateDefaultSetupSuccess {const CodeScanningUpdateDefaultSetupSuccess202(this.data);

factory CodeScanningUpdateDefaultSetupSuccess202.parse(ApiResponse response) { return CodeScanningUpdateDefaultSetupSuccess202(CodeScanningDefaultSetupUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningDefaultSetupUpdateResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateDefaultSetupSuccess202 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUpdateDefaultSetupSuccess202($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningUpdateDefaultSetupSuccess$Unknown extends CodeScanningUpdateDefaultSetupSuccess {const CodeScanningUpdateDefaultSetupSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateDefaultSetupSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningUpdateDefaultSetupSuccess.unknown($statusCode)'; } 
 }
