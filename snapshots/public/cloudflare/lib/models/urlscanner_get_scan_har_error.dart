// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_har_response4002.dart';import 'urlscanner_get_scan_har_response4042.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UrlscannerGetScanHarError {const UrlscannerGetScanHarError();

/// Decodes the payload for its declared status and content type.
static UrlscannerGetScanHarError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return UrlscannerGetScanHarError400(UrlscannerGetScanHarResponse4002.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return UrlscannerGetScanHarError404(UrlscannerGetScanHarResponse4042.fromJson(json as Map<String, dynamic>));
default:
return UrlscannerGetScanHarErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class UrlscannerGetScanHarError400 extends UrlscannerGetScanHarError {const UrlscannerGetScanHarError400(this.data);

/// The decoded response payload.
final UrlscannerGetScanHarResponse4002 data;

 }
/// Response for 404 (application/json).
final class UrlscannerGetScanHarError404 extends UrlscannerGetScanHarError {const UrlscannerGetScanHarError404(this.data);

/// The decoded response payload.
final UrlscannerGetScanHarResponse4042 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UrlscannerGetScanHarErrorUnknown extends UrlscannerGetScanHarError {const UrlscannerGetScanHarErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
