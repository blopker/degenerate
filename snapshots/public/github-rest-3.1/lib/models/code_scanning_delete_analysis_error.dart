// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_delete_analysis_response503.dart';/// Error responses of `DELETE /repos/{owner}/{repo}/code-scanning/analyses/{analysis_id}`.
sealed class CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisError();

/// Parse the variant matching the response status code.
factory CodeScanningDeleteAnalysisError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => CodeScanningDeleteAnalysisError400.parse(response),
  403 => CodeScanningDeleteAnalysisError403.parse(response),
  404 => CodeScanningDeleteAnalysisError404.parse(response),
  503 => CodeScanningDeleteAnalysisError503.parse(response),
  _ => CodeScanningDeleteAnalysisError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class CodeScanningDeleteAnalysisError400 extends CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisError400(this.data);

factory CodeScanningDeleteAnalysisError400.parse(ApiResponse response) { return CodeScanningDeleteAnalysisError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDeleteAnalysisError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningDeleteAnalysisError400($data)'; } 
 }
/// The `403` response.
@immutable final class CodeScanningDeleteAnalysisError403 extends CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisError403(this.data);

factory CodeScanningDeleteAnalysisError403.parse(ApiResponse response) { return CodeScanningDeleteAnalysisError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDeleteAnalysisError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningDeleteAnalysisError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningDeleteAnalysisError404 extends CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisError404(this.data);

factory CodeScanningDeleteAnalysisError404.parse(ApiResponse response) { return CodeScanningDeleteAnalysisError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDeleteAnalysisError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningDeleteAnalysisError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningDeleteAnalysisError503 extends CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisError503(this.data);

factory CodeScanningDeleteAnalysisError503.parse(ApiResponse response) { return CodeScanningDeleteAnalysisError503(CodeScanningDeleteAnalysisResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningDeleteAnalysisResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDeleteAnalysisError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningDeleteAnalysisError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningDeleteAnalysisError$Unknown extends CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDeleteAnalysisError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningDeleteAnalysisError.unknown($statusCode)'; } 
 }
