// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PrivateRegistriesListOrgPrivateRegistriesError {const PrivateRegistriesListOrgPrivateRegistriesError();

/// Decodes the payload for its declared status and content type.
static PrivateRegistriesListOrgPrivateRegistriesError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  PrivateRegistriesListOrgPrivateRegistriesError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  PrivateRegistriesListOrgPrivateRegistriesError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  PrivateRegistriesListOrgPrivateRegistriesError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 404:
final json = jsonDecode(response.body);
return  PrivateRegistriesListOrgPrivateRegistriesError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  PrivateRegistriesListOrgPrivateRegistriesErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class PrivateRegistriesListOrgPrivateRegistriesError400ApplicationJson extends PrivateRegistriesListOrgPrivateRegistriesError {const PrivateRegistriesListOrgPrivateRegistriesError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class PrivateRegistriesListOrgPrivateRegistriesError400ApplicationScimJson extends PrivateRegistriesListOrgPrivateRegistriesError {const PrivateRegistriesListOrgPrivateRegistriesError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 404 (application/json).
final class PrivateRegistriesListOrgPrivateRegistriesError404 extends PrivateRegistriesListOrgPrivateRegistriesError {const PrivateRegistriesListOrgPrivateRegistriesError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PrivateRegistriesListOrgPrivateRegistriesErrorUnknown extends PrivateRegistriesListOrgPrivateRegistriesError {const PrivateRegistriesListOrgPrivateRegistriesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
