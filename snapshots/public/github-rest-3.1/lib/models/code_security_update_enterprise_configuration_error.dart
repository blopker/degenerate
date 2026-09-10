// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeSecurityUpdateEnterpriseConfigurationError {const CodeSecurityUpdateEnterpriseConfigurationError();

/// Decodes the payload for its declared status and content type.
static CodeSecurityUpdateEnterpriseConfigurationError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const CodeSecurityUpdateEnterpriseConfigurationError304();case 403:
final json = jsonDecode(response.body);
return  CodeSecurityUpdateEnterpriseConfigurationError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodeSecurityUpdateEnterpriseConfigurationError404(BasicError.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  CodeSecurityUpdateEnterpriseConfigurationError409(BasicError.fromJson(json as Map<String, dynamic>));default:
return  CodeSecurityUpdateEnterpriseConfigurationErrorUnknown(response); }}
}
/// Response for 304.
final class CodeSecurityUpdateEnterpriseConfigurationError304 extends CodeSecurityUpdateEnterpriseConfigurationError {const CodeSecurityUpdateEnterpriseConfigurationError304();

}
/// Response for 403 (application/json).
final class CodeSecurityUpdateEnterpriseConfigurationError403 extends CodeSecurityUpdateEnterpriseConfigurationError {const CodeSecurityUpdateEnterpriseConfigurationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeSecurityUpdateEnterpriseConfigurationError404 extends CodeSecurityUpdateEnterpriseConfigurationError {const CodeSecurityUpdateEnterpriseConfigurationError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class CodeSecurityUpdateEnterpriseConfigurationError409 extends CodeSecurityUpdateEnterpriseConfigurationError {const CodeSecurityUpdateEnterpriseConfigurationError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeSecurityUpdateEnterpriseConfigurationErrorUnknown extends CodeSecurityUpdateEnterpriseConfigurationError {const CodeSecurityUpdateEnterpriseConfigurationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
