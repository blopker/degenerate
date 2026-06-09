// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_dom_response400.dart';import 'urlscanner_get_scan_dom_response404.dart';/// Error responses of `GET /accounts/{account_id}/urlscanner/v2/dom/{scan_id}`.
sealed class UrlscannerGetScanDomError {const UrlscannerGetScanDomError();

/// Parse the variant matching the response status code.
factory UrlscannerGetScanDomError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => UrlscannerGetScanDomError400.parse(response),
  404 => UrlscannerGetScanDomError404.parse(response),
  _ => UrlscannerGetScanDomError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class UrlscannerGetScanDomError400 extends UrlscannerGetScanDomError {const UrlscannerGetScanDomError400(this.data);

factory UrlscannerGetScanDomError400.parse(ApiResponse response) { return UrlscannerGetScanDomError400(UrlscannerGetScanDomResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerGetScanDomResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerGetScanDomError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerGetScanDomError400($data)'; } 
 }
/// The `404` response.
@immutable final class UrlscannerGetScanDomError404 extends UrlscannerGetScanDomError {const UrlscannerGetScanDomError404(this.data);

factory UrlscannerGetScanDomError404.parse(ApiResponse response) { return UrlscannerGetScanDomError404(UrlscannerGetScanDomResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final UrlscannerGetScanDomResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerGetScanDomError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'UrlscannerGetScanDomError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class UrlscannerGetScanDomError$Unknown extends UrlscannerGetScanDomError {const UrlscannerGetScanDomError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerGetScanDomError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'UrlscannerGetScanDomError.unknown($statusCode)'; } 
 }
