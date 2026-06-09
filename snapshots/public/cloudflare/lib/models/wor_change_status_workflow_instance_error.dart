// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_change_status_workflow_instance_response400.dart';import 'wor_change_status_workflow_instance_response404.dart';import 'wor_change_status_workflow_instance_response409.dart';/// Error responses of `PATCH /accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}/status`.
sealed class WorChangeStatusWorkflowInstanceError {const WorChangeStatusWorkflowInstanceError();

/// Parse the variant matching the response status code.
factory WorChangeStatusWorkflowInstanceError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => WorChangeStatusWorkflowInstanceError400.parse(response),
  404 => WorChangeStatusWorkflowInstanceError404.parse(response),
  409 => WorChangeStatusWorkflowInstanceError409.parse(response),
  _ => WorChangeStatusWorkflowInstanceError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class WorChangeStatusWorkflowInstanceError400 extends WorChangeStatusWorkflowInstanceError {const WorChangeStatusWorkflowInstanceError400(this.data);

factory WorChangeStatusWorkflowInstanceError400.parse(ApiResponse response) { return WorChangeStatusWorkflowInstanceError400(WorChangeStatusWorkflowInstanceResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorChangeStatusWorkflowInstanceResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorChangeStatusWorkflowInstanceError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorChangeStatusWorkflowInstanceError400($data)'; } 
 }
/// The `404` response.
@immutable final class WorChangeStatusWorkflowInstanceError404 extends WorChangeStatusWorkflowInstanceError {const WorChangeStatusWorkflowInstanceError404(this.data);

factory WorChangeStatusWorkflowInstanceError404.parse(ApiResponse response) { return WorChangeStatusWorkflowInstanceError404(WorChangeStatusWorkflowInstanceResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorChangeStatusWorkflowInstanceResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorChangeStatusWorkflowInstanceError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorChangeStatusWorkflowInstanceError404($data)'; } 
 }
/// The `409` response.
@immutable final class WorChangeStatusWorkflowInstanceError409 extends WorChangeStatusWorkflowInstanceError {const WorChangeStatusWorkflowInstanceError409(this.data);

factory WorChangeStatusWorkflowInstanceError409.parse(ApiResponse response) { return WorChangeStatusWorkflowInstanceError409(WorChangeStatusWorkflowInstanceResponse409.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorChangeStatusWorkflowInstanceResponse409 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorChangeStatusWorkflowInstanceError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorChangeStatusWorkflowInstanceError409($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorChangeStatusWorkflowInstanceError$Unknown extends WorChangeStatusWorkflowInstanceError {const WorChangeStatusWorkflowInstanceError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorChangeStatusWorkflowInstanceError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorChangeStatusWorkflowInstanceError.unknown($statusCode)'; } 
 }
