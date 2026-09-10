// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError {const OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError();

/// Decodes the payload for its declared status and content type.
static OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError403 extends OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError {const OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError404 extends OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError {const OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError422 extends OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError {const OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesErrorUnknown extends OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesError {const OrgsCustomPropertiesForReposCreateOrUpdateOrganizationValuesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
