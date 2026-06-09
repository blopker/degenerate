// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /gists/{gist_id}`.
sealed class GistsUpdateError {const GistsUpdateError();

/// Parse the variant matching the response status code.
factory GistsUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => GistsUpdateError404.parse(response),
  422 => GistsUpdateError422.parse(response),
  _ => GistsUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class GistsUpdateError404 extends GistsUpdateError {const GistsUpdateError404(this.data);

factory GistsUpdateError404.parse(ApiResponse response) { return GistsUpdateError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsUpdateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsUpdateError404($data)'; } 
 }
/// The `422` response.
@immutable final class GistsUpdateError422 extends GistsUpdateError {const GistsUpdateError422(this.data);

factory GistsUpdateError422.parse(ApiResponse response) { return GistsUpdateError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsUpdateError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsUpdateError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsUpdateError$Unknown extends GistsUpdateError {const GistsUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsUpdateError.unknown($statusCode)'; } 
 }
