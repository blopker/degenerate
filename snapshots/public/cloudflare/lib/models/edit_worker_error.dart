// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'edit_worker_response400.dart';import 'edit_worker_response401.dart';import 'edit_worker_response403.dart';import 'edit_worker_response404.dart';import 'edit_worker_response409.dart';import 'edit_worker_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class EditWorkerError {const EditWorkerError();

/// Decodes the payload for its declared status and content type.
static EditWorkerError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  EditWorkerError400(EditWorkerResponse400.fromJson(json as Map<String, dynamic>));case 401:
final json = jsonDecode(response.body);
return  EditWorkerError401(EditWorkerResponse401.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  EditWorkerError403(EditWorkerResponse403.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  EditWorkerError404(EditWorkerResponse404.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  EditWorkerError409(EditWorkerResponse409.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  EditWorkerError500(EditWorkerResponse500.fromJson(json as Map<String, dynamic>));default:
return  EditWorkerErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class EditWorkerError400 extends EditWorkerError {const EditWorkerError400(this.data);

/// The decoded response payload.
final EditWorkerResponse400 data;

}
/// Response for 401 (application/json).
final class EditWorkerError401 extends EditWorkerError {const EditWorkerError401(this.data);

/// The decoded response payload.
final EditWorkerResponse401 data;

}
/// Response for 403 (application/json).
final class EditWorkerError403 extends EditWorkerError {const EditWorkerError403(this.data);

/// The decoded response payload.
final EditWorkerResponse403 data;

}
/// Response for 404 (application/json).
final class EditWorkerError404 extends EditWorkerError {const EditWorkerError404(this.data);

/// The decoded response payload.
final EditWorkerResponse404 data;

}
/// Response for 409 (application/json).
final class EditWorkerError409 extends EditWorkerError {const EditWorkerError409(this.data);

/// The decoded response payload.
final EditWorkerResponse409 data;

}
/// Response for 500 (application/json).
final class EditWorkerError500 extends EditWorkerError {const EditWorkerError500(this.data);

/// The decoded response payload.
final EditWorkerResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class EditWorkerErrorUnknown extends EditWorkerError {const EditWorkerErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
