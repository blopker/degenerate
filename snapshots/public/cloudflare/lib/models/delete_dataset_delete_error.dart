// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_dataset_delete_response400.dart';import 'delete_dataset_delete_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DeleteDatasetDeleteError {const DeleteDatasetDeleteError();

/// Decodes the payload for its declared status and content type.
static DeleteDatasetDeleteError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  DeleteDatasetDeleteError400(DeleteDatasetDeleteResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  DeleteDatasetDeleteError404(DeleteDatasetDeleteResponse404.fromJson(json as Map<String, dynamic>));default:
return  DeleteDatasetDeleteErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class DeleteDatasetDeleteError400 extends DeleteDatasetDeleteError {const DeleteDatasetDeleteError400(this.data);

/// The decoded response payload.
final DeleteDatasetDeleteResponse400 data;

}
/// Response for 404 (application/json).
final class DeleteDatasetDeleteError404 extends DeleteDatasetDeleteError {const DeleteDatasetDeleteError404(this.data);

/// The decoded response payload.
final DeleteDatasetDeleteResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DeleteDatasetDeleteErrorUnknown extends DeleteDatasetDeleteError {const DeleteDatasetDeleteErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
