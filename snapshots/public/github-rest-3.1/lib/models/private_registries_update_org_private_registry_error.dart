// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /orgs/{org}/private-registries/{secret_name}`.
sealed class PrivateRegistriesUpdateOrgPrivateRegistryError {const PrivateRegistriesUpdateOrgPrivateRegistryError();

/// Parse the variant matching the response status code.
factory PrivateRegistriesUpdateOrgPrivateRegistryError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => PrivateRegistriesUpdateOrgPrivateRegistryError404.parse(response),
  422 => PrivateRegistriesUpdateOrgPrivateRegistryError422.parse(response),
  _ => PrivateRegistriesUpdateOrgPrivateRegistryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class PrivateRegistriesUpdateOrgPrivateRegistryError404 extends PrivateRegistriesUpdateOrgPrivateRegistryError {const PrivateRegistriesUpdateOrgPrivateRegistryError404(this.data);

factory PrivateRegistriesUpdateOrgPrivateRegistryError404.parse(ApiResponse response) { return PrivateRegistriesUpdateOrgPrivateRegistryError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PrivateRegistriesUpdateOrgPrivateRegistryError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PrivateRegistriesUpdateOrgPrivateRegistryError404($data)'; } 
 }
/// The `422` response.
@immutable final class PrivateRegistriesUpdateOrgPrivateRegistryError422 extends PrivateRegistriesUpdateOrgPrivateRegistryError {const PrivateRegistriesUpdateOrgPrivateRegistryError422(this.data);

factory PrivateRegistriesUpdateOrgPrivateRegistryError422.parse(ApiResponse response) { return PrivateRegistriesUpdateOrgPrivateRegistryError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PrivateRegistriesUpdateOrgPrivateRegistryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PrivateRegistriesUpdateOrgPrivateRegistryError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PrivateRegistriesUpdateOrgPrivateRegistryError$Unknown extends PrivateRegistriesUpdateOrgPrivateRegistryError {const PrivateRegistriesUpdateOrgPrivateRegistryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PrivateRegistriesUpdateOrgPrivateRegistryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PrivateRegistriesUpdateOrgPrivateRegistryError.unknown($statusCode)'; } 
 }
