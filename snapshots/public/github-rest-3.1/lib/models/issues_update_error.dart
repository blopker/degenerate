// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'issues_update_response503.dart';import 'validation_error.dart';/// Error responses of `PATCH /repos/{owner}/{repo}/issues/{issue_number}`.
sealed class IssuesUpdateError {const IssuesUpdateError();

/// Parse the variant matching the response status code.
factory IssuesUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  301 => IssuesUpdateError301.parse(response),
  403 => IssuesUpdateError403.parse(response),
  404 => IssuesUpdateError404.parse(response),
  410 => IssuesUpdateError410.parse(response),
  422 => IssuesUpdateError422.parse(response),
  503 => IssuesUpdateError503.parse(response),
  _ => IssuesUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `301` response.
@immutable final class IssuesUpdateError301 extends IssuesUpdateError {const IssuesUpdateError301(this.data);

factory IssuesUpdateError301.parse(ApiResponse response) { return IssuesUpdateError301(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUpdateError301 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesUpdateError301($data)'; } 
 }
/// The `403` response.
@immutable final class IssuesUpdateError403 extends IssuesUpdateError {const IssuesUpdateError403(this.data);

factory IssuesUpdateError403.parse(ApiResponse response) { return IssuesUpdateError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUpdateError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesUpdateError403($data)'; } 
 }
/// The `404` response.
@immutable final class IssuesUpdateError404 extends IssuesUpdateError {const IssuesUpdateError404(this.data);

factory IssuesUpdateError404.parse(ApiResponse response) { return IssuesUpdateError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUpdateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesUpdateError404($data)'; } 
 }
/// The `410` response.
@immutable final class IssuesUpdateError410 extends IssuesUpdateError {const IssuesUpdateError410(this.data);

factory IssuesUpdateError410.parse(ApiResponse response) { return IssuesUpdateError410(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUpdateError410 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesUpdateError410($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesUpdateError422 extends IssuesUpdateError {const IssuesUpdateError422(this.data);

factory IssuesUpdateError422.parse(ApiResponse response) { return IssuesUpdateError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUpdateError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesUpdateError422($data)'; } 
 }
/// The `503` response.
@immutable final class IssuesUpdateError503 extends IssuesUpdateError {const IssuesUpdateError503(this.data);

factory IssuesUpdateError503.parse(ApiResponse response) { return IssuesUpdateError503(IssuesUpdateResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final IssuesUpdateResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUpdateError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesUpdateError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesUpdateError$Unknown extends IssuesUpdateError {const IssuesUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesUpdateError.unknown($statusCode)'; } 
 }
