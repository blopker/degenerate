// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /gists/{gist_id}`.
sealed class GistsDeleteError {const GistsDeleteError();

/// Parse the variant matching the response status code.
factory GistsDeleteError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsDeleteError304.parse(response),
  403 => GistsDeleteError403.parse(response),
  404 => GistsDeleteError404.parse(response),
  _ => GistsDeleteError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsDeleteError304 extends GistsDeleteError {const GistsDeleteError304();

factory GistsDeleteError304.parse(ApiResponse _) { return const GistsDeleteError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsDeleteError304; } 
@override int get hashCode { return (GistsDeleteError304).hashCode; } 
@override String toString() { return 'GistsDeleteError304()'; } 
 }
/// The `403` response.
@immutable final class GistsDeleteError403 extends GistsDeleteError {const GistsDeleteError403(this.data);

factory GistsDeleteError403.parse(ApiResponse response) { return GistsDeleteError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsDeleteError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsDeleteError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsDeleteError404 extends GistsDeleteError {const GistsDeleteError404(this.data);

factory GistsDeleteError404.parse(ApiResponse response) { return GistsDeleteError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsDeleteError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsDeleteError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsDeleteError$Unknown extends GistsDeleteError {const GistsDeleteError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsDeleteError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsDeleteError.unknown($statusCode)'; } 
 }
