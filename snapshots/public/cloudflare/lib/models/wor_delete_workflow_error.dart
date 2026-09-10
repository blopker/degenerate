// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_delete_workflow_response400.dart';import 'wor_delete_workflow_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class WorDeleteWorkflowError {const WorDeleteWorkflowError();

/// Decodes the payload for its declared status and content type.
static WorDeleteWorkflowError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorDeleteWorkflowError400(WorDeleteWorkflowResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return WorDeleteWorkflowError404(WorDeleteWorkflowResponse404.fromJson(json as Map<String, dynamic>));
default:
return WorDeleteWorkflowErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class WorDeleteWorkflowError400 extends WorDeleteWorkflowError {const WorDeleteWorkflowError400(this.data);

/// The decoded response payload.
final WorDeleteWorkflowResponse400 data;

 }
/// Response for 404 (application/json).
final class WorDeleteWorkflowError404 extends WorDeleteWorkflowError {const WorDeleteWorkflowError404(this.data);

/// The decoded response payload.
final WorDeleteWorkflowResponse404 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class WorDeleteWorkflowErrorUnknown extends WorDeleteWorkflowError {const WorDeleteWorkflowErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
