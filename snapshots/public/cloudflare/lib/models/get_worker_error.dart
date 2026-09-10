// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_worker_response400.dart';import 'get_worker_response404.dart';import 'get_worker_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GetWorkerError {const GetWorkerError();

/// Decodes the payload for its declared status and content type.
static GetWorkerError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  GetWorkerError400(GetWorkerResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  GetWorkerError404(GetWorkerResponse404.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  GetWorkerError500(GetWorkerResponse500.fromJson(json as Map<String, dynamic>));default:
return  GetWorkerErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class GetWorkerError400 extends GetWorkerError {const GetWorkerError400(this.data);

/// The decoded response payload.
final GetWorkerResponse400 data;

}
/// Response for 404 (application/json).
final class GetWorkerError404 extends GetWorkerError {const GetWorkerError404(this.data);

/// The decoded response payload.
final GetWorkerResponse404 data;

}
/// Response for 500 (application/json).
final class GetWorkerError500 extends GetWorkerError {const GetWorkerError500(this.data);

/// The decoded response payload.
final GetWorkerResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GetWorkerErrorUnknown extends GetWorkerError {const GetWorkerErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
