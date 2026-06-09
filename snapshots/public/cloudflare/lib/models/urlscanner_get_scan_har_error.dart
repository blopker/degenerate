// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_har_response4002.dart';import 'urlscanner_get_scan_har_response4042.dart';/// Error responses of `GET /accounts/{account_id}/urlscanner/v2/har/{scan_id}`.
sealed class UrlscannerGetScanHarError {const UrlscannerGetScanHarError();

/// Parse the variant matching the response status code.
factory UrlscannerGetScanHarError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => UrlscannerGetScanHarError400.parse(response),
  404 => UrlscannerGetScanHarError404.parse(response),
  _ => UrlscannerGetScanHarError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class UrlscannerGetScanHarError400 extends UrlscannerGetScanHarError {const UrlscannerGetScanHarError400(this.data);

factory UrlscannerGetScanHarError400.parse(ApiResponse response) { return UrlscannerGetScanHarError400(UrlscannerGetScanHarResponse4002.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerGetScanHarResponse4002 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerGetScanHarError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerGetScanHarError400($data)'; } 
 }
/// The `404` response.
@immutable final class UrlscannerGetScanHarError404 extends UrlscannerGetScanHarError {const UrlscannerGetScanHarError404(this.data);

factory UrlscannerGetScanHarError404.parse(ApiResponse response) { return UrlscannerGetScanHarError404(UrlscannerGetScanHarResponse4042.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerGetScanHarResponse4042 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerGetScanHarError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerGetScanHarError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UrlscannerGetScanHarError$Unknown extends UrlscannerGetScanHarError {const UrlscannerGetScanHarError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerGetScanHarError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UrlscannerGetScanHarError.unknown($statusCode)'; } 
 }
