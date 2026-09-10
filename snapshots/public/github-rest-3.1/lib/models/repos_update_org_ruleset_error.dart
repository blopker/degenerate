// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposUpdateOrgRulesetError {const ReposUpdateOrgRulesetError();

/// Decodes the payload for its declared status and content type.
static ReposUpdateOrgRulesetError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ReposUpdateOrgRulesetError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposUpdateOrgRulesetError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return ReposUpdateOrgRulesetError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ReposUpdateOrgRulesetErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class ReposUpdateOrgRulesetError404 extends ReposUpdateOrgRulesetError {const ReposUpdateOrgRulesetError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class ReposUpdateOrgRulesetError422 extends ReposUpdateOrgRulesetError {const ReposUpdateOrgRulesetError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// Response for 500 (application/json).
final class ReposUpdateOrgRulesetError500 extends ReposUpdateOrgRulesetError {const ReposUpdateOrgRulesetError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposUpdateOrgRulesetErrorUnknown extends ReposUpdateOrgRulesetError {const ReposUpdateOrgRulesetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
