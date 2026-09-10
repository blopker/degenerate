// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesRemoveDependencyBlockedByError {const IssuesRemoveDependencyBlockedByError();

/// Decodes the payload for its declared status and content type.
static IssuesRemoveDependencyBlockedByError parse(ApiResponse response) {switch (response.statusCode) {
case 301:
final json = jsonDecode(response.body);
return IssuesRemoveDependencyBlockedByError301(BasicError.fromJson(json as Map<String, dynamic>));
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return IssuesRemoveDependencyBlockedByError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return IssuesRemoveDependencyBlockedByError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return IssuesRemoveDependencyBlockedByError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 401:
final json = jsonDecode(response.body);
return IssuesRemoveDependencyBlockedByError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return IssuesRemoveDependencyBlockedByError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return IssuesRemoveDependencyBlockedByError404(BasicError.fromJson(json as Map<String, dynamic>));
case 410:
final json = jsonDecode(response.body);
return IssuesRemoveDependencyBlockedByError410(BasicError.fromJson(json as Map<String, dynamic>));
default:
return IssuesRemoveDependencyBlockedByErrorUnknown(response);
}
}
}
/// Response for 301 (application/json).
final class IssuesRemoveDependencyBlockedByError301 extends IssuesRemoveDependencyBlockedByError {const IssuesRemoveDependencyBlockedByError301(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/json).
final class IssuesRemoveDependencyBlockedByError400ApplicationJson extends IssuesRemoveDependencyBlockedByError {const IssuesRemoveDependencyBlockedByError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class IssuesRemoveDependencyBlockedByError400ApplicationScimJson extends IssuesRemoveDependencyBlockedByError {const IssuesRemoveDependencyBlockedByError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 401 (application/json).
final class IssuesRemoveDependencyBlockedByError401 extends IssuesRemoveDependencyBlockedByError {const IssuesRemoveDependencyBlockedByError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class IssuesRemoveDependencyBlockedByError403 extends IssuesRemoveDependencyBlockedByError {const IssuesRemoveDependencyBlockedByError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class IssuesRemoveDependencyBlockedByError404 extends IssuesRemoveDependencyBlockedByError {const IssuesRemoveDependencyBlockedByError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 410 (application/json).
final class IssuesRemoveDependencyBlockedByError410 extends IssuesRemoveDependencyBlockedByError {const IssuesRemoveDependencyBlockedByError410(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesRemoveDependencyBlockedByErrorUnknown extends IssuesRemoveDependencyBlockedByError {const IssuesRemoveDependencyBlockedByErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
