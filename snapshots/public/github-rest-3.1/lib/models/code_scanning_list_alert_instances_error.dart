// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_list_alert_instances_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/instances`.
sealed class CodeScanningListAlertInstancesError {const CodeScanningListAlertInstancesError();

/// Parse the variant matching the response status code.
factory CodeScanningListAlertInstancesError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => CodeScanningListAlertInstancesError403.parse(response),
  404 => CodeScanningListAlertInstancesError404.parse(response),
  503 => CodeScanningListAlertInstancesError503.parse(response),
  _ => CodeScanningListAlertInstancesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class CodeScanningListAlertInstancesError403 extends CodeScanningListAlertInstancesError {const CodeScanningListAlertInstancesError403(this.data);

factory CodeScanningListAlertInstancesError403.parse(ApiResponse response) { return CodeScanningListAlertInstancesError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertInstancesError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListAlertInstancesError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningListAlertInstancesError404 extends CodeScanningListAlertInstancesError {const CodeScanningListAlertInstancesError404(this.data);

factory CodeScanningListAlertInstancesError404.parse(ApiResponse response) { return CodeScanningListAlertInstancesError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertInstancesError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListAlertInstancesError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningListAlertInstancesError503 extends CodeScanningListAlertInstancesError {const CodeScanningListAlertInstancesError503(this.data);

factory CodeScanningListAlertInstancesError503.parse(ApiResponse response) { return CodeScanningListAlertInstancesError503(CodeScanningListAlertInstancesResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningListAlertInstancesResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertInstancesError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListAlertInstancesError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningListAlertInstancesError$Unknown extends CodeScanningListAlertInstancesError {const CodeScanningListAlertInstancesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertInstancesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningListAlertInstancesError.unknown($statusCode)'; } 
 }
