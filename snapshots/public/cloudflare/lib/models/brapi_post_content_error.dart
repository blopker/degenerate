// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_content_response400.dart';import 'brapi_post_content_response422.dart';import 'brapi_post_content_response429.dart';import 'brapi_post_content_response500.dart';/// Error responses of `POST /accounts/{account_id}/browser-rendering/content`.
sealed class BrapiPostContentError {const BrapiPostContentError();

/// Parse the variant matching the response status code.
factory BrapiPostContentError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BrapiPostContentError400.parse(response),
  422 => BrapiPostContentError422.parse(response),
  429 => BrapiPostContentError429.parse(response),
  500 => BrapiPostContentError500.parse(response),
  _ => BrapiPostContentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BrapiPostContentError400 extends BrapiPostContentError {const BrapiPostContentError400(this.data);

factory BrapiPostContentError400.parse(ApiResponse response) { return BrapiPostContentError400(BrapiPostContentResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostContentResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostContentError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostContentError400($data)'; } 
 }
/// The `422` response.
@immutable final class BrapiPostContentError422 extends BrapiPostContentError {const BrapiPostContentError422(this.data);

factory BrapiPostContentError422.parse(ApiResponse response) { return BrapiPostContentError422(BrapiPostContentResponse422.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostContentResponse422 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostContentError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostContentError422($data)'; } 
 }
/// The `429` response.
@immutable final class BrapiPostContentError429 extends BrapiPostContentError {const BrapiPostContentError429(this.data);

factory BrapiPostContentError429.parse(ApiResponse response) { return BrapiPostContentError429(BrapiPostContentResponse429.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostContentResponse429 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostContentError429 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostContentError429($data)'; } 
 }
/// The `500` response.
@immutable final class BrapiPostContentError500 extends BrapiPostContentError {const BrapiPostContentError500(this.data);

factory BrapiPostContentError500.parse(ApiResponse response) { return BrapiPostContentError500(BrapiPostContentResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostContentResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostContentError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostContentError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BrapiPostContentError$Unknown extends BrapiPostContentError {const BrapiPostContentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostContentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BrapiPostContentError.unknown($statusCode)'; } 
 }
