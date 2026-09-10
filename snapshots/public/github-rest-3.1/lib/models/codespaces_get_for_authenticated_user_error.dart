// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static CodespacesGetForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const CodespacesGetForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return CodespacesGetForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CodespacesGetForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodespacesGetForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return CodespacesGetForAuthenticatedUserError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodespacesGetForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class CodespacesGetForAuthenticatedUserError304 extends CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class CodespacesGetForAuthenticatedUserError401 extends CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesGetForAuthenticatedUserError403 extends CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesGetForAuthenticatedUserError404 extends CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class CodespacesGetForAuthenticatedUserError500 extends CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesGetForAuthenticatedUserErrorUnknown extends CodespacesGetForAuthenticatedUserError {const CodespacesGetForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
