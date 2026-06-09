// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /gists`.
sealed class GistsListError {const GistsListError();

/// Parse the variant matching the response status code.
factory GistsListError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsListError304.parse(response),
  403 => GistsListError403.parse(response),
  _ => GistsListError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsListError304 extends GistsListError {const GistsListError304();

factory GistsListError304.parse(ApiResponse _) { return const GistsListError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsListError304; } 
@override int get hashCode { return (GistsListError304).hashCode; } 
@override String toString() { return 'GistsListError304()'; } 
 }
/// The `403` response.
@immutable final class GistsListError403 extends GistsListError {const GistsListError403(this.data);

factory GistsListError403.parse(ApiResponse response) { return GistsListError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsListError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsListError$Unknown extends GistsListError {const GistsListError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsListError.unknown($statusCode)'; } 
 }
