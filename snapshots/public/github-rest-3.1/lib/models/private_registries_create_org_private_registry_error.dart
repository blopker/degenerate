// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /orgs/{org}/private-registries`.
sealed class PrivateRegistriesCreateOrgPrivateRegistryError {const PrivateRegistriesCreateOrgPrivateRegistryError();

/// Parse the variant matching the response status code.
factory PrivateRegistriesCreateOrgPrivateRegistryError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => PrivateRegistriesCreateOrgPrivateRegistryError404.parse(response),
  422 => PrivateRegistriesCreateOrgPrivateRegistryError422.parse(response),
  _ => PrivateRegistriesCreateOrgPrivateRegistryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class PrivateRegistriesCreateOrgPrivateRegistryError404 extends PrivateRegistriesCreateOrgPrivateRegistryError {const PrivateRegistriesCreateOrgPrivateRegistryError404(this.data);

factory PrivateRegistriesCreateOrgPrivateRegistryError404.parse(ApiResponse response) { return PrivateRegistriesCreateOrgPrivateRegistryError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PrivateRegistriesCreateOrgPrivateRegistryError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PrivateRegistriesCreateOrgPrivateRegistryError404($data)'; } 
 }
/// The `422` response.
@immutable final class PrivateRegistriesCreateOrgPrivateRegistryError422 extends PrivateRegistriesCreateOrgPrivateRegistryError {const PrivateRegistriesCreateOrgPrivateRegistryError422(this.data);

factory PrivateRegistriesCreateOrgPrivateRegistryError422.parse(ApiResponse response) { return PrivateRegistriesCreateOrgPrivateRegistryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PrivateRegistriesCreateOrgPrivateRegistryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PrivateRegistriesCreateOrgPrivateRegistryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PrivateRegistriesCreateOrgPrivateRegistryError$Unknown extends PrivateRegistriesCreateOrgPrivateRegistryError {const PrivateRegistriesCreateOrgPrivateRegistryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PrivateRegistriesCreateOrgPrivateRegistryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PrivateRegistriesCreateOrgPrivateRegistryError.unknown($statusCode)'; } 
 }
