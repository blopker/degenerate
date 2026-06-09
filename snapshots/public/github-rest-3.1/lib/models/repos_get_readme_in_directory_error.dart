// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/readme/{dir}`.
sealed class ReposGetReadmeInDirectoryError {const ReposGetReadmeInDirectoryError();

/// Parse the variant matching the response status code.
factory ReposGetReadmeInDirectoryError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposGetReadmeInDirectoryError404.parse(response),
  422 => ReposGetReadmeInDirectoryError422.parse(response),
  _ => ReposGetReadmeInDirectoryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposGetReadmeInDirectoryError404 extends ReposGetReadmeInDirectoryError {const ReposGetReadmeInDirectoryError404(this.data);

factory ReposGetReadmeInDirectoryError404.parse(ApiResponse response) { return ReposGetReadmeInDirectoryError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetReadmeInDirectoryError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetReadmeInDirectoryError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposGetReadmeInDirectoryError422 extends ReposGetReadmeInDirectoryError {const ReposGetReadmeInDirectoryError422(this.data);

factory ReposGetReadmeInDirectoryError422.parse(ApiResponse response) { return ReposGetReadmeInDirectoryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetReadmeInDirectoryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetReadmeInDirectoryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposGetReadmeInDirectoryError$Unknown extends ReposGetReadmeInDirectoryError {const ReposGetReadmeInDirectoryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetReadmeInDirectoryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposGetReadmeInDirectoryError.unknown($statusCode)'; } 
 }
