// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ActionsCreateOrUpdateRepoSecretSuccess {const ActionsCreateOrUpdateRepoSecretSuccess();

/// Decodes the payload for its declared status and content type.
static ActionsCreateOrUpdateRepoSecretSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 201:
final json = jsonDecode(response.body);
return  ActionsCreateOrUpdateRepoSecretSuccess201(EmptyObject.fromJson(json as Map<String, dynamic>));case 204:
return  const ActionsCreateOrUpdateRepoSecretSuccess204();default:
return  ActionsCreateOrUpdateRepoSecretSuccessUnknown(response); }}
}
/// Response for 201 (application/json).
final class ActionsCreateOrUpdateRepoSecretSuccess201 extends ActionsCreateOrUpdateRepoSecretSuccess {const ActionsCreateOrUpdateRepoSecretSuccess201(this.data);

/// The decoded response payload.
final EmptyObject data;

}
/// Response for 204.
final class ActionsCreateOrUpdateRepoSecretSuccess204 extends ActionsCreateOrUpdateRepoSecretSuccess {const ActionsCreateOrUpdateRepoSecretSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsCreateOrUpdateRepoSecretSuccessUnknown extends ActionsCreateOrUpdateRepoSecretSuccess {const ActionsCreateOrUpdateRepoSecretSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
