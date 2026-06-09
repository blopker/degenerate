// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /gists/{gist_id}/forks`.
sealed class GistsForkError {const GistsForkError();

/// Parse the variant matching the response status code.
factory GistsForkError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsForkError304.parse(response),
  403 => GistsForkError403.parse(response),
  404 => GistsForkError404.parse(response),
  422 => GistsForkError422.parse(response),
  _ => GistsForkError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsForkError304 extends GistsForkError {const GistsForkError304();

factory GistsForkError304.parse(ApiResponse _) { return const GistsForkError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsForkError304; } 
@override int get hashCode { return (GistsForkError304).hashCode; } 
@override String toString() { return 'GistsForkError304()'; } 
 }
/// The `403` response.
@immutable final class GistsForkError403 extends GistsForkError {const GistsForkError403(this.data);

factory GistsForkError403.parse(ApiResponse response) { return GistsForkError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsForkError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsForkError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsForkError404 extends GistsForkError {const GistsForkError404(this.data);

factory GistsForkError404.parse(ApiResponse response) { return GistsForkError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsForkError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsForkError404($data)'; } 
 }
/// The `422` response.
@immutable final class GistsForkError422 extends GistsForkError {const GistsForkError422(this.data);

factory GistsForkError422.parse(ApiResponse response) { return GistsForkError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsForkError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsForkError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsForkError$Unknown extends GistsForkError {const GistsForkError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsForkError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsForkError.unknown($statusCode)'; } 
 }
