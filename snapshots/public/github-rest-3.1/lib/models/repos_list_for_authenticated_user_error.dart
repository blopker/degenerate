// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /user/repos`.
sealed class ReposListForAuthenticatedUserError {const ReposListForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ReposListForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ReposListForAuthenticatedUserError304.parse(response),
  401 => ReposListForAuthenticatedUserError401.parse(response),
  403 => ReposListForAuthenticatedUserError403.parse(response),
  422 => ReposListForAuthenticatedUserError422.parse(response),
  _ => ReposListForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ReposListForAuthenticatedUserError304 extends ReposListForAuthenticatedUserError {const ReposListForAuthenticatedUserError304();

factory ReposListForAuthenticatedUserError304.parse(ApiResponse _) { return const ReposListForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposListForAuthenticatedUserError304; } 
@override int get hashCode { return (ReposListForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ReposListForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class ReposListForAuthenticatedUserError401 extends ReposListForAuthenticatedUserError {const ReposListForAuthenticatedUserError401(this.data);

factory ReposListForAuthenticatedUserError401.parse(ApiResponse response) { return ReposListForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposListForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ReposListForAuthenticatedUserError403 extends ReposListForAuthenticatedUserError {const ReposListForAuthenticatedUserError403(this.data);

factory ReposListForAuthenticatedUserError403.parse(ApiResponse response) { return ReposListForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposListForAuthenticatedUserError403($data)'; } 
 }
/// The `422` response.
@immutable final class ReposListForAuthenticatedUserError422 extends ReposListForAuthenticatedUserError {const ReposListForAuthenticatedUserError422(this.data);

factory ReposListForAuthenticatedUserError422.parse(ApiResponse response) { return ReposListForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposListForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposListForAuthenticatedUserError$Unknown extends ReposListForAuthenticatedUserError {const ReposListForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposListForAuthenticatedUserError.unknown($statusCode)'; } 
 }
