// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_screenshot_response400.dart';import 'brapi_post_screenshot_response422.dart';import 'brapi_post_screenshot_response429.dart';import 'brapi_post_screenshot_response500.dart';/// Error responses of `POST /accounts/{account_id}/browser-rendering/screenshot`.
sealed class BrapiPostScreenshotError {const BrapiPostScreenshotError();

/// Parse the variant matching the response status code.
factory BrapiPostScreenshotError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BrapiPostScreenshotError400.parse(response),
  422 => BrapiPostScreenshotError422.parse(response),
  429 => BrapiPostScreenshotError429.parse(response),
  500 => BrapiPostScreenshotError500.parse(response),
  _ => BrapiPostScreenshotError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BrapiPostScreenshotError400 extends BrapiPostScreenshotError {const BrapiPostScreenshotError400(this.data);

factory BrapiPostScreenshotError400.parse(ApiResponse response) { return BrapiPostScreenshotError400(BrapiPostScreenshotResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostScreenshotResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScreenshotError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostScreenshotError400($data)'; } 
 }
/// The `422` response.
@immutable final class BrapiPostScreenshotError422 extends BrapiPostScreenshotError {const BrapiPostScreenshotError422(this.data);

factory BrapiPostScreenshotError422.parse(ApiResponse response) { return BrapiPostScreenshotError422(BrapiPostScreenshotResponse422.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostScreenshotResponse422 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScreenshotError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostScreenshotError422($data)'; } 
 }
/// The `429` response.
@immutable final class BrapiPostScreenshotError429 extends BrapiPostScreenshotError {const BrapiPostScreenshotError429(this.data);

factory BrapiPostScreenshotError429.parse(ApiResponse response) { return BrapiPostScreenshotError429(BrapiPostScreenshotResponse429.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostScreenshotResponse429 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScreenshotError429 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostScreenshotError429($data)'; } 
 }
/// The `500` response.
@immutable final class BrapiPostScreenshotError500 extends BrapiPostScreenshotError {const BrapiPostScreenshotError500(this.data);

factory BrapiPostScreenshotError500.parse(ApiResponse response) { return BrapiPostScreenshotError500(BrapiPostScreenshotResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostScreenshotResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScreenshotError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostScreenshotError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BrapiPostScreenshotError$Unknown extends BrapiPostScreenshotError {const BrapiPostScreenshotError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostScreenshotError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BrapiPostScreenshotError.unknown($statusCode)'; } 
 }
