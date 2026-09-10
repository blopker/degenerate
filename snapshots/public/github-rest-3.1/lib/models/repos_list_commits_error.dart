// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposListCommitsError {const ReposListCommitsError();

/// Decodes the payload for its declared status and content type.
static ReposListCommitsError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return ReposListCommitsError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return ReposListCommitsError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return ReposListCommitsError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 404:
final json = jsonDecode(response.body);
return ReposListCommitsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return ReposListCommitsError409(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return ReposListCommitsError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ReposListCommitsErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class ReposListCommitsError400ApplicationJson extends ReposListCommitsError {const ReposListCommitsError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class ReposListCommitsError400ApplicationScimJson extends ReposListCommitsError {const ReposListCommitsError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 404 (application/json).
final class ReposListCommitsError404 extends ReposListCommitsError {const ReposListCommitsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class ReposListCommitsError409 extends ReposListCommitsError {const ReposListCommitsError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class ReposListCommitsError500 extends ReposListCommitsError {const ReposListCommitsError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposListCommitsErrorUnknown extends ReposListCommitsError {const ReposListCommitsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
