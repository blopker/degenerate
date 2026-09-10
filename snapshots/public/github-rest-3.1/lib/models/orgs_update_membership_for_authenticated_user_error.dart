// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsUpdateMembershipForAuthenticatedUserError {const OrgsUpdateMembershipForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static OrgsUpdateMembershipForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return OrgsUpdateMembershipForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OrgsUpdateMembershipForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OrgsUpdateMembershipForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return OrgsUpdateMembershipForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class OrgsUpdateMembershipForAuthenticatedUserError403 extends OrgsUpdateMembershipForAuthenticatedUserError {const OrgsUpdateMembershipForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class OrgsUpdateMembershipForAuthenticatedUserError404 extends OrgsUpdateMembershipForAuthenticatedUserError {const OrgsUpdateMembershipForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class OrgsUpdateMembershipForAuthenticatedUserError422 extends OrgsUpdateMembershipForAuthenticatedUserError {const OrgsUpdateMembershipForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsUpdateMembershipForAuthenticatedUserErrorUnknown extends OrgsUpdateMembershipForAuthenticatedUserError {const OrgsUpdateMembershipForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
