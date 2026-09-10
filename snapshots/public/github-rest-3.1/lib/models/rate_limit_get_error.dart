// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class RateLimitGetError {const RateLimitGetError();

/// Decodes the payload for its declared status and content type.
static RateLimitGetError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const RateLimitGetError304();
case 404:
final json = jsonDecode(response.body);
return RateLimitGetError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return RateLimitGetErrorUnknown(response);
}
}
}
/// Response for 304.
final class RateLimitGetError304 extends RateLimitGetError {const RateLimitGetError304();

}
/// Response for 404 (application/json).
final class RateLimitGetError404 extends RateLimitGetError {const RateLimitGetError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class RateLimitGetErrorUnknown extends RateLimitGetError {const RateLimitGetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
