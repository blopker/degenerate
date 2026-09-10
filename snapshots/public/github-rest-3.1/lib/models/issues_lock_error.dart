// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesLockError {const IssuesLockError();

/// Decodes the payload for its declared status and content type.
static IssuesLockError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return IssuesLockError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return IssuesLockError404(BasicError.fromJson(json as Map<String, dynamic>));
case 410:
final json = jsonDecode(response.body);
return IssuesLockError410(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return IssuesLockError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return IssuesLockErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class IssuesLockError403 extends IssuesLockError {const IssuesLockError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class IssuesLockError404 extends IssuesLockError {const IssuesLockError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 410 (application/json).
final class IssuesLockError410 extends IssuesLockError {const IssuesLockError410(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class IssuesLockError422 extends IssuesLockError {const IssuesLockError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesLockErrorUnknown extends IssuesLockError {const IssuesLockErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
