// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workflow_dispatch_response.dart';/// Success responses of `POST /repos/{owner}/{repo}/actions/workflows/{workflow_id}/dispatches`.
sealed class ActionsCreateWorkflowDispatchSuccess {const ActionsCreateWorkflowDispatchSuccess();

/// Parse the variant matching the response status code.
factory ActionsCreateWorkflowDispatchSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => ActionsCreateWorkflowDispatchSuccess200.parse(response),
  204 => ActionsCreateWorkflowDispatchSuccess204.parse(response),
  _ => ActionsCreateWorkflowDispatchSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class ActionsCreateWorkflowDispatchSuccess200 extends ActionsCreateWorkflowDispatchSuccess {const ActionsCreateWorkflowDispatchSuccess200(this.data);

factory ActionsCreateWorkflowDispatchSuccess200.parse(ApiResponse response) { return ActionsCreateWorkflowDispatchSuccess200(WorkflowDispatchResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkflowDispatchResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsCreateWorkflowDispatchSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsCreateWorkflowDispatchSuccess200($data)'; } 
 }
/// The `204` response.
@immutable final class ActionsCreateWorkflowDispatchSuccess204 extends ActionsCreateWorkflowDispatchSuccess {const ActionsCreateWorkflowDispatchSuccess204();

factory ActionsCreateWorkflowDispatchSuccess204.parse(ApiResponse _) { return const ActionsCreateWorkflowDispatchSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActionsCreateWorkflowDispatchSuccess204; } 
@override int get hashCode { return (ActionsCreateWorkflowDispatchSuccess204).hashCode; } 
@override String toString() { return 'ActionsCreateWorkflowDispatchSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsCreateWorkflowDispatchSuccess$Unknown extends ActionsCreateWorkflowDispatchSuccess {const ActionsCreateWorkflowDispatchSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsCreateWorkflowDispatchSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsCreateWorkflowDispatchSuccess.unknown($statusCode)'; } 
 }
