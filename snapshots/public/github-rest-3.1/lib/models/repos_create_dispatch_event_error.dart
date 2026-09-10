// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCreateDispatchEventError {const ReposCreateDispatchEventError();

/// Decodes the payload for its declared status and content type.
static ReposCreateDispatchEventError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ReposCreateDispatchEventError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposCreateDispatchEventError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposCreateDispatchEventErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class ReposCreateDispatchEventError404 extends ReposCreateDispatchEventError {const ReposCreateDispatchEventError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposCreateDispatchEventError422 extends ReposCreateDispatchEventError {const ReposCreateDispatchEventError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCreateDispatchEventErrorUnknown extends ReposCreateDispatchEventError {const ReposCreateDispatchEventErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
