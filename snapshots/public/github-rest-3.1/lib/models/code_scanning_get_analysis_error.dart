// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_analysis_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-scanning/analyses/{analysis_id}`.
sealed class CodeScanningGetAnalysisError {const CodeScanningGetAnalysisError();

/// Parse the variant matching the response status code.
factory CodeScanningGetAnalysisError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => CodeScanningGetAnalysisError403.parse(response),
  404 => CodeScanningGetAnalysisError404.parse(response),
  422 => CodeScanningGetAnalysisError422.parse(response),
  503 => CodeScanningGetAnalysisError503.parse(response),
  _ => CodeScanningGetAnalysisError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class CodeScanningGetAnalysisError403 extends CodeScanningGetAnalysisError {const CodeScanningGetAnalysisError403(this.data);

factory CodeScanningGetAnalysisError403.parse(ApiResponse response) { return CodeScanningGetAnalysisError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAnalysisError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetAnalysisError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningGetAnalysisError404 extends CodeScanningGetAnalysisError {const CodeScanningGetAnalysisError404(this.data);

factory CodeScanningGetAnalysisError404.parse(ApiResponse response) { return CodeScanningGetAnalysisError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAnalysisError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetAnalysisError404($data)'; } 
 }
/// The `422` response.
@immutable final class CodeScanningGetAnalysisError422 extends CodeScanningGetAnalysisError {const CodeScanningGetAnalysisError422(this.data);

factory CodeScanningGetAnalysisError422.parse(ApiResponse response) { return CodeScanningGetAnalysisError422(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAnalysisError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetAnalysisError422($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningGetAnalysisError503 extends CodeScanningGetAnalysisError {const CodeScanningGetAnalysisError503(this.data);

factory CodeScanningGetAnalysisError503.parse(ApiResponse response) { return CodeScanningGetAnalysisError503(CodeScanningGetAnalysisResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningGetAnalysisResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAnalysisError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetAnalysisError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningGetAnalysisError$Unknown extends CodeScanningGetAnalysisError {const CodeScanningGetAnalysisError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAnalysisError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningGetAnalysisError.unknown($statusCode)'; } 
 }
