// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_describe_workflow_instance_response400.dart';import 'wor_describe_workflow_instance_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class WorDescribeWorkflowInstanceError {const WorDescribeWorkflowInstanceError();

/// Decodes the payload for its declared status and content type.
static WorDescribeWorkflowInstanceError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorDescribeWorkflowInstanceError400(WorDescribeWorkflowInstanceResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return WorDescribeWorkflowInstanceError404(WorDescribeWorkflowInstanceResponse404.fromJson(json as Map<String, dynamic>));
default:
return WorDescribeWorkflowInstanceErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class WorDescribeWorkflowInstanceError400 extends WorDescribeWorkflowInstanceError {const WorDescribeWorkflowInstanceError400(this.data);

/// The decoded response payload.
final WorDescribeWorkflowInstanceResponse400 data;

 }
/// Response for 404 (application/json).
final class WorDescribeWorkflowInstanceError404 extends WorDescribeWorkflowInstanceError {const WorDescribeWorkflowInstanceError404(this.data);

/// The decoded response payload.
final WorDescribeWorkflowInstanceResponse404 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class WorDescribeWorkflowInstanceErrorUnknown extends WorDescribeWorkflowInstanceError {const WorDescribeWorkflowInstanceErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
