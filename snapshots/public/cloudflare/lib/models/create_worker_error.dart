// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_worker_response400.dart';import 'create_worker_response401.dart';import 'create_worker_response403.dart';import 'create_worker_response409.dart';import 'create_worker_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CreateWorkerError {const CreateWorkerError();

/// Decodes the payload for its declared status and content type.
static CreateWorkerError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return CreateWorkerError400(CreateWorkerResponse400.fromJson(json as Map<String, dynamic>));
case 401:
final json = jsonDecode(response.body);
return CreateWorkerError401(CreateWorkerResponse401.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CreateWorkerError403(CreateWorkerResponse403.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return CreateWorkerError409(CreateWorkerResponse409.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return CreateWorkerError500(CreateWorkerResponse500.fromJson(json as Map<String, dynamic>));
default:
return CreateWorkerErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class CreateWorkerError400 extends CreateWorkerError {const CreateWorkerError400(this.data);

/// The decoded response payload.
final CreateWorkerResponse400 data;

}
/// Response for 401 (application/json).
final class CreateWorkerError401 extends CreateWorkerError {const CreateWorkerError401(this.data);

/// The decoded response payload.
final CreateWorkerResponse401 data;

}
/// Response for 403 (application/json).
final class CreateWorkerError403 extends CreateWorkerError {const CreateWorkerError403(this.data);

/// The decoded response payload.
final CreateWorkerResponse403 data;

}
/// Response for 409 (application/json).
final class CreateWorkerError409 extends CreateWorkerError {const CreateWorkerError409(this.data);

/// The decoded response payload.
final CreateWorkerResponse409 data;

}
/// Response for 500 (application/json).
final class CreateWorkerError500 extends CreateWorkerError {const CreateWorkerError500(this.data);

/// The decoded response payload.
final CreateWorkerResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CreateWorkerErrorUnknown extends CreateWorkerError {const CreateWorkerErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
