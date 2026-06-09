// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /gists/{gist_id}/comments/{comment_id}`.
sealed class GistsDeleteCommentError {const GistsDeleteCommentError();

/// Parse the variant matching the response status code.
factory GistsDeleteCommentError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsDeleteCommentError304.parse(response),
  403 => GistsDeleteCommentError403.parse(response),
  404 => GistsDeleteCommentError404.parse(response),
  _ => GistsDeleteCommentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsDeleteCommentError304 extends GistsDeleteCommentError {const GistsDeleteCommentError304();

factory GistsDeleteCommentError304.parse(ApiResponse _) { return const GistsDeleteCommentError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsDeleteCommentError304; } 
@override int get hashCode { return (GistsDeleteCommentError304).hashCode; } 
@override String toString() { return 'GistsDeleteCommentError304()'; } 
 }
/// The `403` response.
@immutable final class GistsDeleteCommentError403 extends GistsDeleteCommentError {const GistsDeleteCommentError403(this.data);

factory GistsDeleteCommentError403.parse(ApiResponse response) { return GistsDeleteCommentError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsDeleteCommentError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsDeleteCommentError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsDeleteCommentError404 extends GistsDeleteCommentError {const GistsDeleteCommentError404(this.data);

factory GistsDeleteCommentError404.parse(ApiResponse response) { return GistsDeleteCommentError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsDeleteCommentError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsDeleteCommentError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsDeleteCommentError$Unknown extends GistsDeleteCommentError {const GistsDeleteCommentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsDeleteCommentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsDeleteCommentError.unknown($statusCode)'; } 
 }
