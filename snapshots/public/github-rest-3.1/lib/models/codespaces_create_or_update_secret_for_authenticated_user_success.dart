// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess {const CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess();

/// Decodes the payload for its declared status and content type.
static CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess parse(ApiResponse response) { switch (response.statusCode) {
case 201:
final json = jsonDecode(response.body);
return CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess201(EmptyObject.fromJson(json as Map<String, dynamic>));
case 204:
return const CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess204();
default:
return CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccessUnknown(response);
}
 } 
 }
/// Response for 201 (application/json).
final class CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess201 extends CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess {const CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess201(this.data);

/// The decoded response payload.
final EmptyObject data;

 }
/// Response for 204.
final class CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess204 extends CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess {const CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess204();

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccessUnknown extends CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccess {const CodespacesCreateOrUpdateSecretForAuthenticatedUserSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
