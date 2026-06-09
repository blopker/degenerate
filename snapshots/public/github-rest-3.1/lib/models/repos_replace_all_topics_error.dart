// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `PUT /repos/{owner}/{repo}/topics`.
sealed class ReposReplaceAllTopicsError {const ReposReplaceAllTopicsError();

/// Parse the variant matching the response status code.
factory ReposReplaceAllTopicsError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposReplaceAllTopicsError404.parse(response),
  422 => ReposReplaceAllTopicsError422.parse(response),
  _ => ReposReplaceAllTopicsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposReplaceAllTopicsError404 extends ReposReplaceAllTopicsError {const ReposReplaceAllTopicsError404(this.data);

factory ReposReplaceAllTopicsError404.parse(ApiResponse response) { return ReposReplaceAllTopicsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposReplaceAllTopicsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposReplaceAllTopicsError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposReplaceAllTopicsError422 extends ReposReplaceAllTopicsError {const ReposReplaceAllTopicsError422(this.data);

factory ReposReplaceAllTopicsError422.parse(ApiResponse response) { return ReposReplaceAllTopicsError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposReplaceAllTopicsError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposReplaceAllTopicsError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposReplaceAllTopicsError$Unknown extends ReposReplaceAllTopicsError {const ReposReplaceAllTopicsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposReplaceAllTopicsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposReplaceAllTopicsError.unknown($statusCode)'; } 
 }
