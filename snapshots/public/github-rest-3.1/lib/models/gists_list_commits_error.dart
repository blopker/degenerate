// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /gists/{gist_id}/commits`.
sealed class GistsListCommitsError {const GistsListCommitsError();

/// Parse the variant matching the response status code.
factory GistsListCommitsError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsListCommitsError304.parse(response),
  403 => GistsListCommitsError403.parse(response),
  404 => GistsListCommitsError404.parse(response),
  _ => GistsListCommitsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsListCommitsError304 extends GistsListCommitsError {const GistsListCommitsError304();

factory GistsListCommitsError304.parse(ApiResponse _) { return const GistsListCommitsError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsListCommitsError304; } 
@override int get hashCode { return (GistsListCommitsError304).hashCode; } 
@override String toString() { return 'GistsListCommitsError304()'; } 
 }
/// The `403` response.
@immutable final class GistsListCommitsError403 extends GistsListCommitsError {const GistsListCommitsError403(this.data);

factory GistsListCommitsError403.parse(ApiResponse response) { return GistsListCommitsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListCommitsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsListCommitsError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsListCommitsError404 extends GistsListCommitsError {const GistsListCommitsError404(this.data);

factory GistsListCommitsError404.parse(ApiResponse response) { return GistsListCommitsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListCommitsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsListCommitsError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsListCommitsError$Unknown extends GistsListCommitsError {const GistsListCommitsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListCommitsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsListCommitsError.unknown($statusCode)'; } 
 }
