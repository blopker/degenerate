// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CodespacesCreateOrUpdateOrgSecretSuccess {const CodespacesCreateOrUpdateOrgSecretSuccess();

/// Decodes the payload for its declared status and content type.
static CodespacesCreateOrUpdateOrgSecretSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 201:
final json = jsonDecode(response.body);
return  CodespacesCreateOrUpdateOrgSecretSuccess201(EmptyObject.fromJson(json as Map<String, dynamic>));case 204:
return  const CodespacesCreateOrUpdateOrgSecretSuccess204();default:
return  CodespacesCreateOrUpdateOrgSecretSuccessUnknown(response); }}
}
/// Response for 201 (application/json).
final class CodespacesCreateOrUpdateOrgSecretSuccess201 extends CodespacesCreateOrUpdateOrgSecretSuccess {const CodespacesCreateOrUpdateOrgSecretSuccess201(this.data);

/// The decoded response payload.
final EmptyObject data;

}
/// Response for 204.
final class CodespacesCreateOrUpdateOrgSecretSuccess204 extends CodespacesCreateOrUpdateOrgSecretSuccess {const CodespacesCreateOrUpdateOrgSecretSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesCreateOrUpdateOrgSecretSuccessUnknown extends CodespacesCreateOrUpdateOrgSecretSuccess {const CodespacesCreateOrUpdateOrgSecretSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
