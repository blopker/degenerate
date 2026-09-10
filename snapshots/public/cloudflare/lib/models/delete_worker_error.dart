// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_worker_response400.dart';import 'delete_worker_response401.dart';import 'delete_worker_response404.dart';import 'delete_worker_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DeleteWorkerError {const DeleteWorkerError();

/// Decodes the payload for its declared status and content type.
static DeleteWorkerError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return DeleteWorkerError400(DeleteWorkerResponse400.fromJson(json as Map<String, dynamic>));
case 401:
final json = jsonDecode(response.body);
return DeleteWorkerError401(DeleteWorkerResponse401.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return DeleteWorkerError404(DeleteWorkerResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return DeleteWorkerError500(DeleteWorkerResponse500.fromJson(json as Map<String, dynamic>));
default:
return DeleteWorkerErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class DeleteWorkerError400 extends DeleteWorkerError {const DeleteWorkerError400(this.data);

/// The decoded response payload.
final DeleteWorkerResponse400 data;

}
/// Response for 401 (application/json).
final class DeleteWorkerError401 extends DeleteWorkerError {const DeleteWorkerError401(this.data);

/// The decoded response payload.
final DeleteWorkerResponse401 data;

}
/// Response for 404 (application/json).
final class DeleteWorkerError404 extends DeleteWorkerError {const DeleteWorkerError404(this.data);

/// The decoded response payload.
final DeleteWorkerResponse404 data;

}
/// Response for 500 (application/json).
final class DeleteWorkerError500 extends DeleteWorkerError {const DeleteWorkerError500(this.data);

/// The decoded response payload.
final DeleteWorkerResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DeleteWorkerErrorUnknown extends DeleteWorkerError {const DeleteWorkerErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
