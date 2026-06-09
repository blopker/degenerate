// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_send_event_workflow_instance_response400.dart';import 'wor_send_event_workflow_instance_response404.dart';/// Error responses of `POST /accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}/events/{event_type}`.
sealed class WorSendEventWorkflowInstanceError {const WorSendEventWorkflowInstanceError();

/// Parse the variant matching the response status code.
factory WorSendEventWorkflowInstanceError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => WorSendEventWorkflowInstanceError400.parse(response),
  404 => WorSendEventWorkflowInstanceError404.parse(response),
  _ => WorSendEventWorkflowInstanceError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class WorSendEventWorkflowInstanceError400 extends WorSendEventWorkflowInstanceError {const WorSendEventWorkflowInstanceError400(this.data);

factory WorSendEventWorkflowInstanceError400.parse(ApiResponse response) { return WorSendEventWorkflowInstanceError400(WorSendEventWorkflowInstanceResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorSendEventWorkflowInstanceResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorSendEventWorkflowInstanceError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorSendEventWorkflowInstanceError400($data)'; } 
 }
/// The `404` response.
@immutable final class WorSendEventWorkflowInstanceError404 extends WorSendEventWorkflowInstanceError {const WorSendEventWorkflowInstanceError404(this.data);

factory WorSendEventWorkflowInstanceError404.parse(ApiResponse response) { return WorSendEventWorkflowInstanceError404(WorSendEventWorkflowInstanceResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorSendEventWorkflowInstanceResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorSendEventWorkflowInstanceError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorSendEventWorkflowInstanceError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorSendEventWorkflowInstanceError$Unknown extends WorSendEventWorkflowInstanceError {const WorSendEventWorkflowInstanceError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorSendEventWorkflowInstanceError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorSendEventWorkflowInstanceError.unknown($statusCode)'; } 
 }
