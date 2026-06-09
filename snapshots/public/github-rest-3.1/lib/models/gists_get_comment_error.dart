// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'gists_get_comment_response403.dart';/// Error responses of `GET /gists/{gist_id}/comments/{comment_id}`.
sealed class GistsGetCommentError {const GistsGetCommentError();

/// Parse the variant matching the response status code.
factory GistsGetCommentError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => GistsGetCommentError304.parse(response),
  403 => GistsGetCommentError403.parse(response),
  404 => GistsGetCommentError404.parse(response),
  _ => GistsGetCommentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class GistsGetCommentError304 extends GistsGetCommentError {const GistsGetCommentError304();

factory GistsGetCommentError304.parse(ApiResponse _) { return const GistsGetCommentError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is GistsGetCommentError304; } 
@override int get hashCode { return (GistsGetCommentError304).hashCode; } 
@override String toString() { return 'GistsGetCommentError304()'; } 
 }
/// The `403` response.
@immutable final class GistsGetCommentError403 extends GistsGetCommentError {const GistsGetCommentError403(this.data);

factory GistsGetCommentError403.parse(ApiResponse response) { return GistsGetCommentError403(GistsGetCommentResponse403.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GistsGetCommentResponse403 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsGetCommentError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsGetCommentError403($data)'; } 
 }
/// The `404` response.
@immutable final class GistsGetCommentError404 extends GistsGetCommentError {const GistsGetCommentError404(this.data);

factory GistsGetCommentError404.parse(ApiResponse response) { return GistsGetCommentError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsGetCommentError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GistsGetCommentError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GistsGetCommentError$Unknown extends GistsGetCommentError {const GistsGetCommentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GistsGetCommentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GistsGetCommentError.unknown($statusCode)'; } 
 }
