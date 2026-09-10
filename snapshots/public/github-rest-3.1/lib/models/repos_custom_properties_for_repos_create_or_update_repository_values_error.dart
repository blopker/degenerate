// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError {const ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError();

/// Decodes the payload for its declared status and content type.
static ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError403 extends ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError {const ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError404 extends ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError {const ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError422 extends ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError {const ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesErrorUnknown extends ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesError {const ReposCustomPropertiesForReposCreateOrUpdateRepositoryValuesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
