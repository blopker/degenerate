// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_screenshot_response4002.dart';import 'urlscanner_get_scan_screenshot_response4042.dart';/// Error responses of `GET /accounts/{account_id}/urlscanner/v2/screenshots/{scan_id}.png`.
sealed class UrlscannerGetScanScreenshotError {const UrlscannerGetScanScreenshotError();

/// Parse the variant matching the response status code.
factory UrlscannerGetScanScreenshotError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => UrlscannerGetScanScreenshotError400.parse(response),
  404 => UrlscannerGetScanScreenshotError404.parse(response),
  _ => UrlscannerGetScanScreenshotError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class UrlscannerGetScanScreenshotError400 extends UrlscannerGetScanScreenshotError {const UrlscannerGetScanScreenshotError400(this.data);

factory UrlscannerGetScanScreenshotError400.parse(ApiResponse response) { return UrlscannerGetScanScreenshotError400(UrlscannerGetScanScreenshotResponse4002.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerGetScanScreenshotResponse4002 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerGetScanScreenshotError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerGetScanScreenshotError400($data)'; } 
 }
/// The `404` response.
@immutable final class UrlscannerGetScanScreenshotError404 extends UrlscannerGetScanScreenshotError {const UrlscannerGetScanScreenshotError404(this.data);

factory UrlscannerGetScanScreenshotError404.parse(ApiResponse response) { return UrlscannerGetScanScreenshotError404(UrlscannerGetScanScreenshotResponse4042.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerGetScanScreenshotResponse4042 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerGetScanScreenshotError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerGetScanScreenshotError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UrlscannerGetScanScreenshotError$Unknown extends UrlscannerGetScanScreenshotError {const UrlscannerGetScanScreenshotError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerGetScanScreenshotError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UrlscannerGetScanScreenshotError.unknown($statusCode)'; } 
 }
