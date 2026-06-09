// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /gists/{gist_id}/comments`.
sealed class GistsListCommentsError {const GistsListCommentsError();

/// Parse the variant matching the response status code.
factory GistsListCommentsError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsListCommentsError304.parse(response),
  403 => GistsListCommentsError403.parse(response),
  404 => GistsListCommentsError404.parse(response),
  _ => GistsListCommentsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsListCommentsError304 extends GistsListCommentsError {const GistsListCommentsError304();

factory GistsListCommentsError304.parse(ApiResponse _) { return const GistsListCommentsError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsListCommentsError304; } 
@override int get hashCode { return (GistsListCommentsError304).hashCode; } 
@override String toString() { return 'GistsListCommentsError304()'; } 
 }
/// The `403` response.
@immutable final class GistsListCommentsError403 extends GistsListCommentsError {const GistsListCommentsError403(this.data);

factory GistsListCommentsError403.parse(ApiResponse response) { return GistsListCommentsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListCommentsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsListCommentsError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsListCommentsError404 extends GistsListCommentsError {const GistsListCommentsError404(this.data);

factory GistsListCommentsError404.parse(ApiResponse response) { return GistsListCommentsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListCommentsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsListCommentsError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsListCommentsError$Unknown extends GistsListCommentsError {const GistsListCommentsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsListCommentsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsListCommentsError.unknown($statusCode)'; } 
 }
