// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_send_event_workflow_instance_response400.dart';import 'wor_send_event_workflow_instance_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class WorSendEventWorkflowInstanceError {const WorSendEventWorkflowInstanceError();

/// Decodes the payload for its declared status and content type.
static WorSendEventWorkflowInstanceError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorSendEventWorkflowInstanceError400(WorSendEventWorkflowInstanceResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return WorSendEventWorkflowInstanceError404(WorSendEventWorkflowInstanceResponse404.fromJson(json as Map<String, dynamic>));
default:
return WorSendEventWorkflowInstanceErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class WorSendEventWorkflowInstanceError400 extends WorSendEventWorkflowInstanceError {const WorSendEventWorkflowInstanceError400(this.data);

/// The decoded response payload.
final WorSendEventWorkflowInstanceResponse400 data;

 }
/// Response for 404 (application/json).
final class WorSendEventWorkflowInstanceError404 extends WorSendEventWorkflowInstanceError {const WorSendEventWorkflowInstanceError404(this.data);

/// The decoded response payload.
final WorSendEventWorkflowInstanceResponse404 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class WorSendEventWorkflowInstanceErrorUnknown extends WorSendEventWorkflowInstanceError {const WorSendEventWorkflowInstanceErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
