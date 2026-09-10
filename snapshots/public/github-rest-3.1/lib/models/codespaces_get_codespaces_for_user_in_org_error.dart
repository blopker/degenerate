// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError();

/// Decodes the payload for its declared status and content type.
static CodespacesGetCodespacesForUserInOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const CodespacesGetCodespacesForUserInOrgError304();
case 401:
final json = jsonDecode(response.body);
return CodespacesGetCodespacesForUserInOrgError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CodespacesGetCodespacesForUserInOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodespacesGetCodespacesForUserInOrgError404(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return CodespacesGetCodespacesForUserInOrgError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodespacesGetCodespacesForUserInOrgErrorUnknown(response);
}
}
}
/// Response for 304.
final class CodespacesGetCodespacesForUserInOrgError304 extends CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError304();

}
/// Response for 401 (application/json).
final class CodespacesGetCodespacesForUserInOrgError401 extends CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesGetCodespacesForUserInOrgError403 extends CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesGetCodespacesForUserInOrgError404 extends CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class CodespacesGetCodespacesForUserInOrgError500 extends CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesGetCodespacesForUserInOrgErrorUnknown extends CodespacesGetCodespacesForUserInOrgError {const CodespacesGetCodespacesForUserInOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
