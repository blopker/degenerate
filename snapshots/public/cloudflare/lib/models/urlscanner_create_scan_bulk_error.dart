// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_create_scan_bulk_response400.dart';import 'urlscanner_create_scan_bulk_response429.dart';/// Error responses of `POST /accounts/{account_id}/urlscanner/v2/bulk`.
sealed class UrlscannerCreateScanBulkError {const UrlscannerCreateScanBulkError();

/// Parse the variant matching the response status code.
factory UrlscannerCreateScanBulkError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => UrlscannerCreateScanBulkError400.parse(response),
  429 => UrlscannerCreateScanBulkError429.parse(response),
  _ => UrlscannerCreateScanBulkError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class UrlscannerCreateScanBulkError400 extends UrlscannerCreateScanBulkError {const UrlscannerCreateScanBulkError400(this.data);

factory UrlscannerCreateScanBulkError400.parse(ApiResponse response) { return UrlscannerCreateScanBulkError400(UrlscannerCreateScanBulkResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerCreateScanBulkResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanBulkError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanBulkError400($data)'; } 
 }
/// The `429` response.
@immutable final class UrlscannerCreateScanBulkError429 extends UrlscannerCreateScanBulkError {const UrlscannerCreateScanBulkError429(this.data);

factory UrlscannerCreateScanBulkError429.parse(ApiResponse response) { return UrlscannerCreateScanBulkError429(UrlscannerCreateScanBulkResponse429.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerCreateScanBulkResponse429 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanBulkError429 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanBulkError429($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UrlscannerCreateScanBulkError$Unknown extends UrlscannerCreateScanBulkError {const UrlscannerCreateScanBulkError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanBulkError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UrlscannerCreateScanBulkError.unknown($statusCode)'; } 
 }
