// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class DependabotCreateOrUpdateRepoSecretSuccess {const DependabotCreateOrUpdateRepoSecretSuccess();

/// Decodes the payload for its declared status and content type.
static DependabotCreateOrUpdateRepoSecretSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 201:
final json = jsonDecode(response.body);
return  DependabotCreateOrUpdateRepoSecretSuccess201(EmptyObject.fromJson(json as Map<String, dynamic>));case 204:
return  const DependabotCreateOrUpdateRepoSecretSuccess204();default:
return  DependabotCreateOrUpdateRepoSecretSuccessUnknown(response); }}
}
/// Response for 201 (application/json).
final class DependabotCreateOrUpdateRepoSecretSuccess201 extends DependabotCreateOrUpdateRepoSecretSuccess {const DependabotCreateOrUpdateRepoSecretSuccess201(this.data);

/// The decoded response payload.
final EmptyObject data;

}
/// Response for 204.
final class DependabotCreateOrUpdateRepoSecretSuccess204 extends DependabotCreateOrUpdateRepoSecretSuccess {const DependabotCreateOrUpdateRepoSecretSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class DependabotCreateOrUpdateRepoSecretSuccessUnknown extends DependabotCreateOrUpdateRepoSecretSuccess {const DependabotCreateOrUpdateRepoSecretSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
