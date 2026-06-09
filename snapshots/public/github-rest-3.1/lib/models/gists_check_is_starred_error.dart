// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'gists_check_is_starred_response404.dart';/// Error responses of `GET /gists/{gist_id}/star`.
sealed class GistsCheckIsStarredError {const GistsCheckIsStarredError();

/// Parse the variant matching the response status code.
factory GistsCheckIsStarredError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsCheckIsStarredError304.parse(response),
  403 => GistsCheckIsStarredError403.parse(response),
  404 => GistsCheckIsStarredError404.parse(response),
  _ => GistsCheckIsStarredError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsCheckIsStarredError304 extends GistsCheckIsStarredError {const GistsCheckIsStarredError304();

factory GistsCheckIsStarredError304.parse(ApiResponse _) { return const GistsCheckIsStarredError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsCheckIsStarredError304; } 
@override int get hashCode { return (GistsCheckIsStarredError304).hashCode; } 
@override String toString() { return 'GistsCheckIsStarredError304()'; } 
 }
/// The `403` response.
@immutable final class GistsCheckIsStarredError403 extends GistsCheckIsStarredError {const GistsCheckIsStarredError403(this.data);

factory GistsCheckIsStarredError403.parse(ApiResponse response) { return GistsCheckIsStarredError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsCheckIsStarredError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsCheckIsStarredError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsCheckIsStarredError404 extends GistsCheckIsStarredError {const GistsCheckIsStarredError404(this.data);

factory GistsCheckIsStarredError404.parse(ApiResponse response) { return GistsCheckIsStarredError404(GistsCheckIsStarredResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GistsCheckIsStarredResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsCheckIsStarredError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsCheckIsStarredError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsCheckIsStarredError$Unknown extends GistsCheckIsStarredError {const GistsCheckIsStarredError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsCheckIsStarredError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsCheckIsStarredError.unknown($statusCode)'; } 
 }
