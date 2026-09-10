// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'interactions_get_restrictions_for_authenticated_user_response.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class InteractionsGetRestrictionsForAuthenticatedUserSuccess {const InteractionsGetRestrictionsForAuthenticatedUserSuccess();

/// Decodes the payload for its declared status and content type.
static InteractionsGetRestrictionsForAuthenticatedUserSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return  InteractionsGetRestrictionsForAuthenticatedUserSuccess200(InteractionsGetRestrictionsForAuthenticatedUserResponse.fromJson(json));case 204:
return  const InteractionsGetRestrictionsForAuthenticatedUserSuccess204();default:
return  InteractionsGetRestrictionsForAuthenticatedUserSuccessUnknown(response); }}
}
/// Response for 200 (application/json).
final class InteractionsGetRestrictionsForAuthenticatedUserSuccess200 extends InteractionsGetRestrictionsForAuthenticatedUserSuccess {const InteractionsGetRestrictionsForAuthenticatedUserSuccess200(this.data);

/// The decoded response payload.
final InteractionsGetRestrictionsForAuthenticatedUserResponse data;

}
/// Response for 204.
final class InteractionsGetRestrictionsForAuthenticatedUserSuccess204 extends InteractionsGetRestrictionsForAuthenticatedUserSuccess {const InteractionsGetRestrictionsForAuthenticatedUserSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class InteractionsGetRestrictionsForAuthenticatedUserSuccessUnknown extends InteractionsGetRestrictionsForAuthenticatedUserSuccess {const InteractionsGetRestrictionsForAuthenticatedUserSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
