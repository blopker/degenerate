// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `POST /gists/{gist_id}/comments`.
sealed class GistsCreateCommentError {const GistsCreateCommentError();

/// Parse the variant matching the response status code.
factory GistsCreateCommentError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsCreateCommentError304.parse(response),
  403 => GistsCreateCommentError403.parse(response),
  404 => GistsCreateCommentError404.parse(response),
  _ => GistsCreateCommentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsCreateCommentError304 extends GistsCreateCommentError {const GistsCreateCommentError304();

factory GistsCreateCommentError304.parse(ApiResponse _) { return const GistsCreateCommentError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsCreateCommentError304; } 
@override int get hashCode { return (GistsCreateCommentError304).hashCode; } 
@override String toString() { return 'GistsCreateCommentError304()'; } 
 }
/// The `403` response.
@immutable final class GistsCreateCommentError403 extends GistsCreateCommentError {const GistsCreateCommentError403(this.data);

factory GistsCreateCommentError403.parse(ApiResponse response) { return GistsCreateCommentError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsCreateCommentError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsCreateCommentError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsCreateCommentError404 extends GistsCreateCommentError {const GistsCreateCommentError404(this.data);

factory GistsCreateCommentError404.parse(ApiResponse response) { return GistsCreateCommentError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsCreateCommentError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsCreateCommentError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsCreateCommentError$Unknown extends GistsCreateCommentError {const GistsCreateCommentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsCreateCommentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsCreateCommentError.unknown($statusCode)'; } 
 }
