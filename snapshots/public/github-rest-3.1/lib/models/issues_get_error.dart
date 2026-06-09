// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/issues/{issue_number}`.
sealed class IssuesGetError {const IssuesGetError();

/// Parse the variant matching the response status code.
factory IssuesGetError.parse(ApiResponse response) { return switch (response.statusCode) {
  301 => IssuesGetError301.parse(response),
  304 => IssuesGetError304.parse(response),
  404 => IssuesGetError404.parse(response),
  410 => IssuesGetError410.parse(response),
  _ => IssuesGetError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `301` response.
@immutable final class IssuesGetError301 extends IssuesGetError {const IssuesGetError301(this.data);

factory IssuesGetError301.parse(ApiResponse response) { return IssuesGetError301(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesGetError301 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesGetError301($data)'; } 
 }
/// The `304` response.
@immutable final class IssuesGetError304 extends IssuesGetError {const IssuesGetError304();

factory IssuesGetError304.parse(ApiResponse _) { return const IssuesGetError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is IssuesGetError304; } 
@override int get hashCode { return (IssuesGetError304).hashCode; } 
@override String toString() { return 'IssuesGetError304()'; } 
 }
/// The `404` response.
@immutable final class IssuesGetError404 extends IssuesGetError {const IssuesGetError404(this.data);

factory IssuesGetError404.parse(ApiResponse response) { return IssuesGetError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesGetError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesGetError404($data)'; } 
 }
/// The `410` response.
@immutable final class IssuesGetError410 extends IssuesGetError {const IssuesGetError410(this.data);

factory IssuesGetError410.parse(ApiResponse response) { return IssuesGetError410(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesGetError410 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesGetError410($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesGetError$Unknown extends IssuesGetError {const IssuesGetError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesGetError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesGetError.unknown($statusCode)'; } 
 }
