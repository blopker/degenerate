// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DependabotListAlertsForEnterpriseError {const DependabotListAlertsForEnterpriseError();

/// Decodes the payload for its declared status and content type.
static DependabotListAlertsForEnterpriseError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const DependabotListAlertsForEnterpriseError304();case 403:
final json = jsonDecode(response.body);
return  DependabotListAlertsForEnterpriseError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  DependabotListAlertsForEnterpriseError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  DependabotListAlertsForEnterpriseError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));default:
return  DependabotListAlertsForEnterpriseErrorUnknown(response); }}
}
/// Response for 304.
final class DependabotListAlertsForEnterpriseError304 extends DependabotListAlertsForEnterpriseError {const DependabotListAlertsForEnterpriseError304();

}
/// Response for 403 (application/json).
final class DependabotListAlertsForEnterpriseError403 extends DependabotListAlertsForEnterpriseError {const DependabotListAlertsForEnterpriseError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class DependabotListAlertsForEnterpriseError404 extends DependabotListAlertsForEnterpriseError {const DependabotListAlertsForEnterpriseError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class DependabotListAlertsForEnterpriseError422 extends DependabotListAlertsForEnterpriseError {const DependabotListAlertsForEnterpriseError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DependabotListAlertsForEnterpriseErrorUnknown extends DependabotListAlertsForEnterpriseError {const DependabotListAlertsForEnterpriseErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
