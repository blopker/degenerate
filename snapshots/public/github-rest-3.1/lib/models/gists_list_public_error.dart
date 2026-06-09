// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /gists/public`.
sealed class GistsListPublicError {const GistsListPublicError();

/// Parse the variant matching the response status code.
factory GistsListPublicError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsListPublicError304.parse(response),
  403 => GistsListPublicError403.parse(response),
  422 => GistsListPublicError422.parse(response),
  _ => GistsListPublicError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsListPublicError304 extends GistsListPublicError {const GistsListPublicError304();

factory GistsListPublicError304.parse(ApiResponse _) { return const GistsListPublicError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsListPublicError304; } 
@override int get hashCode { return (GistsListPublicError304).hashCode; } 
@override String toString() { return 'GistsListPublicError304()'; } 
 }
/// The `403` response.
@immutable final class GistsListPublicError403 extends GistsListPublicError {const GistsListPublicError403(this.data);

factory GistsListPublicError403.parse(ApiResponse response) { return GistsListPublicError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListPublicError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsListPublicError403($data)'; } 
 }
/// The `422` response.
@immutable final class GistsListPublicError422 extends GistsListPublicError {const GistsListPublicError422(this.data);

factory GistsListPublicError422.parse(ApiResponse response) { return GistsListPublicError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListPublicError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsListPublicError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsListPublicError$Unknown extends GistsListPublicError {const GistsListPublicError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListPublicError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsListPublicError.unknown($statusCode)'; } 
 }
