// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/pages/health`.
sealed class ReposGetPagesHealthCheckError {const ReposGetPagesHealthCheckError();

/// Parse the variant matching the response status code.
factory ReposGetPagesHealthCheckError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => ReposGetPagesHealthCheckError400.parse(response),
  404 => ReposGetPagesHealthCheckError404.parse(response),
  422 => ReposGetPagesHealthCheckError422.parse(response),
  _ => ReposGetPagesHealthCheckError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class ReposGetPagesHealthCheckError400 extends ReposGetPagesHealthCheckError {const ReposGetPagesHealthCheckError400();

factory ReposGetPagesHealthCheckError400.parse(ApiResponse _) { return const ReposGetPagesHealthCheckError400(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposGetPagesHealthCheckError400; } 
@override int get hashCode { return (ReposGetPagesHealthCheckError400).hashCode; } 
@override String toString() { return 'ReposGetPagesHealthCheckError400()'; } 
 }
/// The `404` response.
@immutable final class ReposGetPagesHealthCheckError404 extends ReposGetPagesHealthCheckError {const ReposGetPagesHealthCheckError404(this.data);

factory ReposGetPagesHealthCheckError404.parse(ApiResponse response) { return ReposGetPagesHealthCheckError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetPagesHealthCheckError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetPagesHealthCheckError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposGetPagesHealthCheckError422 extends ReposGetPagesHealthCheckError {const ReposGetPagesHealthCheckError422();

factory ReposGetPagesHealthCheckError422.parse(ApiResponse _) { return const ReposGetPagesHealthCheckError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposGetPagesHealthCheckError422; } 
@override int get hashCode { return (ReposGetPagesHealthCheckError422).hashCode; } 
@override String toString() { return 'ReposGetPagesHealthCheckError422()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposGetPagesHealthCheckError$Unknown extends ReposGetPagesHealthCheckError {const ReposGetPagesHealthCheckError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetPagesHealthCheckError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposGetPagesHealthCheckError.unknown($statusCode)'; } 
 }
