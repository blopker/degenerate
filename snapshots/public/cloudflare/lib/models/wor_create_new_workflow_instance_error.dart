// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_create_new_workflow_instance_response400.dart';import 'wor_create_new_workflow_instance_response404.dart';/// Error responses of `POST /accounts/{account_id}/workflows/{workflow_name}/instances`.
sealed class WorCreateNewWorkflowInstanceError {const WorCreateNewWorkflowInstanceError();

/// Parse the variant matching the response status code.
factory WorCreateNewWorkflowInstanceError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => WorCreateNewWorkflowInstanceError400.parse(response),
  404 => WorCreateNewWorkflowInstanceError404.parse(response),
  _ => WorCreateNewWorkflowInstanceError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class WorCreateNewWorkflowInstanceError400 extends WorCreateNewWorkflowInstanceError {const WorCreateNewWorkflowInstanceError400(this.data);

factory WorCreateNewWorkflowInstanceError400.parse(ApiResponse response) { return WorCreateNewWorkflowInstanceError400(WorCreateNewWorkflowInstanceResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorCreateNewWorkflowInstanceResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorCreateNewWorkflowInstanceError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorCreateNewWorkflowInstanceError400($data)'; } 
 }
/// The `404` response.
@immutable final class WorCreateNewWorkflowInstanceError404 extends WorCreateNewWorkflowInstanceError {const WorCreateNewWorkflowInstanceError404(this.data);

factory WorCreateNewWorkflowInstanceError404.parse(ApiResponse response) { return WorCreateNewWorkflowInstanceError404(WorCreateNewWorkflowInstanceResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorCreateNewWorkflowInstanceResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorCreateNewWorkflowInstanceError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorCreateNewWorkflowInstanceError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorCreateNewWorkflowInstanceError$Unknown extends WorCreateNewWorkflowInstanceError {const WorCreateNewWorkflowInstanceError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorCreateNewWorkflowInstanceError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorCreateNewWorkflowInstanceError.unknown($statusCode)'; } 
 }
