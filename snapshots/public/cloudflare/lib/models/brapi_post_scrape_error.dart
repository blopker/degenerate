// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_scrape_response400.dart';import 'brapi_post_scrape_response422.dart';import 'brapi_post_scrape_response429.dart';import 'brapi_post_scrape_response500.dart';/// Error responses of `POST /accounts/{account_id}/browser-rendering/scrape`.
sealed class BrapiPostScrapeError {const BrapiPostScrapeError();

/// Parse the variant matching the response status code.
factory BrapiPostScrapeError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BrapiPostScrapeError400.parse(response),
  422 => BrapiPostScrapeError422.parse(response),
  429 => BrapiPostScrapeError429.parse(response),
  500 => BrapiPostScrapeError500.parse(response),
  _ => BrapiPostScrapeError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BrapiPostScrapeError400 extends BrapiPostScrapeError {const BrapiPostScrapeError400(this.data);

factory BrapiPostScrapeError400.parse(ApiResponse response) { return BrapiPostScrapeError400(BrapiPostScrapeResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostScrapeResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScrapeError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostScrapeError400($data)'; } 
 }
/// The `422` response.
@immutable final class BrapiPostScrapeError422 extends BrapiPostScrapeError {const BrapiPostScrapeError422(this.data);

factory BrapiPostScrapeError422.parse(ApiResponse response) { return BrapiPostScrapeError422(BrapiPostScrapeResponse422.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostScrapeResponse422 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScrapeError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostScrapeError422($data)'; } 
 }
/// The `429` response.
@immutable final class BrapiPostScrapeError429 extends BrapiPostScrapeError {const BrapiPostScrapeError429(this.data);

factory BrapiPostScrapeError429.parse(ApiResponse response) { return BrapiPostScrapeError429(BrapiPostScrapeResponse429.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostScrapeResponse429 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScrapeError429 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostScrapeError429($data)'; } 
 }
/// The `500` response.
@immutable final class BrapiPostScrapeError500 extends BrapiPostScrapeError {const BrapiPostScrapeError500(this.data);

factory BrapiPostScrapeError500.parse(ApiResponse response) { return BrapiPostScrapeError500(BrapiPostScrapeResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostScrapeResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScrapeError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostScrapeError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BrapiPostScrapeError$Unknown extends BrapiPostScrapeError {const BrapiPostScrapeError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScrapeError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BrapiPostScrapeError.unknown($statusCode)'; } 
 }
