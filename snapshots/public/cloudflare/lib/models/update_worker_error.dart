// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'update_worker_response400.dart';import 'update_worker_response401.dart';import 'update_worker_response403.dart';import 'update_worker_response404.dart';import 'update_worker_response409.dart';import 'update_worker_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UpdateWorkerError {const UpdateWorkerError();

/// Decodes the payload for its declared status and content type.
static UpdateWorkerError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  UpdateWorkerError400(UpdateWorkerResponse400.fromJson(json as Map<String, dynamic>));case 401:
final json = jsonDecode(response.body);
return  UpdateWorkerError401(UpdateWorkerResponse401.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  UpdateWorkerError403(UpdateWorkerResponse403.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  UpdateWorkerError404(UpdateWorkerResponse404.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  UpdateWorkerError409(UpdateWorkerResponse409.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  UpdateWorkerError500(UpdateWorkerResponse500.fromJson(json as Map<String, dynamic>));default:
return  UpdateWorkerErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class UpdateWorkerError400 extends UpdateWorkerError {const UpdateWorkerError400(this.data);

/// The decoded response payload.
final UpdateWorkerResponse400 data;

}
/// Response for 401 (application/json).
final class UpdateWorkerError401 extends UpdateWorkerError {const UpdateWorkerError401(this.data);

/// The decoded response payload.
final UpdateWorkerResponse401 data;

}
/// Response for 403 (application/json).
final class UpdateWorkerError403 extends UpdateWorkerError {const UpdateWorkerError403(this.data);

/// The decoded response payload.
final UpdateWorkerResponse403 data;

}
/// Response for 404 (application/json).
final class UpdateWorkerError404 extends UpdateWorkerError {const UpdateWorkerError404(this.data);

/// The decoded response payload.
final UpdateWorkerResponse404 data;

}
/// Response for 409 (application/json).
final class UpdateWorkerError409 extends UpdateWorkerError {const UpdateWorkerError409(this.data);

/// The decoded response payload.
final UpdateWorkerResponse409 data;

}
/// Response for 500 (application/json).
final class UpdateWorkerError500 extends UpdateWorkerError {const UpdateWorkerError500(this.data);

/// The decoded response payload.
final UpdateWorkerResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UpdateWorkerErrorUnknown extends UpdateWorkerError {const UpdateWorkerErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
