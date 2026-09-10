// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_describe_workflow_versions_response400.dart';import 'wor_describe_workflow_versions_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class WorDescribeWorkflowVersionsError {const WorDescribeWorkflowVersionsError();

/// Decodes the payload for its declared status and content type.
static WorDescribeWorkflowVersionsError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  WorDescribeWorkflowVersionsError400(WorDescribeWorkflowVersionsResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  WorDescribeWorkflowVersionsError404(WorDescribeWorkflowVersionsResponse404.fromJson(json as Map<String, dynamic>));default:
return  WorDescribeWorkflowVersionsErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class WorDescribeWorkflowVersionsError400 extends WorDescribeWorkflowVersionsError {const WorDescribeWorkflowVersionsError400(this.data);

/// The decoded response payload.
final WorDescribeWorkflowVersionsResponse400 data;

}
/// Response for 404 (application/json).
final class WorDescribeWorkflowVersionsError404 extends WorDescribeWorkflowVersionsError {const WorDescribeWorkflowVersionsError404(this.data);

/// The decoded response payload.
final WorDescribeWorkflowVersionsResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class WorDescribeWorkflowVersionsErrorUnknown extends WorDescribeWorkflowVersionsError {const WorDescribeWorkflowVersionsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
