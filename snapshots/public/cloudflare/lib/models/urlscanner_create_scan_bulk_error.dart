// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_create_scan_bulk_response400.dart';import 'urlscanner_create_scan_bulk_response429.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UrlscannerCreateScanBulkError {const UrlscannerCreateScanBulkError();

/// Decodes the payload for its declared status and content type.
static UrlscannerCreateScanBulkError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return UrlscannerCreateScanBulkError400(UrlscannerCreateScanBulkResponse400.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return UrlscannerCreateScanBulkError429(UrlscannerCreateScanBulkResponse429.fromJson(json as Map<String, dynamic>));
default:
return UrlscannerCreateScanBulkErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class UrlscannerCreateScanBulkError400 extends UrlscannerCreateScanBulkError {const UrlscannerCreateScanBulkError400(this.data);

/// The decoded response payload.
final UrlscannerCreateScanBulkResponse400 data;

 }
/// Response for 429 (application/json).
final class UrlscannerCreateScanBulkError429 extends UrlscannerCreateScanBulkError {const UrlscannerCreateScanBulkError429(this.data);

/// The decoded response payload.
final UrlscannerCreateScanBulkResponse429 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UrlscannerCreateScanBulkErrorUnknown extends UrlscannerCreateScanBulkError {const UrlscannerCreateScanBulkErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
