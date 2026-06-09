// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'gists_get_response403.dart';/// Error responses of `GET /gists/{gist_id}`.
sealed class GistsGetError {const GistsGetError();

/// Parse the variant matching the response status code.
factory GistsGetError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsGetError304.parse(response),
  403 => GistsGetError403.parse(response),
  404 => GistsGetError404.parse(response),
  _ => GistsGetError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsGetError304 extends GistsGetError {const GistsGetError304();

factory GistsGetError304.parse(ApiResponse _) { return const GistsGetError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsGetError304; } 
@override int get hashCode { return (GistsGetError304).hashCode; } 
@override String toString() { return 'GistsGetError304()'; } 
 }
/// The `403` response.
@immutable final class GistsGetError403 extends GistsGetError {const GistsGetError403(this.data);

factory GistsGetError403.parse(ApiResponse response) { return GistsGetError403(GistsGetResponse403.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GistsGetResponse403 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsGetError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsGetError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsGetError404 extends GistsGetError {const GistsGetError404(this.data);

factory GistsGetError404.parse(ApiResponse response) { return GistsGetError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsGetError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsGetError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsGetError$Unknown extends GistsGetError {const GistsGetError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsGetError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsGetError.unknown($statusCode)'; } 
 }
