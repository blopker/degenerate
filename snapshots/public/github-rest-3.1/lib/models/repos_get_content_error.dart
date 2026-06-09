// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/contents/{path}`.
sealed class ReposGetContentError {const ReposGetContentError();

/// Parse the variant matching the response status code.
factory ReposGetContentError.parse(ApiResponse response) { return switch (response.statusCode) {
  302 => ReposGetContentError302.parse(response),
  304 => ReposGetContentError304.parse(response),
  403 => ReposGetContentError403.parse(response),
  404 => ReposGetContentError404.parse(response),
  _ => ReposGetContentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `302` response.
@immutable final class ReposGetContentError302 extends ReposGetContentError {const ReposGetContentError302();

factory ReposGetContentError302.parse(ApiResponse _) { return const ReposGetContentError302(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposGetContentError302; } 
@override int get hashCode { return (ReposGetContentError302).hashCode; } 
@override String toString() { return 'ReposGetContentError302()'; } 
 }
/// The `304` response.
@immutable final class ReposGetContentError304 extends ReposGetContentError {const ReposGetContentError304();

factory ReposGetContentError304.parse(ApiResponse _) { return const ReposGetContentError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposGetContentError304; } 
@override int get hashCode { return (ReposGetContentError304).hashCode; } 
@override String toString() { return 'ReposGetContentError304()'; } 
 }
/// The `403` response.
@immutable final class ReposGetContentError403 extends ReposGetContentError {const ReposGetContentError403(this.data);

factory ReposGetContentError403.parse(ApiResponse response) { return ReposGetContentError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetContentError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetContentError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposGetContentError404 extends ReposGetContentError {const ReposGetContentError404(this.data);

factory ReposGetContentError404.parse(ApiResponse response) { return ReposGetContentError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetContentError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetContentError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposGetContentError$Unknown extends ReposGetContentError {const ReposGetContentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetContentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposGetContentError.unknown($statusCode)'; } 
 }
