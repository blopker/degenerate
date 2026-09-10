// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsListForAuthenticatedUserError {const OrgsListForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static OrgsListForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const OrgsListForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return OrgsListForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return OrgsListForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return OrgsListForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class OrgsListForAuthenticatedUserError304 extends OrgsListForAuthenticatedUserError {const OrgsListForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class OrgsListForAuthenticatedUserError401 extends OrgsListForAuthenticatedUserError {const OrgsListForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class OrgsListForAuthenticatedUserError403 extends OrgsListForAuthenticatedUserError {const OrgsListForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsListForAuthenticatedUserErrorUnknown extends OrgsListForAuthenticatedUserError {const OrgsListForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
