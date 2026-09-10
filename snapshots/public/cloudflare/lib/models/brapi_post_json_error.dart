// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_json_response400.dart';import 'brapi_post_json_response422.dart';import 'brapi_post_json_response429.dart';import 'brapi_post_json_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BrapiPostJsonError {const BrapiPostJsonError();

/// Decodes the payload for its declared status and content type.
static BrapiPostJsonError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return BrapiPostJsonError400(BrapiPostJsonResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return BrapiPostJsonError422(BrapiPostJsonResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return BrapiPostJsonError429(BrapiPostJsonResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return BrapiPostJsonError500(BrapiPostJsonResponse500.fromJson(json as Map<String, dynamic>));
default:
return BrapiPostJsonErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class BrapiPostJsonError400 extends BrapiPostJsonError {const BrapiPostJsonError400(this.data);

/// The decoded response payload.
final BrapiPostJsonResponse400 data;

}
/// Response for 422 (application/json).
final class BrapiPostJsonError422 extends BrapiPostJsonError {const BrapiPostJsonError422(this.data);

/// The decoded response payload.
final BrapiPostJsonResponse422 data;

}
/// Response for 429 (application/json).
final class BrapiPostJsonError429 extends BrapiPostJsonError {const BrapiPostJsonError429(this.data);

/// The decoded response payload.
final BrapiPostJsonResponse429 data;

}
/// Response for 500 (application/json).
final class BrapiPostJsonError500 extends BrapiPostJsonError {const BrapiPostJsonError500(this.data);

/// The decoded response payload.
final BrapiPostJsonResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class BrapiPostJsonErrorUnknown extends BrapiPostJsonError {const BrapiPostJsonErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
