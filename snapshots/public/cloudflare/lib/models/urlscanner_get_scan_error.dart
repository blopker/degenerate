// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response4002.dart';import 'urlscanner_get_scan_response4042.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UrlscannerGetScanError {const UrlscannerGetScanError();

/// Decodes the payload for its declared status and content type.
static UrlscannerGetScanError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return UrlscannerGetScanError400(UrlscannerGetScanResponse4002.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UrlscannerGetScanError404(UrlscannerGetScanResponse4042.fromJson(json as Map<String, dynamic>));
default:
return UrlscannerGetScanErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class UrlscannerGetScanError400 extends UrlscannerGetScanError {const UrlscannerGetScanError400(this.data);

/// The decoded response payload.
final UrlscannerGetScanResponse4002 data;

 }
/// Response for 404 (application/json).
final class UrlscannerGetScanError404 extends UrlscannerGetScanError {const UrlscannerGetScanError404(this.data);

/// The decoded response payload.
final UrlscannerGetScanResponse4042 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UrlscannerGetScanErrorUnknown extends UrlscannerGetScanError {const UrlscannerGetScanErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
