// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_list_workflow_instances_response400.dart';import 'wor_list_workflow_instances_response404.dart';/// Error responses of `GET /accounts/{account_id}/workflows/{workflow_name}/instances`.
sealed class WorListWorkflowInstancesError {const WorListWorkflowInstancesError();

/// Parse the variant matching the response status code.
factory WorListWorkflowInstancesError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => WorListWorkflowInstancesError400.parse(response),
  404 => WorListWorkflowInstancesError404.parse(response),
  _ => WorListWorkflowInstancesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class WorListWorkflowInstancesError400 extends WorListWorkflowInstancesError {const WorListWorkflowInstancesError400(this.data);

factory WorListWorkflowInstancesError400.parse(ApiResponse response) { return WorListWorkflowInstancesError400(WorListWorkflowInstancesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorListWorkflowInstancesResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorListWorkflowInstancesError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorListWorkflowInstancesError400($data)'; } 
 }
/// The `404` response.
@immutable final class WorListWorkflowInstancesError404 extends WorListWorkflowInstancesError {const WorListWorkflowInstancesError404(this.data);

factory WorListWorkflowInstancesError404.parse(ApiResponse response) { return WorListWorkflowInstancesError404(WorListWorkflowInstancesResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorListWorkflowInstancesResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorListWorkflowInstancesError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorListWorkflowInstancesError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorListWorkflowInstancesError$Unknown extends WorListWorkflowInstancesError {const WorListWorkflowInstancesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorListWorkflowInstancesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorListWorkflowInstancesError.unknown($statusCode)'; } 
 }
