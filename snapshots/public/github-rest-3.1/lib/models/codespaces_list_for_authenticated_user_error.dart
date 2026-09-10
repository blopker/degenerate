// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static CodespacesListForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const CodespacesListForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return CodespacesListForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CodespacesListForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodespacesListForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return CodespacesListForAuthenticatedUserError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodespacesListForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class CodespacesListForAuthenticatedUserError304 extends CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class CodespacesListForAuthenticatedUserError401 extends CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesListForAuthenticatedUserError403 extends CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesListForAuthenticatedUserError404 extends CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class CodespacesListForAuthenticatedUserError500 extends CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesListForAuthenticatedUserErrorUnknown extends CodespacesListForAuthenticatedUserError {const CodespacesListForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
