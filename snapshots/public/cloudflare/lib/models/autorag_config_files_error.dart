// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_files_response404.dart';import 'autorag_config_files_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AutoragConfigFilesError {const AutoragConfigFilesError();

/// Decodes the payload for its declared status and content type.
static AutoragConfigFilesError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return AutoragConfigFilesError404(AutoragConfigFilesResponse404.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return AutoragConfigFilesError503(AutoragConfigFilesResponse503.fromJson(json as Map<String, dynamic>));
default:
return AutoragConfigFilesErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class AutoragConfigFilesError404 extends AutoragConfigFilesError {const AutoragConfigFilesError404(this.data);

/// The decoded response payload.
final AutoragConfigFilesResponse404 data;

}
/// Response for 503 (application/json).
final class AutoragConfigFilesError503 extends AutoragConfigFilesError {const AutoragConfigFilesError503(this.data);

/// The decoded response payload.
final AutoragConfigFilesResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AutoragConfigFilesErrorUnknown extends AutoragConfigFilesError {const AutoragConfigFilesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
