// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'issues_create_response503.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/issues`.
sealed class IssuesCreateError {const IssuesCreateError();

/// Parse the variant matching the response status code.
factory IssuesCreateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => IssuesCreateError400.parse(response),
  403 => IssuesCreateError403.parse(response),
  404 => IssuesCreateError404.parse(response),
  410 => IssuesCreateError410.parse(response),
  422 => IssuesCreateError422.parse(response),
  503 => IssuesCreateError503.parse(response),
  _ => IssuesCreateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class IssuesCreateError400 extends IssuesCreateError {const IssuesCreateError400(this.data);

factory IssuesCreateError400.parse(ApiResponse response) { return IssuesCreateError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateError400($data)'; } 
 }
/// The `403` response.
@immutable final class IssuesCreateError403 extends IssuesCreateError {const IssuesCreateError403(this.data);

factory IssuesCreateError403.parse(ApiResponse response) { return IssuesCreateError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateError403($data)'; } 
 }
/// The `404` response.
@immutable final class IssuesCreateError404 extends IssuesCreateError {const IssuesCreateError404(this.data);

factory IssuesCreateError404.parse(ApiResponse response) { return IssuesCreateError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateError404($data)'; } 
 }
/// The `410` response.
@immutable final class IssuesCreateError410 extends IssuesCreateError {const IssuesCreateError410(this.data);

factory IssuesCreateError410.parse(ApiResponse response) { return IssuesCreateError410(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateError410 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateError410($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesCreateError422 extends IssuesCreateError {const IssuesCreateError422(this.data);

factory IssuesCreateError422.parse(ApiResponse response) { return IssuesCreateError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateError422($data)'; } 
 }
/// The `503` response.
@immutable final class IssuesCreateError503 extends IssuesCreateError {const IssuesCreateError503(this.data);

factory IssuesCreateError503.parse(ApiResponse response) { return IssuesCreateError503(IssuesCreateResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final IssuesCreateResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesCreateError$Unknown extends IssuesCreateError {const IssuesCreateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesCreateError.unknown($statusCode)'; } 
 }
