// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /gists/{gist_id}/{sha}`.
sealed class GistsGetRevisionError {const GistsGetRevisionError();

/// Parse the variant matching the response status code.
factory GistsGetRevisionError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => GistsGetRevisionError403.parse(response),
  404 => GistsGetRevisionError404.parse(response),
  422 => GistsGetRevisionError422.parse(response),
  _ => GistsGetRevisionError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class GistsGetRevisionError403 extends GistsGetRevisionError {const GistsGetRevisionError403(this.data);

factory GistsGetRevisionError403.parse(ApiResponse response) { return GistsGetRevisionError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsGetRevisionError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsGetRevisionError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsGetRevisionError404 extends GistsGetRevisionError {const GistsGetRevisionError404(this.data);

factory GistsGetRevisionError404.parse(ApiResponse response) { return GistsGetRevisionError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsGetRevisionError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsGetRevisionError404($data)'; } 
 }
/// The `422` response.
@immutable final class GistsGetRevisionError422 extends GistsGetRevisionError {const GistsGetRevisionError422(this.data);

factory GistsGetRevisionError422.parse(ApiResponse response) { return GistsGetRevisionError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsGetRevisionError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsGetRevisionError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsGetRevisionError$Unknown extends GistsGetRevisionError {const GistsGetRevisionError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsGetRevisionError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsGetRevisionError.unknown($statusCode)'; } 
 }
