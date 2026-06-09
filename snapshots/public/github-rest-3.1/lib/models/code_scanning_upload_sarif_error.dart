// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_upload_sarif_response503.dart';/// Error responses of `POST /repos/{owner}/{repo}/code-scanning/sarifs`.
sealed class CodeScanningUploadSarifError {const CodeScanningUploadSarifError();

/// Parse the variant matching the response status code.
factory CodeScanningUploadSarifError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => CodeScanningUploadSarifError400.parse(response),
  403 => CodeScanningUploadSarifError403.parse(response),
  404 => CodeScanningUploadSarifError404.parse(response),
  413 => CodeScanningUploadSarifError413.parse(response),
  503 => CodeScanningUploadSarifError503.parse(response),
  _ => CodeScanningUploadSarifError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class CodeScanningUploadSarifError400 extends CodeScanningUploadSarifError {const CodeScanningUploadSarifError400();

factory CodeScanningUploadSarifError400.parse(ApiResponse _) { return const CodeScanningUploadSarifError400(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeScanningUploadSarifError400; } 
@override int get hashCode { return (CodeScanningUploadSarifError400).hashCode; } 
@override String toString() { return 'CodeScanningUploadSarifError400()'; } 
 }
/// The `403` response.
@immutable final class CodeScanningUploadSarifError403 extends CodeScanningUploadSarifError {const CodeScanningUploadSarifError403(this.data);

factory CodeScanningUploadSarifError403.parse(ApiResponse response) { return CodeScanningUploadSarifError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUploadSarifError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUploadSarifError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningUploadSarifError404 extends CodeScanningUploadSarifError {const CodeScanningUploadSarifError404(this.data);

factory CodeScanningUploadSarifError404.parse(ApiResponse response) { return CodeScanningUploadSarifError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUploadSarifError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUploadSarifError404($data)'; } 
 }
/// The `413` response.
@immutable final class CodeScanningUploadSarifError413 extends CodeScanningUploadSarifError {const CodeScanningUploadSarifError413();

factory CodeScanningUploadSarifError413.parse(ApiResponse _) { return const CodeScanningUploadSarifError413(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeScanningUploadSarifError413; } 
@override int get hashCode { return (CodeScanningUploadSarifError413).hashCode; } 
@override String toString() { return 'CodeScanningUploadSarifError413()'; } 
 }
/// The `503` response.
@immutable final class CodeScanningUploadSarifError503 extends CodeScanningUploadSarifError {const CodeScanningUploadSarifError503(this.data);

factory CodeScanningUploadSarifError503.parse(ApiResponse response) { return CodeScanningUploadSarifError503(CodeScanningUploadSarifResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningUploadSarifResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUploadSarifError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUploadSarifError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningUploadSarifError$Unknown extends CodeScanningUploadSarifError {const CodeScanningUploadSarifError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUploadSarifError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningUploadSarifError.unknown($statusCode)'; } 
 }
