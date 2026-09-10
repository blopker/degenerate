// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DependabotGetAlertError {const DependabotGetAlertError();

/// Decodes the payload for its declared status and content type.
static DependabotGetAlertError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const DependabotGetAlertError304();case 403:
final json = jsonDecode(response.body);
return  DependabotGetAlertError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  DependabotGetAlertError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  DependabotGetAlertErrorUnknown(response); }}
}
/// Response for 304.
final class DependabotGetAlertError304 extends DependabotGetAlertError {const DependabotGetAlertError304();

}
/// Response for 403 (application/json).
final class DependabotGetAlertError403 extends DependabotGetAlertError {const DependabotGetAlertError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class DependabotGetAlertError404 extends DependabotGetAlertError {const DependabotGetAlertError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DependabotGetAlertErrorUnknown extends DependabotGetAlertError {const DependabotGetAlertErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
