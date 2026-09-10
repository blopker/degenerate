// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static CodespacesCodespaceMachinesForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const CodespacesCodespaceMachinesForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return CodespacesCodespaceMachinesForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CodespacesCodespaceMachinesForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodespacesCodespaceMachinesForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return CodespacesCodespaceMachinesForAuthenticatedUserError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodespacesCodespaceMachinesForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class CodespacesCodespaceMachinesForAuthenticatedUserError304 extends CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class CodespacesCodespaceMachinesForAuthenticatedUserError401 extends CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesCodespaceMachinesForAuthenticatedUserError403 extends CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesCodespaceMachinesForAuthenticatedUserError404 extends CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class CodespacesCodespaceMachinesForAuthenticatedUserError500 extends CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesCodespaceMachinesForAuthenticatedUserErrorUnknown extends CodespacesCodespaceMachinesForAuthenticatedUserError {const CodespacesCodespaceMachinesForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
