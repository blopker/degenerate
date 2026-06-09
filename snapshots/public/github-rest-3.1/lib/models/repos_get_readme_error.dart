// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/readme`.
sealed class ReposGetReadmeError {const ReposGetReadmeError();

/// Parse the variant matching the response status code.
factory ReposGetReadmeError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ReposGetReadmeError304.parse(response),
  404 => ReposGetReadmeError404.parse(response),
  422 => ReposGetReadmeError422.parse(response),
  _ => ReposGetReadmeError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ReposGetReadmeError304 extends ReposGetReadmeError {const ReposGetReadmeError304();

factory ReposGetReadmeError304.parse(ApiResponse _) { return const ReposGetReadmeError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposGetReadmeError304; } 
@override int get hashCode { return (ReposGetReadmeError304).hashCode; } 
@override String toString() { return 'ReposGetReadmeError304()'; } 
 }
/// The `404` response.
@immutable final class ReposGetReadmeError404 extends ReposGetReadmeError {const ReposGetReadmeError404(this.data);

factory ReposGetReadmeError404.parse(ApiResponse response) { return ReposGetReadmeError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetReadmeError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetReadmeError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposGetReadmeError422 extends ReposGetReadmeError {const ReposGetReadmeError422(this.data);

factory ReposGetReadmeError422.parse(ApiResponse response) { return ReposGetReadmeError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetReadmeError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetReadmeError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposGetReadmeError$Unknown extends ReposGetReadmeError {const ReposGetReadmeError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetReadmeError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposGetReadmeError.unknown($statusCode)'; } 
 }
