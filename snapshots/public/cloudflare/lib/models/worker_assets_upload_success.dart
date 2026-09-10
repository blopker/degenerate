// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_completed_upload_assets_response_result.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class WorkerAssetsUploadSuccess {const WorkerAssetsUploadSuccess();

/// Decodes the payload for its declared status and content type.
static WorkerAssetsUploadSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 201:
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorkerAssetsUploadSuccess201(json['result'] != null ? WorkersCompletedUploadAssetsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null);
case 202:
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorkerAssetsUploadSuccess202(json['result'] as Map<String, dynamic>?);
default:
return WorkerAssetsUploadSuccessUnknown(response);
}
}
}
/// Response for 201 (application/json).
final class WorkerAssetsUploadSuccess201 extends WorkerAssetsUploadSuccess {const WorkerAssetsUploadSuccess201(this.data);

/// The decoded response payload.
final WorkersCompletedUploadAssetsResponseResult? data;

}
/// Response for 202 (application/json).
final class WorkerAssetsUploadSuccess202 extends WorkerAssetsUploadSuccess {const WorkerAssetsUploadSuccess202(this.data);

/// The decoded response payload.
final Map<String, dynamic>? data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class WorkerAssetsUploadSuccessUnknown extends WorkerAssetsUploadSuccess {const WorkerAssetsUploadSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
