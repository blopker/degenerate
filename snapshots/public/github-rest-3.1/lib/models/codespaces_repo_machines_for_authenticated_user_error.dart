// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static CodespacesRepoMachinesForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const CodespacesRepoMachinesForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return CodespacesRepoMachinesForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CodespacesRepoMachinesForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodespacesRepoMachinesForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return CodespacesRepoMachinesForAuthenticatedUserError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodespacesRepoMachinesForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class CodespacesRepoMachinesForAuthenticatedUserError304 extends CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class CodespacesRepoMachinesForAuthenticatedUserError401 extends CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesRepoMachinesForAuthenticatedUserError403 extends CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesRepoMachinesForAuthenticatedUserError404 extends CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class CodespacesRepoMachinesForAuthenticatedUserError500 extends CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesRepoMachinesForAuthenticatedUserErrorUnknown extends CodespacesRepoMachinesForAuthenticatedUserError {const CodespacesRepoMachinesForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
