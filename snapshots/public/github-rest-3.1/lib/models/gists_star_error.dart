// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `PUT /gists/{gist_id}/star`.
sealed class GistsStarError {const GistsStarError();

/// Parse the variant matching the response status code.
factory GistsStarError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsStarError304.parse(response),
  403 => GistsStarError403.parse(response),
  404 => GistsStarError404.parse(response),
  _ => GistsStarError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsStarError304 extends GistsStarError {const GistsStarError304();

factory GistsStarError304.parse(ApiResponse _) { return const GistsStarError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsStarError304; } 
@override int get hashCode { return (GistsStarError304).hashCode; } 
@override String toString() { return 'GistsStarError304()'; } 
 }
/// The `403` response.
@immutable final class GistsStarError403 extends GistsStarError {const GistsStarError403(this.data);

factory GistsStarError403.parse(ApiResponse response) { return GistsStarError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsStarError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsStarError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsStarError404 extends GistsStarError {const GistsStarError404(this.data);

factory GistsStarError404.parse(ApiResponse response) { return GistsStarError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsStarError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsStarError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsStarError$Unknown extends GistsStarError {const GistsStarError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsStarError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsStarError.unknown($statusCode)'; } 
 }
