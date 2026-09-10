// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeSecurityDeleteConfigurationForEnterpriseError {const CodeSecurityDeleteConfigurationForEnterpriseError();

/// Decodes the payload for its declared status and content type.
static CodeSecurityDeleteConfigurationForEnterpriseError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return CodeSecurityDeleteConfigurationForEnterpriseError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return CodeSecurityDeleteConfigurationForEnterpriseError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return CodeSecurityDeleteConfigurationForEnterpriseError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return CodeSecurityDeleteConfigurationForEnterpriseError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeSecurityDeleteConfigurationForEnterpriseError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return CodeSecurityDeleteConfigurationForEnterpriseError409(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodeSecurityDeleteConfigurationForEnterpriseErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class CodeSecurityDeleteConfigurationForEnterpriseError400ApplicationJson extends CodeSecurityDeleteConfigurationForEnterpriseError {const CodeSecurityDeleteConfigurationForEnterpriseError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class CodeSecurityDeleteConfigurationForEnterpriseError400ApplicationScimJson extends CodeSecurityDeleteConfigurationForEnterpriseError {const CodeSecurityDeleteConfigurationForEnterpriseError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class CodeSecurityDeleteConfigurationForEnterpriseError403 extends CodeSecurityDeleteConfigurationForEnterpriseError {const CodeSecurityDeleteConfigurationForEnterpriseError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeSecurityDeleteConfigurationForEnterpriseError404 extends CodeSecurityDeleteConfigurationForEnterpriseError {const CodeSecurityDeleteConfigurationForEnterpriseError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class CodeSecurityDeleteConfigurationForEnterpriseError409 extends CodeSecurityDeleteConfigurationForEnterpriseError {const CodeSecurityDeleteConfigurationForEnterpriseError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeSecurityDeleteConfigurationForEnterpriseErrorUnknown extends CodeSecurityDeleteConfigurationForEnterpriseError {const CodeSecurityDeleteConfigurationForEnterpriseErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
