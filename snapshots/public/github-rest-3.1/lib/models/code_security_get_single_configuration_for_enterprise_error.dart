// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeSecurityGetSingleConfigurationForEnterpriseError {const CodeSecurityGetSingleConfigurationForEnterpriseError();

/// Decodes the payload for its declared status and content type.
static CodeSecurityGetSingleConfigurationForEnterpriseError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const CodeSecurityGetSingleConfigurationForEnterpriseError304();
case 403:
final json = jsonDecode(response.body);
return CodeSecurityGetSingleConfigurationForEnterpriseError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeSecurityGetSingleConfigurationForEnterpriseError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodeSecurityGetSingleConfigurationForEnterpriseErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class CodeSecurityGetSingleConfigurationForEnterpriseError304 extends CodeSecurityGetSingleConfigurationForEnterpriseError {const CodeSecurityGetSingleConfigurationForEnterpriseError304();

 }
/// Response for 403 (application/json).
final class CodeSecurityGetSingleConfigurationForEnterpriseError403 extends CodeSecurityGetSingleConfigurationForEnterpriseError {const CodeSecurityGetSingleConfigurationForEnterpriseError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodeSecurityGetSingleConfigurationForEnterpriseError404 extends CodeSecurityGetSingleConfigurationForEnterpriseError {const CodeSecurityGetSingleConfigurationForEnterpriseError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeSecurityGetSingleConfigurationForEnterpriseErrorUnknown extends CodeSecurityGetSingleConfigurationForEnterpriseError {const CodeSecurityGetSingleConfigurationForEnterpriseErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
