// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_markdown_response400.dart';import 'brapi_post_markdown_response422.dart';import 'brapi_post_markdown_response429.dart';import 'brapi_post_markdown_response500.dart';/// Error responses of `POST /accounts/{account_id}/browser-rendering/markdown`.
sealed class BrapiPostMarkdownError {const BrapiPostMarkdownError();

/// Parse the variant matching the response status code.
factory BrapiPostMarkdownError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BrapiPostMarkdownError400.parse(response),
  422 => BrapiPostMarkdownError422.parse(response),
  429 => BrapiPostMarkdownError429.parse(response),
  500 => BrapiPostMarkdownError500.parse(response),
  _ => BrapiPostMarkdownError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BrapiPostMarkdownError400 extends BrapiPostMarkdownError {const BrapiPostMarkdownError400(this.data);

factory BrapiPostMarkdownError400.parse(ApiResponse response) { return BrapiPostMarkdownError400(BrapiPostMarkdownResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostMarkdownResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostMarkdownError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostMarkdownError400($data)'; } 
 }
/// The `422` response.
@immutable final class BrapiPostMarkdownError422 extends BrapiPostMarkdownError {const BrapiPostMarkdownError422(this.data);

factory BrapiPostMarkdownError422.parse(ApiResponse response) { return BrapiPostMarkdownError422(BrapiPostMarkdownResponse422.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostMarkdownResponse422 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostMarkdownError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostMarkdownError422($data)'; } 
 }
/// The `429` response.
@immutable final class BrapiPostMarkdownError429 extends BrapiPostMarkdownError {const BrapiPostMarkdownError429(this.data);

factory BrapiPostMarkdownError429.parse(ApiResponse response) { return BrapiPostMarkdownError429(BrapiPostMarkdownResponse429.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostMarkdownResponse429 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostMarkdownError429 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostMarkdownError429($data)'; } 
 }
/// The `500` response.
@immutable final class BrapiPostMarkdownError500 extends BrapiPostMarkdownError {const BrapiPostMarkdownError500(this.data);

factory BrapiPostMarkdownError500.parse(ApiResponse response) { return BrapiPostMarkdownError500(BrapiPostMarkdownResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostMarkdownResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostMarkdownError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostMarkdownError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BrapiPostMarkdownError$Unknown extends BrapiPostMarkdownError {const BrapiPostMarkdownError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostMarkdownError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BrapiPostMarkdownError.unknown($statusCode)'; } 
 }
