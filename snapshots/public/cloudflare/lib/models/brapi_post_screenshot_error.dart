// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_screenshot_response400.dart';import 'brapi_post_screenshot_response422.dart';import 'brapi_post_screenshot_response429.dart';import 'brapi_post_screenshot_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class BrapiPostScreenshotError {const BrapiPostScreenshotError();

/// Decodes the payload for its declared status and content type.
static BrapiPostScreenshotError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  BrapiPostScreenshotError400(BrapiPostScreenshotResponse400.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  BrapiPostScreenshotError422(BrapiPostScreenshotResponse422.fromJson(json as Map<String, dynamic>));case 429:
final json = jsonDecode(response.body);
return  BrapiPostScreenshotError429(BrapiPostScreenshotResponse429.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  BrapiPostScreenshotError500(BrapiPostScreenshotResponse500.fromJson(json as Map<String, dynamic>));default:
return  BrapiPostScreenshotErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class BrapiPostScreenshotError400 extends BrapiPostScreenshotError {const BrapiPostScreenshotError400(this.data);

/// The decoded response payload.
final BrapiPostScreenshotResponse400 data;

}
/// Response for 422 (application/json).
final class BrapiPostScreenshotError422 extends BrapiPostScreenshotError {const BrapiPostScreenshotError422(this.data);

/// The decoded response payload.
final BrapiPostScreenshotResponse422 data;

}
/// Response for 429 (application/json).
final class BrapiPostScreenshotError429 extends BrapiPostScreenshotError {const BrapiPostScreenshotError429(this.data);

/// The decoded response payload.
final BrapiPostScreenshotResponse429 data;

}
/// Response for 500 (application/json).
final class BrapiPostScreenshotError500 extends BrapiPostScreenshotError {const BrapiPostScreenshotError500(this.data);

/// The decoded response payload.
final BrapiPostScreenshotResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class BrapiPostScreenshotErrorUnknown extends BrapiPostScreenshotError {const BrapiPostScreenshotErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
