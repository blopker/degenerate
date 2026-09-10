// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ActionsCreateOrUpdateEnvironmentSecretSuccess {const ActionsCreateOrUpdateEnvironmentSecretSuccess();

/// Decodes the payload for its declared status and content type.
static ActionsCreateOrUpdateEnvironmentSecretSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 201:
final json = jsonDecode(response.body);
return  ActionsCreateOrUpdateEnvironmentSecretSuccess201(EmptyObject.fromJson(json as Map<String, dynamic>));case 204:
return  const ActionsCreateOrUpdateEnvironmentSecretSuccess204();default:
return  ActionsCreateOrUpdateEnvironmentSecretSuccessUnknown(response); }}
}
/// Response for 201 (application/json).
final class ActionsCreateOrUpdateEnvironmentSecretSuccess201 extends ActionsCreateOrUpdateEnvironmentSecretSuccess {const ActionsCreateOrUpdateEnvironmentSecretSuccess201(this.data);

/// The decoded response payload.
final EmptyObject data;

}
/// Response for 204.
final class ActionsCreateOrUpdateEnvironmentSecretSuccess204 extends ActionsCreateOrUpdateEnvironmentSecretSuccess {const ActionsCreateOrUpdateEnvironmentSecretSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsCreateOrUpdateEnvironmentSecretSuccessUnknown extends ActionsCreateOrUpdateEnvironmentSecretSuccess {const ActionsCreateOrUpdateEnvironmentSecretSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
