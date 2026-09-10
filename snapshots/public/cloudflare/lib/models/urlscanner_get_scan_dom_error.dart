// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_dom_response400.dart';import 'urlscanner_get_scan_dom_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UrlscannerGetScanDomError {const UrlscannerGetScanDomError();

/// Decodes the payload for its declared status and content type.
static UrlscannerGetScanDomError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  UrlscannerGetScanDomError400(UrlscannerGetScanDomResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  UrlscannerGetScanDomError404(UrlscannerGetScanDomResponse404.fromJson(json as Map<String, dynamic>));default:
return  UrlscannerGetScanDomErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class UrlscannerGetScanDomError400 extends UrlscannerGetScanDomError {const UrlscannerGetScanDomError400(this.data);

/// The decoded response payload.
final UrlscannerGetScanDomResponse400 data;

}
/// Response for 404 (application/json).
final class UrlscannerGetScanDomError404 extends UrlscannerGetScanDomError {const UrlscannerGetScanDomError404(this.data);

/// The decoded response payload.
final UrlscannerGetScanDomResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UrlscannerGetScanDomErrorUnknown extends UrlscannerGetScanDomError {const UrlscannerGetScanDomErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
