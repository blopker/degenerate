// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_screenshot_response.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class BrapiPostScreenshotSuccess {const BrapiPostScreenshotSuccess();

/// Decodes the payload for its declared status and content type.
static BrapiPostScreenshotSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  BrapiPostScreenshotSuccess200ApplicationJson(BrapiPostScreenshotResponse.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'image/jpg', )) {
return  BrapiPostScreenshotSuccess200ImageJpg(response.body); } else if (responseMediaTypeMatches(contentType, 'image/png', )) {
return  BrapiPostScreenshotSuccess200ImageJpg(response.body); } else if (responseMediaTypeMatches(contentType, 'image/webp', )) {
return  BrapiPostScreenshotSuccess200ImageJpg(response.body); } else if (responseMediaTypeMatches(contentType, 'text/plain', )) {
return  BrapiPostScreenshotSuccess200ImageJpg(response.body); } else {
final json = jsonDecode(response.body);
return  BrapiPostScreenshotSuccess200ApplicationJson(BrapiPostScreenshotResponse.fromJson(json as Map<String, dynamic>)); }default:
return  BrapiPostScreenshotSuccessUnknown(response); }}
}
/// Response for 200 (application/json).
final class BrapiPostScreenshotSuccess200ApplicationJson extends BrapiPostScreenshotSuccess {const BrapiPostScreenshotSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final BrapiPostScreenshotResponse data;

}
/// Response for 200 (image/jpg).
final class BrapiPostScreenshotSuccess200ImageJpg extends BrapiPostScreenshotSuccess {const BrapiPostScreenshotSuccess200ImageJpg(this.data);

/// The decoded response payload.
final String data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class BrapiPostScreenshotSuccessUnknown extends BrapiPostScreenshotSuccess {const BrapiPostScreenshotSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
