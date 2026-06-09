// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /gists`.
sealed class GistsCreateError {const GistsCreateError();

/// Parse the variant matching the response status code.
factory GistsCreateError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsCreateError304.parse(response),
  403 => GistsCreateError403.parse(response),
  404 => GistsCreateError404.parse(response),
  422 => GistsCreateError422.parse(response),
  _ => GistsCreateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsCreateError304 extends GistsCreateError {const GistsCreateError304();

factory GistsCreateError304.parse(ApiResponse _) { return const GistsCreateError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsCreateError304; } 
@override int get hashCode { return (GistsCreateError304).hashCode; } 
@override String toString() { return 'GistsCreateError304()'; } 
 }
/// The `403` response.
@immutable final class GistsCreateError403 extends GistsCreateError {const GistsCreateError403(this.data);

factory GistsCreateError403.parse(ApiResponse response) { return GistsCreateError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsCreateError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsCreateError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsCreateError404 extends GistsCreateError {const GistsCreateError404(this.data);

factory GistsCreateError404.parse(ApiResponse response) { return GistsCreateError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsCreateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsCreateError404($data)'; } 
 }
/// The `422` response.
@immutable final class GistsCreateError422 extends GistsCreateError {const GistsCreateError422(this.data);

factory GistsCreateError422.parse(ApiResponse response) { return GistsCreateError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsCreateError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsCreateError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsCreateError$Unknown extends GistsCreateError {const GistsCreateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsCreateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsCreateError.unknown($statusCode)'; } 
 }
