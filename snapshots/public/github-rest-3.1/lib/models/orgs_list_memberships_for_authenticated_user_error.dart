// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsListMembershipsForAuthenticatedUserError {const OrgsListMembershipsForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static OrgsListMembershipsForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const OrgsListMembershipsForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return OrgsListMembershipsForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return OrgsListMembershipsForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OrgsListMembershipsForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return OrgsListMembershipsForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class OrgsListMembershipsForAuthenticatedUserError304 extends OrgsListMembershipsForAuthenticatedUserError {const OrgsListMembershipsForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class OrgsListMembershipsForAuthenticatedUserError401 extends OrgsListMembershipsForAuthenticatedUserError {const OrgsListMembershipsForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class OrgsListMembershipsForAuthenticatedUserError403 extends OrgsListMembershipsForAuthenticatedUserError {const OrgsListMembershipsForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class OrgsListMembershipsForAuthenticatedUserError422 extends OrgsListMembershipsForAuthenticatedUserError {const OrgsListMembershipsForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsListMembershipsForAuthenticatedUserErrorUnknown extends OrgsListMembershipsForAuthenticatedUserError {const OrgsListMembershipsForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
