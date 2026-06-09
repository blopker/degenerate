// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_update_default_setup_response503.dart';/// Error responses of `PATCH /repos/{owner}/{repo}/code-scanning/default-setup`.
sealed class CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError();

/// Parse the variant matching the response status code.
factory CodeScanningUpdateDefaultSetupError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => CodeScanningUpdateDefaultSetupError403.parse(response),
  404 => CodeScanningUpdateDefaultSetupError404.parse(response),
  409 => CodeScanningUpdateDefaultSetupError409.parse(response),
  422 => CodeScanningUpdateDefaultSetupError422.parse(response),
  503 => CodeScanningUpdateDefaultSetupError503.parse(response),
  _ => CodeScanningUpdateDefaultSetupError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class CodeScanningUpdateDefaultSetupError403 extends CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError403(this.data);

factory CodeScanningUpdateDefaultSetupError403.parse(ApiResponse response) { return CodeScanningUpdateDefaultSetupError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateDefaultSetupError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUpdateDefaultSetupError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningUpdateDefaultSetupError404 extends CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError404(this.data);

factory CodeScanningUpdateDefaultSetupError404.parse(ApiResponse response) { return CodeScanningUpdateDefaultSetupError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateDefaultSetupError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUpdateDefaultSetupError404($data)'; } 
 }
/// The `409` response.
@immutable final class CodeScanningUpdateDefaultSetupError409 extends CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError409(this.data);

factory CodeScanningUpdateDefaultSetupError409.parse(ApiResponse response) { return CodeScanningUpdateDefaultSetupError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateDefaultSetupError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUpdateDefaultSetupError409($data)'; } 
 }
/// The `422` response.
@immutable final class CodeScanningUpdateDefaultSetupError422 extends CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError422(this.data);

factory CodeScanningUpdateDefaultSetupError422.parse(ApiResponse response) { return CodeScanningUpdateDefaultSetupError422(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateDefaultSetupError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUpdateDefaultSetupError422($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningUpdateDefaultSetupError503 extends CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError503(this.data);

factory CodeScanningUpdateDefaultSetupError503.parse(ApiResponse response) { return CodeScanningUpdateDefaultSetupError503(CodeScanningUpdateDefaultSetupResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningUpdateDefaultSetupResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateDefaultSetupError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUpdateDefaultSetupError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningUpdateDefaultSetupError$Unknown extends CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateDefaultSetupError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningUpdateDefaultSetupError.unknown($statusCode)'; } 
 }
