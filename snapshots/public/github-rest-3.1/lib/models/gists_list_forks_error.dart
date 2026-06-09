// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /gists/{gist_id}/forks`.
sealed class GistsListForksError {const GistsListForksError();

/// Parse the variant matching the response status code.
factory GistsListForksError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsListForksError304.parse(response),
  403 => GistsListForksError403.parse(response),
  404 => GistsListForksError404.parse(response),
  _ => GistsListForksError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsListForksError304 extends GistsListForksError {const GistsListForksError304();

factory GistsListForksError304.parse(ApiResponse _) { return const GistsListForksError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsListForksError304; } 
@override int get hashCode { return (GistsListForksError304).hashCode; } 
@override String toString() { return 'GistsListForksError304()'; } 
 }
/// The `403` response.
@immutable final class GistsListForksError403 extends GistsListForksError {const GistsListForksError403(this.data);

factory GistsListForksError403.parse(ApiResponse response) { return GistsListForksError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListForksError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsListForksError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsListForksError404 extends GistsListForksError {const GistsListForksError404(this.data);

factory GistsListForksError404.parse(ApiResponse response) { return GistsListForksError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListForksError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsListForksError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsListForksError$Unknown extends GistsListForksError {const GistsListForksError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListForksError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsListForksError.unknown($statusCode)'; } 
 }
