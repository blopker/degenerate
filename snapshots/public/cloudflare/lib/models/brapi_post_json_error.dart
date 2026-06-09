// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_json_response400.dart';import 'brapi_post_json_response422.dart';import 'brapi_post_json_response429.dart';import 'brapi_post_json_response500.dart';/// Error responses of `POST /accounts/{account_id}/browser-rendering/json`.
sealed class BrapiPostJsonError {const BrapiPostJsonError();

/// Parse the variant matching the response status code.
factory BrapiPostJsonError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BrapiPostJsonError400.parse(response),
  422 => BrapiPostJsonError422.parse(response),
  429 => BrapiPostJsonError429.parse(response),
  500 => BrapiPostJsonError500.parse(response),
  _ => BrapiPostJsonError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BrapiPostJsonError400 extends BrapiPostJsonError {const BrapiPostJsonError400(this.data);

factory BrapiPostJsonError400.parse(ApiResponse response) { return BrapiPostJsonError400(BrapiPostJsonResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostJsonResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostJsonError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostJsonError400($data)'; } 
 }
/// The `422` response.
@immutable final class BrapiPostJsonError422 extends BrapiPostJsonError {const BrapiPostJsonError422(this.data);

factory BrapiPostJsonError422.parse(ApiResponse response) { return BrapiPostJsonError422(BrapiPostJsonResponse422.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostJsonResponse422 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostJsonError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostJsonError422($data)'; } 
 }
/// The `429` response.
@immutable final class BrapiPostJsonError429 extends BrapiPostJsonError {const BrapiPostJsonError429(this.data);

factory BrapiPostJsonError429.parse(ApiResponse response) { return BrapiPostJsonError429(BrapiPostJsonResponse429.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostJsonResponse429 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostJsonError429 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostJsonError429($data)'; } 
 }
/// The `500` response.
@immutable final class BrapiPostJsonError500 extends BrapiPostJsonError {const BrapiPostJsonError500(this.data);

factory BrapiPostJsonError500.parse(ApiResponse response) { return BrapiPostJsonError500(BrapiPostJsonResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostJsonResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostJsonError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostJsonError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BrapiPostJsonError$Unknown extends BrapiPostJsonError {const BrapiPostJsonError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostJsonError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BrapiPostJsonError.unknown($statusCode)'; } 
 }
