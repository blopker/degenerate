// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /gists/{gist_id}/star`.
sealed class GistsUnstarError {const GistsUnstarError();

/// Parse the variant matching the response status code.
factory GistsUnstarError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsUnstarError304.parse(response),
  403 => GistsUnstarError403.parse(response),
  404 => GistsUnstarError404.parse(response),
  _ => GistsUnstarError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsUnstarError304 extends GistsUnstarError {const GistsUnstarError304();

factory GistsUnstarError304.parse(ApiResponse _) { return const GistsUnstarError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsUnstarError304; } 
@override int get hashCode { return (GistsUnstarError304).hashCode; } 
@override String toString() { return 'GistsUnstarError304()'; } 
 }
/// The `403` response.
@immutable final class GistsUnstarError403 extends GistsUnstarError {const GistsUnstarError403(this.data);

factory GistsUnstarError403.parse(ApiResponse response) { return GistsUnstarError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsUnstarError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsUnstarError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsUnstarError404 extends GistsUnstarError {const GistsUnstarError404(this.data);

factory GistsUnstarError404.parse(ApiResponse response) { return GistsUnstarError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsUnstarError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsUnstarError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsUnstarError$Unknown extends GistsUnstarError {const GistsUnstarError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsUnstarError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsUnstarError.unknown($statusCode)'; } 
 }
