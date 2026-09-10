// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_dataset_response400.dart';import 'aig_config_update_dataset_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AigConfigUpdateDatasetError {const AigConfigUpdateDatasetError();

/// Decodes the payload for its declared status and content type.
static AigConfigUpdateDatasetError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  AigConfigUpdateDatasetError400(AigConfigUpdateDatasetResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  AigConfigUpdateDatasetError404(AigConfigUpdateDatasetResponse404.fromJson(json as Map<String, dynamic>));default:
return  AigConfigUpdateDatasetErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class AigConfigUpdateDatasetError400 extends AigConfigUpdateDatasetError {const AigConfigUpdateDatasetError400(this.data);

/// The decoded response payload.
final AigConfigUpdateDatasetResponse400 data;

}
/// Response for 404 (application/json).
final class AigConfigUpdateDatasetError404 extends AigConfigUpdateDatasetError {const AigConfigUpdateDatasetError404(this.data);

/// The decoded response payload.
final AigConfigUpdateDatasetResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AigConfigUpdateDatasetErrorUnknown extends AigConfigUpdateDatasetError {const AigConfigUpdateDatasetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
