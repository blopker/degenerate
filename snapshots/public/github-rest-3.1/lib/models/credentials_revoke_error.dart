// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `POST /credentials/revoke`.
sealed class CredentialsRevokeError {const CredentialsRevokeError();

/// Parse the variant matching the response status code.
factory CredentialsRevokeError.parse(ApiResponse response) { return switch (response.statusCode) {
  422 => CredentialsRevokeError422.parse(response),
  500 => CredentialsRevokeError500.parse(response),
  _ => CredentialsRevokeError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `422` response.
@immutable final class CredentialsRevokeError422 extends CredentialsRevokeError {const CredentialsRevokeError422(this.data);

factory CredentialsRevokeError422.parse(ApiResponse response) { return CredentialsRevokeError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CredentialsRevokeError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CredentialsRevokeError422($data)'; } 
 }
/// The `500` response.
@immutable final class CredentialsRevokeError500 extends CredentialsRevokeError {const CredentialsRevokeError500(this.data);

factory CredentialsRevokeError500.parse(ApiResponse response) { return CredentialsRevokeError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CredentialsRevokeError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CredentialsRevokeError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CredentialsRevokeError$Unknown extends CredentialsRevokeError {const CredentialsRevokeError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CredentialsRevokeError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CredentialsRevokeError.unknown($statusCode)'; } 
 }
