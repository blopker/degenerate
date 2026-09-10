// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class DependabotCreateOrUpdateOrgSecretSuccess {const DependabotCreateOrUpdateOrgSecretSuccess();

/// Decodes the payload for its declared status and content type.
static DependabotCreateOrUpdateOrgSecretSuccess parse(ApiResponse response) { switch (response.statusCode) {
case 201:
final json = jsonDecode(response.body);
return DependabotCreateOrUpdateOrgSecretSuccess201(EmptyObject.fromJson(json as Map<String, dynamic>));
case 204:
return const DependabotCreateOrUpdateOrgSecretSuccess204();
default:
return DependabotCreateOrUpdateOrgSecretSuccessUnknown(response);
}
 } 
 }
/// Response for 201 (application/json).
final class DependabotCreateOrUpdateOrgSecretSuccess201 extends DependabotCreateOrUpdateOrgSecretSuccess {const DependabotCreateOrUpdateOrgSecretSuccess201(this.data);

/// The decoded response payload.
final EmptyObject data;

 }
/// Response for 204.
final class DependabotCreateOrUpdateOrgSecretSuccess204 extends DependabotCreateOrUpdateOrgSecretSuccess {const DependabotCreateOrUpdateOrgSecretSuccess204();

 }
/// An undeclared status. The complete response is retained for manual handling.
final class DependabotCreateOrUpdateOrgSecretSuccessUnknown extends DependabotCreateOrUpdateOrgSecretSuccess {const DependabotCreateOrUpdateOrgSecretSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
