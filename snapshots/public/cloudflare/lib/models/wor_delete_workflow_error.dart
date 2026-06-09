// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_delete_workflow_response400.dart';import 'wor_delete_workflow_response404.dart';/// Error responses of `DELETE /accounts/{account_id}/workflows/{workflow_name}`.
sealed class WorDeleteWorkflowError {const WorDeleteWorkflowError();

/// Parse the variant matching the response status code.
factory WorDeleteWorkflowError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => WorDeleteWorkflowError400.parse(response),
  404 => WorDeleteWorkflowError404.parse(response),
  _ => WorDeleteWorkflowError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class WorDeleteWorkflowError400 extends WorDeleteWorkflowError {const WorDeleteWorkflowError400(this.data);

factory WorDeleteWorkflowError400.parse(ApiResponse response) { return WorDeleteWorkflowError400(WorDeleteWorkflowResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorDeleteWorkflowResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorDeleteWorkflowError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorDeleteWorkflowError400($data)'; } 
 }
/// The `404` response.
@immutable final class WorDeleteWorkflowError404 extends WorDeleteWorkflowError {const WorDeleteWorkflowError404(this.data);

factory WorDeleteWorkflowError404.parse(ApiResponse response) { return WorDeleteWorkflowError404(WorDeleteWorkflowResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorDeleteWorkflowResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorDeleteWorkflowError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorDeleteWorkflowError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorDeleteWorkflowError$Unknown extends WorDeleteWorkflowError {const WorDeleteWorkflowError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorDeleteWorkflowError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorDeleteWorkflowError.unknown($statusCode)'; } 
 }
