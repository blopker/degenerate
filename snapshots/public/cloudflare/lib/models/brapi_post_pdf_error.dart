// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_pdf_response400.dart';import 'brapi_post_pdf_response422.dart';import 'brapi_post_pdf_response429.dart';import 'brapi_post_pdf_response500.dart';/// Error responses of `POST /accounts/{account_id}/browser-rendering/pdf`.
sealed class BrapiPostPdfError {const BrapiPostPdfError();

/// Parse the variant matching the response status code.
factory BrapiPostPdfError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => BrapiPostPdfError400.parse(response),
  422 => BrapiPostPdfError422.parse(response),
  429 => BrapiPostPdfError429.parse(response),
  500 => BrapiPostPdfError500.parse(response),
  _ => BrapiPostPdfError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class BrapiPostPdfError400 extends BrapiPostPdfError {const BrapiPostPdfError400(this.data);

factory BrapiPostPdfError400.parse(ApiResponse response) { return BrapiPostPdfError400(BrapiPostPdfResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostPdfResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostPdfError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostPdfError400($data)'; } 
 }
/// The `422` response.
@immutable final class BrapiPostPdfError422 extends BrapiPostPdfError {const BrapiPostPdfError422(this.data);

factory BrapiPostPdfError422.parse(ApiResponse response) { return BrapiPostPdfError422(BrapiPostPdfResponse422.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostPdfResponse422 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostPdfError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostPdfError422($data)'; } 
 }
/// The `429` response.
@immutable final class BrapiPostPdfError429 extends BrapiPostPdfError {const BrapiPostPdfError429(this.data);

factory BrapiPostPdfError429.parse(ApiResponse response) { return BrapiPostPdfError429(BrapiPostPdfResponse429.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostPdfResponse429 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostPdfError429 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostPdfError429($data)'; } 
 }
/// The `500` response.
@immutable final class BrapiPostPdfError500 extends BrapiPostPdfError {const BrapiPostPdfError500(this.data);

factory BrapiPostPdfError500.parse(ApiResponse response) { return BrapiPostPdfError500(BrapiPostPdfResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BrapiPostPdfResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostPdfError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'BrapiPostPdfError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class BrapiPostPdfError$Unknown extends BrapiPostPdfError {const BrapiPostPdfError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostPdfError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'BrapiPostPdfError.unknown($statusCode)'; } 
 }
