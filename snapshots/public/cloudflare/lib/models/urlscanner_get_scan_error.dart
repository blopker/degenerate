// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response4002.dart';import 'urlscanner_get_scan_response4042.dart';/// Error responses of `GET /accounts/{account_id}/urlscanner/v2/result/{scan_id}`.
sealed class UrlscannerGetScanError {const UrlscannerGetScanError();

/// Parse the variant matching the response status code.
factory UrlscannerGetScanError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => UrlscannerGetScanError400.parse(response),
  404 => UrlscannerGetScanError404.parse(response),
  _ => UrlscannerGetScanError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class UrlscannerGetScanError400 extends UrlscannerGetScanError {const UrlscannerGetScanError400(this.data);

factory UrlscannerGetScanError400.parse(ApiResponse response) { return UrlscannerGetScanError400(UrlscannerGetScanResponse4002.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerGetScanResponse4002 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerGetScanError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerGetScanError400($data)'; } 
 }
/// The `404` response.
@immutable final class UrlscannerGetScanError404 extends UrlscannerGetScanError {const UrlscannerGetScanError404(this.data);

factory UrlscannerGetScanError404.parse(ApiResponse response) { return UrlscannerGetScanError404(UrlscannerGetScanResponse4042.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerGetScanResponse4042 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerGetScanError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerGetScanError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UrlscannerGetScanError$Unknown extends UrlscannerGetScanError {const UrlscannerGetScanError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerGetScanError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UrlscannerGetScanError.unknown($statusCode)'; } 
 }
