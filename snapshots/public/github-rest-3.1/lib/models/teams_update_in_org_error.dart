// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class TeamsUpdateInOrgError {const TeamsUpdateInOrgError();

/// Decodes the payload for its declared status and content type.
static TeamsUpdateInOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return TeamsUpdateInOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return TeamsUpdateInOrgError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return TeamsUpdateInOrgError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return TeamsUpdateInOrgErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class TeamsUpdateInOrgError403 extends TeamsUpdateInOrgError {const TeamsUpdateInOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class TeamsUpdateInOrgError404 extends TeamsUpdateInOrgError {const TeamsUpdateInOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class TeamsUpdateInOrgError422 extends TeamsUpdateInOrgError {const TeamsUpdateInOrgError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class TeamsUpdateInOrgErrorUnknown extends TeamsUpdateInOrgError {const TeamsUpdateInOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
