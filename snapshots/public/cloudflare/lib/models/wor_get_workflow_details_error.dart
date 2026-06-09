// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_get_workflow_details_response400.dart';import 'wor_get_workflow_details_response404.dart';/// Error responses of `GET /accounts/{account_id}/workflows/{workflow_name}`.
sealed class WorGetWorkflowDetailsError {const WorGetWorkflowDetailsError();

/// Parse the variant matching the response status code.
factory WorGetWorkflowDetailsError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => WorGetWorkflowDetailsError400.parse(response),
  404 => WorGetWorkflowDetailsError404.parse(response),
  _ => WorGetWorkflowDetailsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class WorGetWorkflowDetailsError400 extends WorGetWorkflowDetailsError {const WorGetWorkflowDetailsError400(this.data);

factory WorGetWorkflowDetailsError400.parse(ApiResponse response) { return WorGetWorkflowDetailsError400(WorGetWorkflowDetailsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorGetWorkflowDetailsResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorGetWorkflowDetailsError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorGetWorkflowDetailsError400($data)'; } 
 }
/// The `404` response.
@immutable final class WorGetWorkflowDetailsError404 extends WorGetWorkflowDetailsError {const WorGetWorkflowDetailsError404(this.data);

factory WorGetWorkflowDetailsError404.parse(ApiResponse response) { return WorGetWorkflowDetailsError404(WorGetWorkflowDetailsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorGetWorkflowDetailsResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorGetWorkflowDetailsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorGetWorkflowDetailsError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorGetWorkflowDetailsError$Unknown extends WorGetWorkflowDetailsError {const WorGetWorkflowDetailsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorGetWorkflowDetailsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorGetWorkflowDetailsError.unknown($statusCode)'; } 
 }
