// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ActionsCreateOrUpdateOrgSecretSuccess {const ActionsCreateOrUpdateOrgSecretSuccess();

/// Decodes the payload for its declared status and content type.
static ActionsCreateOrUpdateOrgSecretSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 201:
final json = jsonDecode(response.body);
return  ActionsCreateOrUpdateOrgSecretSuccess201(EmptyObject.fromJson(json as Map<String, dynamic>));case 204:
return  const ActionsCreateOrUpdateOrgSecretSuccess204();default:
return  ActionsCreateOrUpdateOrgSecretSuccessUnknown(response); }}
}
/// Response for 201 (application/json).
final class ActionsCreateOrUpdateOrgSecretSuccess201 extends ActionsCreateOrUpdateOrgSecretSuccess {const ActionsCreateOrUpdateOrgSecretSuccess201(this.data);

/// The decoded response payload.
final EmptyObject data;

}
/// Response for 204.
final class ActionsCreateOrUpdateOrgSecretSuccess204 extends ActionsCreateOrUpdateOrgSecretSuccess {const ActionsCreateOrUpdateOrgSecretSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsCreateOrUpdateOrgSecretSuccessUnknown extends ActionsCreateOrUpdateOrgSecretSuccess {const ActionsCreateOrUpdateOrgSecretSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
