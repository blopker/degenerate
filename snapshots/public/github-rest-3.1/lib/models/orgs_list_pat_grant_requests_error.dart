// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsListPatGrantRequestsError {const OrgsListPatGrantRequestsError();

/// Decodes the payload for its declared status and content type.
static OrgsListPatGrantRequestsError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return OrgsListPatGrantRequestsError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OrgsListPatGrantRequestsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OrgsListPatGrantRequestsError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OrgsListPatGrantRequestsError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return OrgsListPatGrantRequestsErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class OrgsListPatGrantRequestsError403 extends OrgsListPatGrantRequestsError {const OrgsListPatGrantRequestsError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class OrgsListPatGrantRequestsError404 extends OrgsListPatGrantRequestsError {const OrgsListPatGrantRequestsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class OrgsListPatGrantRequestsError422 extends OrgsListPatGrantRequestsError {const OrgsListPatGrantRequestsError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 500 (application/json).
final class OrgsListPatGrantRequestsError500 extends OrgsListPatGrantRequestsError {const OrgsListPatGrantRequestsError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsListPatGrantRequestsErrorUnknown extends OrgsListPatGrantRequestsError {const OrgsListPatGrantRequestsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
