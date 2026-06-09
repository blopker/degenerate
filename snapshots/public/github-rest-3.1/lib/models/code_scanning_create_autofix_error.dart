// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_create_autofix_response503.dart';/// Error responses of `POST /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/autofix`.
sealed class CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError();

/// Parse the variant matching the response status code.
factory CodeScanningCreateAutofixError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => CodeScanningCreateAutofixError400.parse(response),
  403 => CodeScanningCreateAutofixError403.parse(response),
  404 => CodeScanningCreateAutofixError404.parse(response),
  422 => CodeScanningCreateAutofixError422.parse(response),
  503 => CodeScanningCreateAutofixError503.parse(response),
  _ => CodeScanningCreateAutofixError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class CodeScanningCreateAutofixError400 extends CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError400(this.data);

factory CodeScanningCreateAutofixError400.parse(ApiResponse response) { return CodeScanningCreateAutofixError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCreateAutofixError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningCreateAutofixError400($data)'; } 
 }
/// The `403` response.
@immutable final class CodeScanningCreateAutofixError403 extends CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError403(this.data);

factory CodeScanningCreateAutofixError403.parse(ApiResponse response) { return CodeScanningCreateAutofixError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCreateAutofixError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningCreateAutofixError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningCreateAutofixError404 extends CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError404(this.data);

factory CodeScanningCreateAutofixError404.parse(ApiResponse response) { return CodeScanningCreateAutofixError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCreateAutofixError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningCreateAutofixError404($data)'; } 
 }
/// The `422` response.
@immutable final class CodeScanningCreateAutofixError422 extends CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError422();

factory CodeScanningCreateAutofixError422.parse(ApiResponse _) { return const CodeScanningCreateAutofixError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeScanningCreateAutofixError422; } 
@override int get hashCode { return (CodeScanningCreateAutofixError422).hashCode; } 
@override String toString() { return 'CodeScanningCreateAutofixError422()'; } 
 }
/// The `503` response.
@immutable final class CodeScanningCreateAutofixError503 extends CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError503(this.data);

factory CodeScanningCreateAutofixError503.parse(ApiResponse response) { return CodeScanningCreateAutofixError503(CodeScanningCreateAutofixResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningCreateAutofixResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCreateAutofixError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningCreateAutofixError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningCreateAutofixError$Unknown extends CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCreateAutofixError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningCreateAutofixError.unknown($statusCode)'; } 
 }
