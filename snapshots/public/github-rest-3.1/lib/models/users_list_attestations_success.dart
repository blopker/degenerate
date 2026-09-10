// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';import 'users_list_attestations_response.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class UsersListAttestationsSuccess {const UsersListAttestationsSuccess();

/// Decodes the payload for its declared status and content type.
static UsersListAttestationsSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return  UsersListAttestationsSuccess200(UsersListAttestationsResponse.fromJson(json as Map<String, dynamic>));case 201:
final json = jsonDecode(response.body);
return  UsersListAttestationsSuccess201(EmptyObject.fromJson(json as Map<String, dynamic>));case 204:
return  const UsersListAttestationsSuccess204();default:
return  UsersListAttestationsSuccessUnknown(response); }}
}
/// Response for 200 (application/json).
final class UsersListAttestationsSuccess200 extends UsersListAttestationsSuccess {const UsersListAttestationsSuccess200(this.data);

/// The decoded response payload.
final UsersListAttestationsResponse data;

}
/// Response for 201 (application/json).
final class UsersListAttestationsSuccess201 extends UsersListAttestationsSuccess {const UsersListAttestationsSuccess201(this.data);

/// The decoded response payload.
final EmptyObject data;

}
/// Response for 204.
final class UsersListAttestationsSuccess204 extends UsersListAttestationsSuccess {const UsersListAttestationsSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class UsersListAttestationsSuccessUnknown extends UsersListAttestationsSuccess {const UsersListAttestationsSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
