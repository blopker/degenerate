// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /licenses/{license}`.
sealed class LicensesGetError {const LicensesGetError();

/// Parse the variant matching the response status code.
factory LicensesGetError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => LicensesGetError304.parse(response),
  403 => LicensesGetError403.parse(response),
  404 => LicensesGetError404.parse(response),
  _ => LicensesGetError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class LicensesGetError304 extends LicensesGetError {const LicensesGetError304();

factory LicensesGetError304.parse(ApiResponse _) { return const LicensesGetError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is LicensesGetError304; } 
@override int get hashCode { return (LicensesGetError304).hashCode; } 
@override String toString() { return 'LicensesGetError304()'; } 
 }
/// The `403` response.
@immutable final class LicensesGetError403 extends LicensesGetError {const LicensesGetError403(this.data);

factory LicensesGetError403.parse(ApiResponse response) { return LicensesGetError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is LicensesGetError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'LicensesGetError403($data)'; } 
 }
/// The `404` response.
@immutable final class LicensesGetError404 extends LicensesGetError {const LicensesGetError404(this.data);

factory LicensesGetError404.parse(ApiResponse response) { return LicensesGetError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is LicensesGetError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'LicensesGetError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class LicensesGetError$Unknown extends LicensesGetError {const LicensesGetError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is LicensesGetError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'LicensesGetError.unknown($statusCode)'; } 
 }
