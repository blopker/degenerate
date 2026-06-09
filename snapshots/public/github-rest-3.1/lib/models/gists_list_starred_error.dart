// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /gists/starred`.
sealed class GistsListStarredError {const GistsListStarredError();

/// Parse the variant matching the response status code.
factory GistsListStarredError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsListStarredError304.parse(response),
  401 => GistsListStarredError401.parse(response),
  403 => GistsListStarredError403.parse(response),
  _ => GistsListStarredError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsListStarredError304 extends GistsListStarredError {const GistsListStarredError304();

factory GistsListStarredError304.parse(ApiResponse _) { return const GistsListStarredError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsListStarredError304; } 
@override int get hashCode { return (GistsListStarredError304).hashCode; } 
@override String toString() { return 'GistsListStarredError304()'; } 
 }
/// The `401` response.
@immutable final class GistsListStarredError401 extends GistsListStarredError {const GistsListStarredError401(this.data);

factory GistsListStarredError401.parse(ApiResponse response) { return GistsListStarredError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListStarredError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsListStarredError401($data)'; } 
 }
/// The `403` response.
@immutable final class GistsListStarredError403 extends GistsListStarredError {const GistsListStarredError403(this.data);

factory GistsListStarredError403.parse(ApiResponse response) { return GistsListStarredError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListStarredError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsListStarredError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsListStarredError$Unknown extends GistsListStarredError {const GistsListStarredError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListStarredError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsListStarredError.unknown($statusCode)'; } 
 }
