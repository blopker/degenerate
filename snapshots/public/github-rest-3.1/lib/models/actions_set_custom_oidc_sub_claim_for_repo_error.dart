// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `PUT /repos/{owner}/{repo}/actions/oidc/customization/sub`.
sealed class ActionsSetCustomOidcSubClaimForRepoError {const ActionsSetCustomOidcSubClaimForRepoError();

/// Parse the variant matching the response status code.
factory ActionsSetCustomOidcSubClaimForRepoError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => ActionsSetCustomOidcSubClaimForRepoError400.parse(response),
  404 => ActionsSetCustomOidcSubClaimForRepoError404.parse(response),
  422 => ActionsSetCustomOidcSubClaimForRepoError422.parse(response),
  _ => ActionsSetCustomOidcSubClaimForRepoError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class ActionsSetCustomOidcSubClaimForRepoError400 extends ActionsSetCustomOidcSubClaimForRepoError {const ActionsSetCustomOidcSubClaimForRepoError400(this.data);

factory ActionsSetCustomOidcSubClaimForRepoError400.parse(ApiResponse response) { return ActionsSetCustomOidcSubClaimForRepoError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetCustomOidcSubClaimForRepoError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetCustomOidcSubClaimForRepoError400($data)'; } 
 }
/// The `404` response.
@immutable final class ActionsSetCustomOidcSubClaimForRepoError404 extends ActionsSetCustomOidcSubClaimForRepoError {const ActionsSetCustomOidcSubClaimForRepoError404(this.data);

factory ActionsSetCustomOidcSubClaimForRepoError404.parse(ApiResponse response) { return ActionsSetCustomOidcSubClaimForRepoError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetCustomOidcSubClaimForRepoError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetCustomOidcSubClaimForRepoError404($data)'; } 
 }
/// The `422` response.
@immutable final class ActionsSetCustomOidcSubClaimForRepoError422 extends ActionsSetCustomOidcSubClaimForRepoError {const ActionsSetCustomOidcSubClaimForRepoError422(this.data);

factory ActionsSetCustomOidcSubClaimForRepoError422.parse(ApiResponse response) { return ActionsSetCustomOidcSubClaimForRepoError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetCustomOidcSubClaimForRepoError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActionsSetCustomOidcSubClaimForRepoError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActionsSetCustomOidcSubClaimForRepoError$Unknown extends ActionsSetCustomOidcSubClaimForRepoError {const ActionsSetCustomOidcSubClaimForRepoError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsSetCustomOidcSubClaimForRepoError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActionsSetCustomOidcSubClaimForRepoError.unknown($statusCode)'; } 
 }
