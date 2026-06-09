// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /user/repos`.
sealed class ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ReposCreateForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ReposCreateForAuthenticatedUserError304.parse(response),
  400 => ReposCreateForAuthenticatedUserError400.parse(response),
  401 => ReposCreateForAuthenticatedUserError401.parse(response),
  403 => ReposCreateForAuthenticatedUserError403.parse(response),
  404 => ReposCreateForAuthenticatedUserError404.parse(response),
  422 => ReposCreateForAuthenticatedUserError422.parse(response),
  _ => ReposCreateForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ReposCreateForAuthenticatedUserError304 extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError304();

factory ReposCreateForAuthenticatedUserError304.parse(ApiResponse _) { return const ReposCreateForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposCreateForAuthenticatedUserError304; } 
@override int get hashCode { return (ReposCreateForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ReposCreateForAuthenticatedUserError304()'; } 
 }
/// The `400` response.
@immutable final class ReposCreateForAuthenticatedUserError400 extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError400(this.data);

factory ReposCreateForAuthenticatedUserError400.parse(ApiResponse response) { return ReposCreateForAuthenticatedUserError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForAuthenticatedUserError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateForAuthenticatedUserError400($data)'; } 
 }
/// The `401` response.
@immutable final class ReposCreateForAuthenticatedUserError401 extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError401(this.data);

factory ReposCreateForAuthenticatedUserError401.parse(ApiResponse response) { return ReposCreateForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ReposCreateForAuthenticatedUserError403 extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError403(this.data);

factory ReposCreateForAuthenticatedUserError403.parse(ApiResponse response) { return ReposCreateForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposCreateForAuthenticatedUserError404 extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError404(this.data);

factory ReposCreateForAuthenticatedUserError404.parse(ApiResponse response) { return ReposCreateForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateForAuthenticatedUserError404($data)'; } 
 }
/// The `422` response.
@immutable final class ReposCreateForAuthenticatedUserError422 extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError422(this.data);

factory ReposCreateForAuthenticatedUserError422.parse(ApiResponse response) { return ReposCreateForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreateForAuthenticatedUserError$Unknown extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreateForAuthenticatedUserError.unknown($statusCode)'; } 
 }
