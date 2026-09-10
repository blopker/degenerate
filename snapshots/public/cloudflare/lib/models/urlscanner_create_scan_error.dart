// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_create_scan_response4002.dart';import 'urlscanner_create_scan_response4092.dart';import 'urlscanner_create_scan_response4292.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UrlscannerCreateScanError {const UrlscannerCreateScanError();

/// Decodes the payload for its declared status and content type.
static UrlscannerCreateScanError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  UrlscannerCreateScanError400(UrlscannerCreateScanResponse4002.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  UrlscannerCreateScanError409(UrlscannerCreateScanResponse4092.fromJson(json as Map<String, dynamic>));case 429:
final json = jsonDecode(response.body);
return  UrlscannerCreateScanError429(UrlscannerCreateScanResponse4292.fromJson(json as Map<String, dynamic>));default:
return  UrlscannerCreateScanErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class UrlscannerCreateScanError400 extends UrlscannerCreateScanError {const UrlscannerCreateScanError400(this.data);

/// The decoded response payload.
final UrlscannerCreateScanResponse4002 data;

}
/// Response for 409 (application/json).
final class UrlscannerCreateScanError409 extends UrlscannerCreateScanError {const UrlscannerCreateScanError409(this.data);

/// The decoded response payload.
final UrlscannerCreateScanResponse4092 data;

}
/// Response for 429 (application/json).
final class UrlscannerCreateScanError429 extends UrlscannerCreateScanError {const UrlscannerCreateScanError429(this.data);

/// The decoded response payload.
final UrlscannerCreateScanResponse4292 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UrlscannerCreateScanErrorUnknown extends UrlscannerCreateScanError {const UrlscannerCreateScanErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
