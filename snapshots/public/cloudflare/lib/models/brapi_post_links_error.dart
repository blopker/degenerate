// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_links_response400.dart';import 'brapi_post_links_response422.dart';import 'brapi_post_links_response429.dart';import 'brapi_post_links_response500.dart';/// Error responses of `POST /accounts/{account_id}/browser-rendering/links`.
sealed class BrapiPostLinksError {const BrapiPostLinksError();

/// Parse the variant matching the response status code.
factory BrapiPostLinksError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BrapiPostLinksError400.parse(response),
  422 => BrapiPostLinksError422.parse(response),
  429 => BrapiPostLinksError429.parse(response),
  500 => BrapiPostLinksError500.parse(response),
  _ => BrapiPostLinksError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BrapiPostLinksError400 extends BrapiPostLinksError {const BrapiPostLinksError400(this.data);

factory BrapiPostLinksError400.parse(ApiResponse response) { return BrapiPostLinksError400(BrapiPostLinksResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostLinksResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostLinksError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostLinksError400($data)'; } 
 }
/// The `422` response.
@immutable final class BrapiPostLinksError422 extends BrapiPostLinksError {const BrapiPostLinksError422(this.data);

factory BrapiPostLinksError422.parse(ApiResponse response) { return BrapiPostLinksError422(BrapiPostLinksResponse422.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostLinksResponse422 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostLinksError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostLinksError422($data)'; } 
 }
/// The `429` response.
@immutable final class BrapiPostLinksError429 extends BrapiPostLinksError {const BrapiPostLinksError429(this.data);

factory BrapiPostLinksError429.parse(ApiResponse response) { return BrapiPostLinksError429(BrapiPostLinksResponse429.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostLinksResponse429 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostLinksError429 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostLinksError429($data)'; } 
 }
/// The `500` response.
@immutable final class BrapiPostLinksError500 extends BrapiPostLinksError {const BrapiPostLinksError500(this.data);

factory BrapiPostLinksError500.parse(ApiResponse response) { return BrapiPostLinksError500(BrapiPostLinksResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostLinksResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostLinksError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostLinksError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BrapiPostLinksError$Unknown extends BrapiPostLinksError {const BrapiPostLinksError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostLinksError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BrapiPostLinksError.unknown($statusCode)'; } 
 }
