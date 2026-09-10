// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsListPatGrantsError {const OrgsListPatGrantsError();

/// Decodes the payload for its declared status and content type.
static OrgsListPatGrantsError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  OrgsListPatGrantsError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  OrgsListPatGrantsError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  OrgsListPatGrantsError422(ValidationError.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  OrgsListPatGrantsError500(BasicError.fromJson(json as Map<String, dynamic>));default:
return  OrgsListPatGrantsErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class OrgsListPatGrantsError403 extends OrgsListPatGrantsError {const OrgsListPatGrantsError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class OrgsListPatGrantsError404 extends OrgsListPatGrantsError {const OrgsListPatGrantsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class OrgsListPatGrantsError422 extends OrgsListPatGrantsError {const OrgsListPatGrantsError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 500 (application/json).
final class OrgsListPatGrantsError500 extends OrgsListPatGrantsError {const OrgsListPatGrantsError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsListPatGrantsErrorUnknown extends OrgsListPatGrantsError {const OrgsListPatGrantsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
