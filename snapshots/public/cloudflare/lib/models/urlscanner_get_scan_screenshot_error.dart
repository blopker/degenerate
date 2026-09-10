// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_screenshot_response4002.dart';import 'urlscanner_get_scan_screenshot_response4042.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UrlscannerGetScanScreenshotError {const UrlscannerGetScanScreenshotError();

/// Decodes the payload for its declared status and content type.
static UrlscannerGetScanScreenshotError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return UrlscannerGetScanScreenshotError400(UrlscannerGetScanScreenshotResponse4002.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UrlscannerGetScanScreenshotError404(UrlscannerGetScanScreenshotResponse4042.fromJson(json as Map<String, dynamic>));
default:
return UrlscannerGetScanScreenshotErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class UrlscannerGetScanScreenshotError400 extends UrlscannerGetScanScreenshotError {const UrlscannerGetScanScreenshotError400(this.data);

/// The decoded response payload.
final UrlscannerGetScanScreenshotResponse4002 data;

 }
/// Response for 404 (application/json).
final class UrlscannerGetScanScreenshotError404 extends UrlscannerGetScanScreenshotError {const UrlscannerGetScanScreenshotError404(this.data);

/// The decoded response payload.
final UrlscannerGetScanScreenshotResponse4042 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UrlscannerGetScanScreenshotErrorUnknown extends UrlscannerGetScanScreenshotError {const UrlscannerGetScanScreenshotErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
