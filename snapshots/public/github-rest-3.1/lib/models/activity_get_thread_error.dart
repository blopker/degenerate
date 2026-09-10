// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityGetThreadError {const ActivityGetThreadError();

/// Decodes the payload for its declared status and content type.
static ActivityGetThreadError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ActivityGetThreadError304();
case 401:
final json = jsonDecode(response.body);
return ActivityGetThreadError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ActivityGetThreadError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ActivityGetThreadErrorUnknown(response);
}
}
}
/// Response for 304.
final class ActivityGetThreadError304 extends ActivityGetThreadError {const ActivityGetThreadError304();

}
/// Response for 401 (application/json).
final class ActivityGetThreadError401 extends ActivityGetThreadError {const ActivityGetThreadError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ActivityGetThreadError403 extends ActivityGetThreadError {const ActivityGetThreadError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityGetThreadErrorUnknown extends ActivityGetThreadError {const ActivityGetThreadErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
