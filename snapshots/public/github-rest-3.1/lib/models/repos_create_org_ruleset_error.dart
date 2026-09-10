// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCreateOrgRulesetError {const ReposCreateOrgRulesetError();

/// Decodes the payload for its declared status and content type.
static ReposCreateOrgRulesetError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ReposCreateOrgRulesetError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposCreateOrgRulesetError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return ReposCreateOrgRulesetError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ReposCreateOrgRulesetErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class ReposCreateOrgRulesetError404 extends ReposCreateOrgRulesetError {const ReposCreateOrgRulesetError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposCreateOrgRulesetError422 extends ReposCreateOrgRulesetError {const ReposCreateOrgRulesetError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 500 (application/json).
final class ReposCreateOrgRulesetError500 extends ReposCreateOrgRulesetError {const ReposCreateOrgRulesetError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCreateOrgRulesetErrorUnknown extends ReposCreateOrgRulesetError {const ReposCreateOrgRulesetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
