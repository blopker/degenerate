// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_create_scan_response4002.dart';import 'urlscanner_create_scan_response4092.dart';import 'urlscanner_create_scan_response4292.dart';/// Error responses of `POST /accounts/{account_id}/urlscanner/v2/scan`.
sealed class UrlscannerCreateScanError {const UrlscannerCreateScanError();

/// Parse the variant matching the response status code.
factory UrlscannerCreateScanError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => UrlscannerCreateScanError400.parse(response),
  409 => UrlscannerCreateScanError409.parse(response),
  429 => UrlscannerCreateScanError429.parse(response),
  _ => UrlscannerCreateScanError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class UrlscannerCreateScanError400 extends UrlscannerCreateScanError {const UrlscannerCreateScanError400(this.data);

factory UrlscannerCreateScanError400.parse(ApiResponse response) { return UrlscannerCreateScanError400(UrlscannerCreateScanResponse4002.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerCreateScanResponse4002 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanError400($data)'; } 
 }
/// The `409` response.
@immutable final class UrlscannerCreateScanError409 extends UrlscannerCreateScanError {const UrlscannerCreateScanError409(this.data);

factory UrlscannerCreateScanError409.parse(ApiResponse response) { return UrlscannerCreateScanError409(UrlscannerCreateScanResponse4092.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerCreateScanResponse4092 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanError409($data)'; } 
 }
/// The `429` response.
@immutable final class UrlscannerCreateScanError429 extends UrlscannerCreateScanError {const UrlscannerCreateScanError429(this.data);

factory UrlscannerCreateScanError429.parse(ApiResponse response) { return UrlscannerCreateScanError429(UrlscannerCreateScanResponse4292.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerCreateScanResponse4292 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanError429 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanError429($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UrlscannerCreateScanError$Unknown extends UrlscannerCreateScanError {const UrlscannerCreateScanError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UrlscannerCreateScanError.unknown($statusCode)'; } 
 }
