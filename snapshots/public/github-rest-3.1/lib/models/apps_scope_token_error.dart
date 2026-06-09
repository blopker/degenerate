// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /applications/{client_id}/token/scoped`.
sealed class AppsScopeTokenError {const AppsScopeTokenError();

/// Parse the variant matching the response status code.
factory AppsScopeTokenError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => AppsScopeTokenError401.parse(response),
  403 => AppsScopeTokenError403.parse(response),
  404 => AppsScopeTokenError404.parse(response),
  422 => AppsScopeTokenError422.parse(response),
  _ => AppsScopeTokenError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class AppsScopeTokenError401 extends AppsScopeTokenError {const AppsScopeTokenError401(this.data);

factory AppsScopeTokenError401.parse(ApiResponse response) { return AppsScopeTokenError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsScopeTokenError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsScopeTokenError401($data)'; } 
 }
/// The `403` response.
@immutable final class AppsScopeTokenError403 extends AppsScopeTokenError {const AppsScopeTokenError403(this.data);

factory AppsScopeTokenError403.parse(ApiResponse response) { return AppsScopeTokenError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsScopeTokenError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsScopeTokenError403($data)'; } 
 }
/// The `404` response.
@immutable final class AppsScopeTokenError404 extends AppsScopeTokenError {const AppsScopeTokenError404(this.data);

factory AppsScopeTokenError404.parse(ApiResponse response) { return AppsScopeTokenError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsScopeTokenError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsScopeTokenError404($data)'; } 
 }
/// The `422` response.
@immutable final class AppsScopeTokenError422 extends AppsScopeTokenError {const AppsScopeTokenError422(this.data);

factory AppsScopeTokenError422.parse(ApiResponse response) { return AppsScopeTokenError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsScopeTokenError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AppsScopeTokenError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AppsScopeTokenError$Unknown extends AppsScopeTokenError {const AppsScopeTokenError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsScopeTokenError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AppsScopeTokenError.unknown($statusCode)'; } 
 }
