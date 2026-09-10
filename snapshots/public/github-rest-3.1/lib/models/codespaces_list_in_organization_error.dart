// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesListInOrganizationError {const CodespacesListInOrganizationError();

/// Decodes the payload for its declared status and content type.
static CodespacesListInOrganizationError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const CodespacesListInOrganizationError304();
case 401:
final json = jsonDecode(response.body);
return CodespacesListInOrganizationError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CodespacesListInOrganizationError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodespacesListInOrganizationError404(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return CodespacesListInOrganizationError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodespacesListInOrganizationErrorUnknown(response);
}
}
}
/// Response for 304.
final class CodespacesListInOrganizationError304 extends CodespacesListInOrganizationError {const CodespacesListInOrganizationError304();

}
/// Response for 401 (application/json).
final class CodespacesListInOrganizationError401 extends CodespacesListInOrganizationError {const CodespacesListInOrganizationError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesListInOrganizationError403 extends CodespacesListInOrganizationError {const CodespacesListInOrganizationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesListInOrganizationError404 extends CodespacesListInOrganizationError {const CodespacesListInOrganizationError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class CodespacesListInOrganizationError500 extends CodespacesListInOrganizationError {const CodespacesListInOrganizationError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesListInOrganizationErrorUnknown extends CodespacesListInOrganizationError {const CodespacesListInOrganizationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
