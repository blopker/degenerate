// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /issues`.
sealed class IssuesListError {const IssuesListError();

/// Parse the variant matching the response status code.
factory IssuesListError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => IssuesListError304.parse(response),
  404 => IssuesListError404.parse(response),
  422 => IssuesListError422.parse(response),
  _ => IssuesListError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class IssuesListError304 extends IssuesListError {const IssuesListError304();

factory IssuesListError304.parse(ApiResponse _) { return const IssuesListError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is IssuesListError304; } 
@override int get hashCode { return (IssuesListError304).hashCode; } 
@override String toString() { return 'IssuesListError304()'; } 
 }
/// The `404` response.
@immutable final class IssuesListError404 extends IssuesListError {const IssuesListError404(this.data);

factory IssuesListError404.parse(ApiResponse response) { return IssuesListError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesListError404($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesListError422 extends IssuesListError {const IssuesListError422(this.data);

factory IssuesListError422.parse(ApiResponse response) { return IssuesListError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesListError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesListError$Unknown extends IssuesListError {const IssuesListError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesListError.unknown($statusCode)'; } 
 }
