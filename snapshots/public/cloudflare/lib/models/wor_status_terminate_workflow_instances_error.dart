// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_status_terminate_workflow_instances_response400.dart';import 'wor_status_terminate_workflow_instances_response404.dart';/// Error responses of `GET /accounts/{account_id}/workflows/{workflow_name}/instances/terminate`.
sealed class WorStatusTerminateWorkflowInstancesError {const WorStatusTerminateWorkflowInstancesError();

/// Parse the variant matching the response status code.
factory WorStatusTerminateWorkflowInstancesError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => WorStatusTerminateWorkflowInstancesError400.parse(response),
  404 => WorStatusTerminateWorkflowInstancesError404.parse(response),
  _ => WorStatusTerminateWorkflowInstancesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class WorStatusTerminateWorkflowInstancesError400 extends WorStatusTerminateWorkflowInstancesError {const WorStatusTerminateWorkflowInstancesError400(this.data);

factory WorStatusTerminateWorkflowInstancesError400.parse(ApiResponse response) { return WorStatusTerminateWorkflowInstancesError400(WorStatusTerminateWorkflowInstancesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorStatusTerminateWorkflowInstancesResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorStatusTerminateWorkflowInstancesError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorStatusTerminateWorkflowInstancesError400($data)'; } 
 }
/// The `404` response.
@immutable final class WorStatusTerminateWorkflowInstancesError404 extends WorStatusTerminateWorkflowInstancesError {const WorStatusTerminateWorkflowInstancesError404(this.data);

factory WorStatusTerminateWorkflowInstancesError404.parse(ApiResponse response) { return WorStatusTerminateWorkflowInstancesError404(WorStatusTerminateWorkflowInstancesResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorStatusTerminateWorkflowInstancesResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorStatusTerminateWorkflowInstancesError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorStatusTerminateWorkflowInstancesError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorStatusTerminateWorkflowInstancesError$Unknown extends WorStatusTerminateWorkflowInstancesError {const WorStatusTerminateWorkflowInstancesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorStatusTerminateWorkflowInstancesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorStatusTerminateWorkflowInstancesError.unknown($statusCode)'; } 
 }
