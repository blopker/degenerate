// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError();

/// Decodes the payload for its declared status and content type.
static CodespacesDeleteFromOrganizationError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const CodespacesDeleteFromOrganizationError304();
case 401:
final json = jsonDecode(response.body);
return CodespacesDeleteFromOrganizationError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CodespacesDeleteFromOrganizationError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodespacesDeleteFromOrganizationError404(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return CodespacesDeleteFromOrganizationError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodespacesDeleteFromOrganizationErrorUnknown(response);
}
}
}
/// Response for 304.
final class CodespacesDeleteFromOrganizationError304 extends CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError304();

}
/// Response for 401 (application/json).
final class CodespacesDeleteFromOrganizationError401 extends CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesDeleteFromOrganizationError403 extends CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesDeleteFromOrganizationError404 extends CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class CodespacesDeleteFromOrganizationError500 extends CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesDeleteFromOrganizationErrorUnknown extends CodespacesDeleteFromOrganizationError {const CodespacesDeleteFromOrganizationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
